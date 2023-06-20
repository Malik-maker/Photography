
<main class="container">
    <br>
    <div class="row ">
        <div class="col-md-8">
            <% if $PaginatedList %>
                <% loop $PaginatedList %>
                <article class="blog-post">
                    <div class="card mb-3">
                        <img src="$FeaturedImage.Fill(600,250).URL" class="card-img-top" alt="blog-image">
                        <div class="card-body">
                            <h5 class="card-title">$Title</h5>
                            <p class="card-text">$Summary</p>
                            <p class="card-text"><a href="$Link" class="text-success">Read more</a></p>
                            <p class="card-text"><small class="text-muted">Last updated $PublishDate.Date</small></p>
                        </div>
                    </div> 
                </article> 
                <% end_loop %> 
            <% else %> 
                <div class="alert alert-success" role="alert">
                    Sorry, there is no any news available at the moment!
                </div>
            <% end_if %>
            <!-- pagination -->
            <% with $PaginatedList %>
                <% include Pagination %>
            <% end_with %>
            <br>
        </div>
        <div class="col-md-4  ">
            <% if $Categories %>
            <div class="p-4 shadow">
                <h4 class=" Text-dark">Categories</h4>
                <ul class="list-group list-group-flush">
                    <% loop $Categories %>
                    <li class="list-group-item"><a href="$Link" class="text-success">$Title ($BlogPosts.count)</a></li>
                    <% end_loop %>
                </ul>
            </div>
            <% end_if %>
            <br>
        
        </div>
    </div>
</main>
