<div class="container-fluid fh5co-recent-work activity">
    <div class="container recent">
      <div class="">
        <h2>Activity of the month</h2>
        <div class="row g-5">
          
          <% loop $BookingPage %>
          <div class="col-lg-4">   
            <div class="card"> <img class="card-img" src="$BookingPhoto.URL" alt="">
              <div class="card-img-overlay">
                <div class="bottom-text">
                  <h5 class="card-title">$PhotoName</h5>
                  <a href="{$BaseHref}detail-page/details/{$ID}">Book Me !!!<img  src="$resourceURL('themes/custom/images/double-right.svg')"  alt="">  </a> 
                </div>
              </div>
            </div>
            </div>
            <% end_loop %>
          
          <div>
            
          </div>
          <div>
           
          </div>
        </div>
      </div>
    </div>
  </div>