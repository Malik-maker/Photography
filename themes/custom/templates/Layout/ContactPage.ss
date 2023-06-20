 <!-- contact section -->
  <section class="contact_section layout_padding">
    <div class="container">
      <div class="row">
        <div class="custom_heading-container ">
          <h2>
            Request A call back
          </h2>
        </div>
      </div>
    </div>
       

    <div class="container layout_padding2">
    <% include Notification %>
      <div class="row">
        <div class="col-md-5">
          <div class="form_contaier">
            <form action="{$TopBaseURL}contact-us/requestCallBack" method="POST">
              <div class="form-group">
                <label for="exampleInputName1">Name</label>
                <input type="text" name="Name" class="form-control" id="exampleInputName1">
              </div>
              <div class="form-group">
                <label for="exampleInputNumber1">Phone Number</label>
                <input type="text" name="PhoneNumber" class="form-control" id="exampleInputNumber1">
              </div>

              <div class="form-group">
                <label for="exampleInputEmail1">Email </label>
                <input type="email" name="Email" class="form-control" id="exampleInputEmail1">
              </div>
              <div class="form-group ">
                <label for="inputState">Select Service</label>
                <select id="inputState" name="Service" class="form-control">
                  <option name="Service" selected>
Executive Protection</option>
                  <option name="Service" selected>Uniformed Security</option>
                  <option name="Service" selected>Security Trailer / CCTV Monitoring</option>
                  <option name="Service" selected>Patrol Division</option>
                       <option name="Service" selected>Special Event Security</option>
                </select>
              </div>
              <div class="form-group">
                <label for="exampleInputMessage">Message</label>
                <input type="text" name="Message" class="form-control" id="exampleInputMessage">
              </div>
              
              <button type="submit" name="action_requestCallBack" class="form-btn mb-5">Send</button>
            </form>
          </div>
        </div>
        <div class="col-md-7">
          <div class="mapouter"><iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d506588.28961562767!2d-2.869971!3d7.272554000000001!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xfc5115aee777aad%3A0xe9267a9f134ced6a!2sEbeek%20Security%20Services%20Ltd.!5e0!3m2!1sen!2sus!4v1675167888305!5m2!1sen!2sus" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->


