<?php

use SilverStripe\Control\HTTPRequest;
use SilverStripe\Forms\CompositeField;
use SilverStripe\Forms\EmailField;
use SilverStripe\Forms\FieldList;
use SilverStripe\Forms\Form;
use SilverStripe\Forms\FormAction;
use SilverStripe\Forms\RequiredFields;
use SilverStripe\Forms\TextField;
use SilverStripe\Forms\TextareaField;
use SilverStripe\Forms\HiddenField;
use SilverStripe\Control\Email\Email;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\DateField;


class BookForm extends Form
{
    public function __construct($controller, $name)
    {
        $fields = new FieldList([

            CompositeField::create(

                CompositeField::create(
                TextField::create('Name','Full Name')
                ->setMaxLength(10)
                // ->setValue($booking_Id)
                ->addExtraClass('form-fields'),
                )->addExtraClass('col-lg-6 col-sm-12'),
                 
                CompositeField::create(
                EmailField::create('Email','Email Address')           
                ->addExtraClass('form-fields')
                ->setAttribute('placeholder','example@gmail.com'),
                )->addExtraClass('col-lg-6 col-sm-12'),

                
                CompositeField::create(
                DropdownField::create( 'Events', 'Events', singleton('Dropdowns')->dbObject('Events')->enumValues())
                ->setEmptyString('')
                ->addExtraClass('form-fields')
                ->setAttribute('placeholder','please select event type'),
                )->addExtraClass('col-lg-6 col-sm-12'),

                CompositeField::create(
                TextField::create('Location','Event Location')
                ->addExtraClass('form-fields'),
                )->addExtraClass('col-lg-6 col-sm-12'),

                CompositeField::create(
                DateField::create('DOE', 'Event Date')
                ->setHTML5(true)
                ->setDateFormat('dd/MM/yyyy')
                ->addExtraClass('form-fields')
                ->setAttribute('placeholder','dd/mm/yyyy'),
                )->addExtraClass('col-lg-6 col-sm-12'),

                CompositeField::create(
                TextField::create('Time','Event time')
                ->addExtraClass('form-fields'),
                )->addExtraClass('col-lg-6 col-sm-12'),
                

                

                TextareaField::create('ServiceDescription', ' Item Description')
                ->addExtraClass('form-fields')
                ->setAttribute('placeholder','Describe the service..')
                  ->addExtraClass('form-fields'),

            )->addExtraClass('row'),

        ]);

        
        $actions = FieldList::create(
            FormAction::create('doRequest', 'Submit Booking')
            ->setUseButtonTag(true)
            ->addExtraClass('btn btn-success')
        );

        $validator = new RequiredFields('Name','Contact', 'Email', 'Events', 'Location', 'DOE', 'Time','ServiceDescription');
    
        parent::__construct($controller, $name, $fields, $actions, $validator);

    }

    public function doRequest($data, $form, HTTPRequest $request)
    {
      
        //  $sendTo = ' info@merilinelogistics.com';
        // $email = new Email();
        // $email->setTo($sendTo);
        // $email->setFrom($data['Email']);
        // $email->setSubject('Website Contact Message');
        // $message = "
        //     <p><strong>Name:</strong> {$data['Name']}</p>
        //     <p><strong>Name:</strong> {$data['Contact']}</p>
        //     <p><strong>Email:</strong> {$data['Email']}</p>
        //     <p><strong>Message:</strong> {$data['Services']}</p>
        //     <p><strong>Name:</strong> {$data['Size']}</p>
        //     <p><strong>Name:</strong> {$data['Weight']}</p>
        //     <p><strong>Email:</strong> {$data['Quantity']}</p>
        //     <p><strong>Message:</strong> {$data['Destination']}</p>
        //     <p><strong>Name:</strong> {$data['Totalvalue']}</p>
        //     <p><strong>Name:</strong> {$data['ItemDescription']}</p>
            
        // ";
        // $email->setBody($message);
        // $email->send();
       

        $requestBook = new Books();

        $form->saveInto($requestBook);

        $requestBook->write();
        
        $form->sessionMessage('Successful. Thank you..','good');

        return $this->Controller->redirectBack();
            
    }


    // public function booking_Id()
    // { 
    //     return Photographers::get()->byID($Name) ;
        
    // }
   
    
} 