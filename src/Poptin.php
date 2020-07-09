<?php
namespace Poptin\Silverstripe;

use SilverStripe\Admin\LeftAndMain;
use SilverStripe\View\Requirements;

class Poptin extends LeftAndMain
{
    private static $url_segment = "poptin";
    private static $menu_title = "Poptin";

    public function init() {
        parent::init();
        Requirements::css('poptin/silverstripe:client/dist/css/poptin-admin.css');
        Requirements::javascript('poptin/silverstripe:client/dist/js/poptin-admin.js');
    }

    protected function addCMSRequirements()
    {
        Requirements::javascript('silverstripe/blog:client/dist/styles/test.js');
    }

    public function poptinidcheck() {
        return false;
    }
}