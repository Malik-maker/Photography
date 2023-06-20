<?php

use SilverStripe\Control\HTTPRequest;

class BookPageDetailsController extends PageController
{
    private static $allowed_actions= [
        'requestBook',
        'doRequest',
        'bookingRequest'
    ];

    public function requestBook()
    {
        return new BookForm($this, 'requestBook');
    }
   
    public function bookingRequest(HTTPRequest $request)
    {
        $name = $request->postVar('Name');

        $name = $request->postVar('Yourname');

        $name = $request->postVar('Email');

        $email = $request->postVar('Event');

        $phoneNumber = $request->postVar('PhoneNumber');

        $message = $request->postVar('Message');

        $contact = new Contact();

        $contact->Name = $name;

        $contact->Yourname = $yourname;

        $contact->Email = $email;

        $contact->Event = $event;

        $contact->PhoneNumber = $phoneNumber;

        $contact->Message = $message;

        $contact->write();

        $this->setSessionMessage('Thanks for your message, we will get back to you soon.', 'good');

        return $this->redirectBack();

    }
    // public function Link($action = null)
    // {
    //     return "book-page/$action";
    // }


    // public function index(HTTPRequest $request)
    // { 
    //     return $this->customise([
    //         'Title' => 'Book for Service',
    //     ]);
    // }


    
}

