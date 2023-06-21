<nav class="navbar navbar-expand-md  fixed-top maine-menu">
    <div class="container">
      <button class="navbar-toggler ml-auto" data-target="#my-nav" onclick="myFunction(this)" data-toggle="collapse"> <span class="bar1"></span> <span class="bar2"></span> <span class="bar3"></span> </button>
      <div id="my-nav" class="collapse navbar-collapse">
        <ul class="navbar-nav mx-auto">
          <% loop $MenuSet('Main').MenuItems %>
            <li class="nav-item"> 
              <a class="nav-link" href="$Link">$MenuTitle</a> 
            </li>
          <% end_loop %>

          <%-- <li class="nav-item"> <a class="nav-link" href="booking-page" tabindex="-1" aria-disabled="true">Book a Photographer</a></li> --%>

        </ul>
      </div>
    </div>
  </nav>