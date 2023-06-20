<?php

namespace {

    use SilverStripe\Forms\GridField\GridField;
    use SilverStripe\Forms\GridField\GridFieldConfig_RecordEditor;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\TextareaField;
    use SilverStripe\Forms\HTMLEditor\HTMLEditorField;
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Versioned\Versioned;

    class HomePage extends Page
    {

        private static $db = [
            




        
           

        ];

        private static $has_one = [
          
            

        ];


        private static $has_many = [
            
        ];


        private static $owns = [
            
        ];

        private static $extensions = [
            
        ];

        private static $summary_fields = [
            

        ];



        public function getCMSFields()
        {
            $fields = parent::getCMSFields();

          

            




           
           
            

         

           

           


      
            return $fields;
        }
    }
}
