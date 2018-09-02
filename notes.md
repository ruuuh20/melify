
  <div class="multiple-items">

  <% @new_releases.each do |new| %>
  <%= link_to album_path(new.id) do %>
  <div class="album" href=>
    <img class="album-img" src="<%= new.images[1]["url"] %>" alt="">
      <%= new.artists.first.name %>
  </div>
  <% end %>
  <% end %>
  </div>
