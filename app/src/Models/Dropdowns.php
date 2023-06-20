<?php

use Heyday\MenuManager\MenuSet;
use SilverStripe\ORM\DataObject;

class Dropdowns extends DataObject
{
    private static $db = [

        'Events' => "Enum('Birthday Party,Outdooring,Wedding,Funeral,Anniversay,House Party,Engagement,MeetUp,Other(Please describe it in the service description')",
        
        'Totalvalue' => "Enum('Container,Loose Cargo')",
    ];

  

}