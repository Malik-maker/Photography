<?php

namespace {

    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\TextareaField;


    class BookingPage extends Page
    {
        private static $db = [
           
        ];

        private static $has_one = [
        ];

        private static $has_many = [
            'BookingPage' => Photographers::class,
        ];

        public function getCMSFields()
        {
            $fields = parent::getCMSFields();
            $fields->addFieldToTab('Root.BookingPage', GridField::create(
                'BookingPage',
                'BookingPage',
                $this->BookingPage(),
                GridFieldConfig_RecordEditor::create()
            ));

            return $fields;
        }
    }
}
