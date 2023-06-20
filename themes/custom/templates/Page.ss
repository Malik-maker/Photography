<!DOCTYPE html>
<% base_tag %>
<html lang="en">

<head>

    $MetaTags(false)
    <title>$Title</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
        name='viewport' />
         
</head>

<body>
<% include Header %>
    <% if $ClassName.ShortName != "HomePage" %>
        <div class="subpage-title "style="height:200px;padding-top:100px;">
            <div class="container  ">
                <h1 class=" border-bottom text-white "  >
                    <% if $Parent %> $Parent.Title <% else %> $Title  <% end_if %>
                    </h1>
               <% if $Parent %> <div class="text-light breadcrumbs"><small>$Breadcrumbs</small></div> <% end_if %>
            </div>
        </div>
        <div class="container">
            <% if $Parent %> <h4 class="mt-4" style="color: ;">$Title</h4> <% end_if %>
        </div>
    <% end_if %>

    $Layout
<% include Footer %>


</body>

</html>

