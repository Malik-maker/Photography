<div class="container pt-5 service-layout" id="services ">
    <div class="d-flex flex-column text-center mb-3">
        <!-- <h5 class="text-primary mb-3">Our Services</h5>  -->
        <!-- <h1 class="m-0">Premium Security Services</h1> -->
        <div class="service_detail heading ">
            <h3>
                Some of Our
            </h3>
            <h2>
      Clients
            </h2>
          </div>
    </div>
    <div class="row pb-3">
      <% loop $Clients %>
        <div class="col-md-6 col-lg-4 mb-4">
             <div class="card mb-2 p-3">
                <img class="card-img-top" src="$Photo.URL " alt="">
                
               
            </div>
        </div>
        <% end_loop %>
    </div>
   
</div>

