<?php
namespace Poptin\Silverstripe;

use SilverStripe\Admin\LeftAndMain;
use SilverStripe\View\Requirements;
use Silverstripe\SiteConfig\SiteConfig;
use SilverStripe\Control\HTTPRequest;

use GuzzleHttp\Client as Guzzle;

class Poptin extends LeftAndMain
{
    private static $allowed_actions = array ('setConfig', 'deleteConfig', 'redirectToDashboard');
    private static $menu_icon_class = "icon menu-icon poptin";
    private static $url_segment = "poptin";
    private static $menu_title = "Poptin";

    public function init() {
        parent::init();
        Requirements::css('poptin/silverstripe:client/dist/css/bootstrap.min.css');
        Requirements::css('poptin/silverstripe:client/dist/css/poptin-admin.css');
        Requirements::javascript('https://code.jquery.com/jquery-3.5.1.min.js');
        Requirements::javascript('poptin/silverstripe:client/dist/js/bootstrap.min.js');
        Requirements::javascript('poptin/silverstripe:client/dist/js/poptin-admin.js');
    }

    protected function addCMSRequirements()
    {
        Requirements::javascript('silverstripe/blog:client/dist/styles/test.js');
    }

    public function poptinidcheck() {
        $config = SiteConfig::current_site_config();
        $poptinConfig = json_decode($config->PoptinConfig, true);

        if($poptinConfig['client_id']) {
            return true;
        }

        return false;
    }

    public function setConfig(HTTPRequest $request)
    {
        $config = SiteConfig::current_site_config();

        $body = $request->requestVars();

        $poptinConfig = json_decode($config->PoptinConfig, true);
        
        if(array_key_exists('client_id', $body)) {
            $poptinConfig['client_id'] = $body['client_id'];
        }

        if(array_key_exists('user_id', $body)) {
            $poptinConfig['user_id'] = $body['user_id'];
        }

        if(array_key_exists('token', $body)) {
            $poptinConfig['token'] = $body['token'];
        }

        $config->PoptinConfig = json_encode($poptinConfig);
        $config->write();
        
        return json_encode(['success' => true, 'config' => json_decode($config->PoptinConfig)]);
    }

    public function deleteConfig(HTTPRequest $request)
    {
        $config = SiteConfig::current_site_config();
        
        $config->PoptinConfig = json_encode([
            'client_id' => '',
            'user_id' => '',
            'token' => '' 
        ]);
        $config->write();

        return json_encode(['success' => true, 'config' => json_decode($config->PoptinConfig)]);
    }

    public function redirectToDashboard()
    {
        $config = SiteConfig::current_site_config();
        
        $poptinConfig = json_decode($config->PoptinConfig);

        $client = new \GuzzleHttp\Client();

        $body = [
            "user_id" => $poptinConfig['user_id'],
            "token" => $poptinConfig['token'],
        ];

        try {
            $response = $client->request("POST", 'https://dev.popt.in/api/marketplace/auth', [
                "form_params" => ($body)
            ]);

            if($response->getStatusCode() == 200) {
                return $this->redirect(json_decode($response->getBody()->getContents())->login_url . '&utm_source=silverstripe');
            }
        }catch (\Exception $e) {
            return $this->redirect('https://dev.popt.in');
        }
    }
}