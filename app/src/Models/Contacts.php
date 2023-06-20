<?php

use SilverStripe\ORM\DataObject;

class Contacts extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'Email' => 'Varchar',
        'Subject' => 'Varchar',
        'Message' => 'Text'
    ];
}