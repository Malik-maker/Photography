<?php

use SilverStripe\Control\HTTPRequest;
use SilverStripe\ORM\PaginatedList;
use SilverStripe\Control\Email\Email;

class ContactPageController extends PageController
{
    private static $allowed_actions = [
        'sendMessage',
        'doSubmit'
    ];

    public function sendMessage()
    {
        return new ContactForm($this, 'sendMessage');
    }
   


 




}
