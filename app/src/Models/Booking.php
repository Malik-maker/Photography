<?php

use SilverStripe\ORM\DataObject;

class Booking extends DataObject
{
    private static $db = [
        'Name' => 'Varchar',
        'Yourname' => 'Varchar',
        'Email' => 'Varchar',
        'Event' => 'Varchar',
        'PhoneNumber' => 'Varchar',
        'Message' => 'Text',
        
    
       
    ];

    private static $summary_fields = [
        'Name' => 'Name',
        'Name' => 'Name',
        'Email' => 'Email',
        'PhoneNumber' => 'Phone Number',
        'Event' => 'Event',
        'Message' => 'Message',
    ];
}