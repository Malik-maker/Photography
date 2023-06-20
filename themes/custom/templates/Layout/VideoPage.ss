<div class=" Videos " id="">
    <div class="container">
        <!-- default heading -->
        <div class="default-heading">
            <!-- heading -->
            <h2>Dj Sly Beatz Videos</h2>
            <%-- <hr> --%>
        </div>
        <!-- featured album elements -->
        <div class=" video-container">
            <div class="row py-5">
                  

    

                <% loop  $Videos %>
                    
              
                    <div class="col-md-6 col-sm-6 video-container-1">
                        <!-- featured item -->
                    <iframe width="100%" height="315" src="$VideoLink" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

                          
                        </div>
                        
                    <% end_loop %>  
                    
                              
                    </div>
              
              
              
              
              
               
            </div>
        </div>
    </div>