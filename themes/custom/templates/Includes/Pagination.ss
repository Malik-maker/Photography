<% if $MoreThanOnePage %>
    <nav aria-label="Page navigation example" style="margin-top: 10px; " class="">
        <ul class="pagination justify-content-center">
            <% if $NotFirstPage %>
                <li class="page-item shadow">
                    <a class="page-link" href="$PrevLink" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
            <% end_if %>
            <% loop $PaginationSummary %>
                <% if $Link %>
                    <li class="page-item shadow" <% if $CurrentBool %>class="active"<% end_if %> ><a class="page-link" href="$Link">$PageNum</a></li>
                <% else %>
                    <li class="page-item"><a class="page-link" href="#">...</a></li>
                <% end_if %>
            <% end_loop %>
            <% if $NotLastPage %>
                <li class="page-item shadow">
                    <a class="page-link" href="$NextLink" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            <% end_if %>
        </ul>
    </nav>
<% end_if %>