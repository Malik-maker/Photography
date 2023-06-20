<div class="featured " id="featuredalbum">
    <div class="container">
        <!-- default heading -->
        <div class="default-heading">
            <!-- heading -->
            <h2>Dj Sly Beatz Events</h2>
            <hr>
        </div>
        <!-- featured album elements -->
        <div class="featured-element">
            <div class="row">
                <% loop $Events %>
                    
              
                <div class="col-md-4 col-sm-6">
                    <!-- featured item -->
                    <div class="featured-item ">
                        <!-- image container -->
                        <div class="figure">
                            <!-- image -->
                            <img class="img-responsive event-image" src="$EventPhoto.URL" alt="" />
                        <a href="$EventLink" class="ticket-link" role="button" >Ticket To Event</a>
                            
                            <!-- paragraph -->
                            <%-- <p  class="mb-5 frame-item"><iframe src="https://audiomack.com/embed/black-sherif/song/soja?background=1&color=ff0000" scrolling="no" width="100%" height="252" scrollbars="no" frameborder="0"></iframe>
                          </p> --%>
                        
                        </div>
                        <!-- featured information -->
                        <div class="featured-item-info">
                            <!-- featured title -->
                         
                            <!-- horizontal line -->
                       
                            <!-- some responce from social medial or web likes -->
                            <p class="event-details"> <i class="fa fa-"> <i class="fa fa-calendar-days"></i></i>$EventDate &nbsp;&nbsp; <i class="fa-solid fa-location-dot"></i>$EventLocation</p>
                      
                        </div>
                    </div>
                </div>
            <% end_loop %>
               
               
               
            </div>
        </div>
    </div>
</div>
<!-- features end -->
