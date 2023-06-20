<div class="container  news_container">

<div class="container  text-lg-center mb-3 text-dark ">  </div>
<div class="row justify-content-md-center g-2 g-lg-3">
    <% loop $Children %>
    <div class="col-md-3 News-cards-people ">

        <div class="card shadow mb-5">
            <a href="$Link"> <img src="$Photo.Fill(300,350).URL"   class="card-img-top " alt="Profile Image"></a>
            <div class="card-body">
                <h5 class="card-title">$Title</h5>
                <hr>
                <h6 class="card-title">$MemberPosition</h6>
                <%-- <p class="card-text">  
             $Content.LimitWordCount(10, '...')
               </p> --%>
                <small><a class="team-info" href="$Link">Read More</a> </small>
            </div>
            
        </div>
    </div>
      <% end_loop %>

</div>
</div>
