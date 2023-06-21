<?php

use SilverStripe\Control\HTTPRequest;

class DetailPageController extends PageController
{
    private static $allowed_actions= [
        'details',
        'bookingRequest'
    ];

    public function details(HTTPRequest $request)
    {
        $id = $request->param("ID");

        $photographerDetail = Photographers::get()->byID($id);

        return  $this->customise([
            "Title" => "Phtographer Detail",
            "PhotographerDetail"=>$photographerDetail,
        ])->renderWith(['BookingPageDetails','Page']);

    }
   
    public function bookingRequest(HTTPRequest $request)
    {
        $id = $request->param("ID");

        Photographers::get()->byID($id);

        $name = $request->postVar('PhotoName');

        $photoID = $request->postVar('PhotographerID');
 
        $yourname = $request->postVar('Yourname');

        $email = $request->postVar('Email');

        $event = $request->postVar('Event');

        $eventDate = $request->postVar('EventDate');

        $phoneNumber = $request->postVar('PhoneNumber');

        $message = $request->postVar('Message');

        $booking = new Booking();

        $booking->PhotoName = $name;

        $booking->Yourname = $yourname;

        $booking->Email = $email;

        $booking->Event = $event;

        $booking->EventDate = $eventDate;

        $booking->PhoneNumber = $phoneNumber;

        $booking->PhotographerID = $photoID;

        $booking->Message = $message;

        $booking->write();

        $this->setSessionMessage('Your booking was successful, we will get back to you soon. Thank you!', 'good');

        return $this->redirectBack();

    }
    

}

