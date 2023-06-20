

<main class="container">
    <br>
    <div class="row ">
        <div class="col-md-8">
			<article class="blog-post">
				<div class="card mb-3">
					<img src="$FeaturedImage.Fill(600,250).URL" class="card-img-top" alt="blog-image">
					<div class="card-body">
						<h3 class="card-title">$Title</h3>
						<p class="card-text" style="text-align: justify;">$Content</p>
						<p class="card-text"><small class="text-muted">Last updated $PublishDate.Date</small></p>
						<br>
						<div id="disqus_thread"></div>
						<script>
							/**
							*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
							*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables    */
							/*
							var disqus_config = function () {
							this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
							this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
							};
							*/
							(function() { // DON'T EDIT BELOW THIS LINE
							var d = document, s = d.createElement('script');
							s.src = 'https://ebeekescurity.disqus.com/embed.js';
							s.setAttribute('data-timestamp', +new Date());
							(d.head || d.body).appendChild(s);
							})();
						</script>
						<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
					</div>
				</div>
			</article>
            <br>
            <a href="news/" class=" text-success"> <i class="fa fa-arrow-left"></i> Go Back</a>
        </div>
        <div class="col-md-4  ">
			<% if $Categories %>
				<div class="p-4 shadow">
					<h4 class=" Text-dark">Category</h4>
					<ul class="list-group list-group-flush">
						<% loop $Categories %>
						    <li class="list-group-item"><a href="$Link" class="text-dark">$Title ($BlogPosts.count)</a></li>
					    <% end_loop %>
					</ul>
				</div>
		    <% end_if %>
        </div>
    </div>
</main>

