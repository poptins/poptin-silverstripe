<?php
namespace Poptin\Silverstripe;

use SilverStripe\Core\Extension;
use SilverStripe\View\Requirements;
use Silverstripe\SiteConfig\SiteConfig;

class PoptinExtension extends Extension {

    public function onAfterInit() {
        $config = SiteConfig::current_site_config();
        $poptinConfig = json_decode($config->PoptinConfig, true);

        if($poptinConfig['client_id']) {
            Requirements::javascript('https://cdn.popt.in/pixel.js?id=' . $poptinConfig['client_id'], [
                "async" => true,
                "id" => "pixel-script-poptin"
            ]);
        }
    }
}