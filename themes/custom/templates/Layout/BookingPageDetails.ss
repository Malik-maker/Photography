<section class="contact_section layout_padding">
  <% with $PhotographerDetail %>
  <div class="container">
    <div class="row">
      <div class="col-lg-5">
        <img src="$BookingPhoto.URL" alt="">
      </div>
      <div class="col-lg-7">
       <% include Notification %>
        <div class="card mb-4 rounded-3 shadow-sm">
          <div class="card-header py-3">
            <h4 class="my-0 fw-normal text-dark">$PhotoName</h4>
          </div>
          <div class="card-body">
            <p class="my-0 fw-normal text-dark">$PhotoAbout<p>        
          </div>
            <div class="card-footer">
            
            <!-- Button trigger modal -->
            <button type="button" class="btn btn-dark mt-3" data-toggle="modal" data-target="#exampleModal">
              Click to book me
            </button>

            <!-- Modal -->
            <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                      <footer class="container-fluid p-0 pr-0 mt-3">
                  <div class="row mr-0 ml-0">
                
                  <div class="col-md-12 content-us">
                    <div class="contact-form" id="contact">
                      <h3 class="text-uppercase">Book Me </h3>
                      <% include Notification %>
                      <form  action="{$BaseHref}detail-page/bookingRequest?id=$ID" method="POST">
                        <input type="hidden" name="PhotoName" value="$PhotoName"/>
                        <input type="hidden" name="PhotographerID" value="$ID"/>
                        <input type="text" class="form-control" placeholder="Photographer Name"  value = "$PhotoName">
                        <input type="text" class="form-control" placeholder="Your Name" name="Yourname" >
                        <input type="email" class="form-control" placeholder="Your Email" name="Email"  >
                        <input type="text" class="form-control" placeholder="Your Event" name="Event">
                        <input type="date" class="form-control" placeholder="Your Event Date" name="EventDate">
                        <input type="text" class="form-control" placeholder="Your Contact" name="PhoneNumber" >
                        <textarea class="form-control" placeholder="Your Message" name="Message"></textarea>
                        <button type="submit">Send</button>
                      </form>
                    </div>
                  </div>
                </div>
              
              </footer>
                  </div>
                  <div class="modal-footer">
                    <button type="button" name="action_bookingRequest" class="btn btn-secondary" data-dismiss="modal">Close</button>
              
                  </div>
                </div>
              </div>
            </div>
                    
          </div>
        </div>
      </div>
    </div>
  </div>
  <% end_with %>
</section>

  <!-- contact -->
 

