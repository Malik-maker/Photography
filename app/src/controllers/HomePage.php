<?php
use SilverStripe\Blog\Model\BlogPost;
use SilverStripe\ORM\DB;
class HomePageController extends PageController
{
    
    public function Mixes()
    {
        return Mixs::get()
            ->sort('Created', 'ASC')
            ->limit(6);
    }
    public function Events()
    {
        return Event::get()
            ->sort('Created', 'DESC')
            ->limit(6);
    }

    public function Videos()
    {
        return Video::get()
            ->sort('Created', 'DESC')
            ->limit(3);
    }

    // public function Projects()
    // {
    //     return Project::get()
    //         ->sort('Created', 'DESC')
    //         ->limit(4);
    // }

  

   
}




