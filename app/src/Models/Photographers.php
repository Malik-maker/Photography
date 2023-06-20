<?php

namespace {

    use SilverStripe\ORM\DataObject;
    use SilverStripe\Assets\Image;
    use SilverStripe\AssetAdmin\Forms\UploadField;
    use SilverStripe\Forms\FieldList;
    use SilverStripe\Versioned\Versioned;
    use SilverStripe\Forms\TextField;
    use SilverStripe\Forms\DateField;
    use SilverStripe\Forms\TextareaField;




    class Photographers extends DataObject
    {


        private static $db = [
            'PhotoName' => 'Text',
            'PhotoAbout'=> 'Text'
           
           

        ];


        private static $has_one = [
            'BookingPage' => BookingPage::class,
            'BookingPhoto' => Image::class,
        ];


        private static $owns = [

        ];

        private static $extensions = [
           
        ];

        private static $summary_fields = [
           
        ];


        public function getGridThumbnail()
        {
            if ($this->Photo()->exists()) {
                return $this->Photo()->Fill(100, 100);
            }

            return "(no image)";
        }

        private static $versioned_gridfield_extensions = true;


        public function getCMSFields()
        {
            $fields = FieldList::create(

                TextareaField::create('PhotoName'),
                TextareaField::create('PhotoAbout'),   
                $uploader = UploadField::create('BookingPhoto')
               
            );

            $uploader->setFolderName('BookingPhoto');
            $uploader->getValidator()->setAllowedExtensions(['png', 'gif', 'jpeg', 'jpg', 'tiff']);








            return $fields;
        }
    }
}
