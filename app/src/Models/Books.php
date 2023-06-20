<?php

use SilverStripe\ORM\DataObject;

class Books extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'Contact' => 'Varchar',
        'Email' => 'Varchar',
        'Events' => 'Varchar',
        'Location' => 'Varchar',
        'Weight' => 'Varchar',
        'Time' => 'Varchar',
        'ServiceDescription' => 'Text',
        'DOE' => 'Date',  
    
       
    ];
}