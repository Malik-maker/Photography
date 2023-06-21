<?php

use SilverStripe\Control\HTTPRequest;

class BookingPageController extends PageController
{
    private static $allowed_actions= [
        'booking_details'
    ];


    public function index(HTTPRequest $request)
    {
        return $this->customise([
            'Title' => 'Book for Photgrapher',
        ]);
    }


    public function booking_details(HTTPRequest $request)
    {
        $id = $request->param("ID");

        $photographerDetail = Photographers::get()->byID($id);

        return  $this->customise([
            "Title" => "Phtographer Detail",
            "PhotographerDetail"=>$photographerDetail,
        ])->renderWith(['BookingPageDetails','Page']);

    }


}

