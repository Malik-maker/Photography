<?php

namespace {

    use SilverStripe\CMS\Controllers\ContentController;
    use SilverStripe\View\Requirements;
    use SilverStripe\View\ArrayData;

    class PageController extends ContentController
    {
        /**
         * An array of actions that can be accessed via a request. Each array element should be an action name, and the
         * permissions or conditions required to allow the user to access it.
         *
         * <code>
         * [
         *     'action', // anyone can access this action
         *     'action' => true, // same as above
         *     'action' => 'ADMIN', // you must have ADMIN permissions to access this action
         *     'action' => '->checkAction' // you can only access this action if $this->checkAction() returns true
         * ];
         * </code>
         *
         * @var array
         */
        private static $allowed_actions = [];

        protected function init()
        {
            parent::init();
            
            $ThemeDir =  "themes/custom/";

            // css 
            Requirements::css($ThemeDir . 'css/bootstrap.min.css');
            Requirements::css($ThemeDir . 'css/style.css');
            // Requirements::css($ThemeDir . 'css/responsive.css');
            // Requirements::css($ThemeDir . 'css/owl.carousel.css');
            // Requirements::css($ThemeDir . 'css/font-awesome.min.css');
            // Requirements::css($ThemeDir . 'css/style-color.css');

            Requirements::css('https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css');
            Requirements::css('https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|Roboto:400,500&display=swap');
            Requirements::css('https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css');


            
            //   javascript
            Requirements::Javascript($ThemeDir . 'javascript/jquery-3.3.1.slim.min.js');
            Requirements::Javascript($ThemeDir . 'javascript/popper.min.js');
            Requirements::Javascript($ThemeDir . 'javascript/bootstrap.min.js');
            Requirements::Javascript($ThemeDir . 'javascript/owl.carousel.min.js');
            Requirements::Javascript($ThemeDir . 'javascript/main.js');
            Requirements::Javascript('https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js');
            Requirements::Javascript('https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js');
            // You can include any CSS or JS required by your project here.
            // See: https://docs.silverstripe.org/en/developer_guides/templates/requirements/
        }
    }
}
