<?php

namespace Poptin\Silverstripe;

use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataExtension;

class PoptinSiteConfig extends DataExtension
{
    private static $db = [
        'PoptinConfig' => 'Text'
    ];

    public function updateCMSFields(FieldList $fields)
    {
        $fields->addFieldToTab(
            "Root.Main",
            new TextField("PoptinConfig", "Poptin Config")
        );
        $fields->removeByName(['PoptinConfig']);
    }
}
