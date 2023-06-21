<?php

use SilverStripe\ORM\DataObject;

class Booking extends DataObject
{
    private static $db = [
        'PhotoName' => 'Varchar',
        'Yourname' => 'Varchar',
        'Email' => 'Varchar',
        'Event' => 'Varchar',
        'EventDate' => 'Date',
        'PhoneNumber' => 'Varchar',
        'Message' => 'Text',
        
    ];

    private static $summary_fields = [
        'PhotoName' => 'Photographer Name',
        'Yourname' => 'Client Name',
        'Email' => 'Email',
        'PhoneNumber' => 'Phone Number',
        'Event' => 'Event',
        'EventDate' => 'Date',
    ];

    private static $has_one = [
        'Photographer' => Photographers::class
    ];

    public function canView($member = true, $context = [])
    {
        return true;
    }
}