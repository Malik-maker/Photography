<!-- Services Start -->
<div class="container pt-5" id="services">
    <div class="d-flex flex-column text-center mb-5">
        <%-- <h5 class="text-primary mb-3">Our Services</h5> --%>
        <!-- <h1 class="m-0">Premium Security Services</h1> -->
        <div class="service_detail">
            <h3>
                Our Services
            </h3>
            <h2>
              we provide service
            </h2>
          </div>
    </div>
    <div class="row pb-3">
        <% loop $Services %>
            
      
        <div class="col-md-6 col-lg-4 mb-4">
            <div class="card mb-2 p-3">
                <img class="card-img-top" src="$Photo.URL " alt="">
                <div class="card-body d-flex align-items-center p-0" style="background-color:#3A3C63;">
                    <h3 class="flaticon-desk font-weight-normal d-flex flex-shrink-0 align-items-center justify-content-center bg-primary text-white m-0 mr-3" style="width: 100; height: 45px;"></h3>
                    <h6 class="card-title text-white text-truncate m-0" >$ServicesTitle</h6>
                </div>
                <div class="card-footer">
                  $ServicesDetails
                </div>
            </div>
        </div>

    <% end_loop %>
      
      
       
        <!-- <div class="col-md-6 col-lg-4 mb-4">
            <div class="card mb-2 p-3">
                <img class="card-img-top" src="img/service-6.jpg" alt="">
                <div class="card-body bg-secondary d-flex align-items-center p-0">
                    <h3 class="flaticon-bodyguard font-weight-normal d-flex flex-shrink-0 align-items-center justify-content-center bg-primary text-white m-0 mr-3" style="width: 45px; height: 45px;"></h3>
                    <h6 class="card-title text-white text-truncate m-0">Private Security</h6>
                </div>
                <div class="card-footer">
                    Diam amet eos at no eos sit lorem, amet rebum ipsum clita stet, diam sea est magna diam eos, rebum sit vero stet ipsum justo et.
                </div>
            </div>
        </div> -->
    </div>
</div>


  

  
  


  
  