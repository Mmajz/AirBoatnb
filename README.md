Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.




<% <div class="row row-cols-1 row-cols-md-2 g-4">
      <% @boats.each do |boat| %>
        <% <div class="col"> %>
          <% <div class="card h-100"> %>
            <% <div class="card-body"> %>
              <% <h5 class="card-title"><%= boat.title</h5> %>
              <p class="card-text">Description: <%= boat.description %></p>
                <p>Price: <%= boat.price %></p>
                <p>Location: <%= boat.location %></p>
                <%= link_to "View Boat", "/boats/#{boat.id}" %>
              <!-- Add more boat information as needed -->
            </div>
          </div>
        </div>
      <% end %>
    </div>
