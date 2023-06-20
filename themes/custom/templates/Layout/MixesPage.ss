<div id="latestalbum" class="hero mixes ">
    <div class="container">
        <!-- hero content -->
        <div class="default-heading">
            <!-- heading -->
            <h2> Dj Sly Beatz Mixes</h2>
             <hr>
        </div>
        <!-- hero play list -->
        <div class="hero-playlist">
            <div class="row">
                
                </div> 
                <div class="col-md-12 col-sm-12">
                    <!-- play list -->
                    <div class="playlist-content  px-4">
                        <ul class="list-unstyled row  gy-5">

                            <% loop $Mixes %>
                                
                         
                            <li class="playlist-number col-md-4 col-sm-12 ">
                          
                                    <!-- song information -->
                                <iframe src=" $MixesLink" scrolling="no" width="100%" height="270" scrollbars="no" frameborder="0"></iframe>
                               
                            <div class="clearfix"></div> 
                            </li>
                        <% end_loop %>
                        
                       
                            
                           
                          
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>