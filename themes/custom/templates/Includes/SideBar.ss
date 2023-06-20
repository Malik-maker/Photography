<% if $Menu(2) %> 
    <% with $Level(1) %> 
        <% if LinkOrSection = section %>
            <% if $HideChildren !=  1 %>
                <% if $Children %>
                    <div class="p-4 shadow">
                        <h4 class=" Text-dark">Related Pages</h4>
                        <ul class="list-group list-group-flush">
                            <% loop $Children %>
                                <li class="list-group-item $LinkingMode">
                                    <a href="$Link" class="text-dark {$LinkingMode}"  title="Go to the $Title.XML page"> $MenuTitle.XML</a>
                                </li> 
                            <% end_loop %>
                        </ul>
                    </div>
                <% end_if %>
            <% end_if %>
        <% end_if %>
    <% end_with %>
<% end_if %>