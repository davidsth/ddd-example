# README

When two teams are working on the same codebase for different domains, it can be difficult to separate the code and avoid merge conflicts. This is a simple example of how to separate the code into two engines, each with their own domain. The engines are then mounted into the main application.

Generate a new engine:

```sh
rails plugin new ProductManagement --full
```
Define engine-specific routes in `ProductManagement/config/routes.rb`

Implement controllers, models, views, and other logic within the ProductManagement engine.

Add any initializers specific to ProductManagement in ProductManagement/config/initializers.

Step 3: Integrate Engine into Main Application

In the main application's Gemfile, add the path to the additional engine:

```ruby
gem 'order_processing', path: 'path_to_order_processing'
```

Replace `path_to_order_processing`` with the actual path to the ProductManagement engine directory.

Run `bundle install`` to install the engine's dependencies.

Mount the additional engine in the main application's `config/routes.rb``:

```ruby
Rails.application.routes.draw do
  # ... other routes ...

  mount ProductManagement::Engine => '/order_processing'
end
```

Step 4: Collaboration and Development

The team responsible for the ProductManagement engine can work on it within the same Git repository as the main application.

The team can branch from the repository and develop their engine.

Testing can be done using standard Rails testing practices.

Step 5: Deployment

Deploy the main application, and the additional engine will be included.

Deploy the additional engine separately when it's ready.