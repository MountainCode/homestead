# Architecture

There are several design patterns used throughout this site that differ from
a vanilla Rails app.

## Decorators

Model decorators are used to eliminate fat models and introduce view objects.
See
[7 Patterns to Refactor Fat ActiveRecord Models](http://blog.codeclimate.com/blog/2012/10/17/7-ways-to-decompose-fat-activerecord-models/)
number 5 for a more in depth explanation.  This pattern keeps display logic out
of the model, out of the templates and in the view object where it belongs.
This makes it much easier to use alternate logic-less template engines like
[Mustache](https://github.com/agoragames/stache) or
[Liquid](https://github.com/Shopify/liquid).

Decorators live in the app/decorators directory and are instantiated in the
controller.  One example is the listing controller which uses the listing and
property decorators.

```ruby
def index
  @q = Listing.search(params[:q])
  @listings = ListingDecorator.decorate_collection @q.result
end
```

The listing decorator then decorates its property attribute with a property
decorator.

```ruby
class ListingDecorator < Draper::Decorator
  delegate_all

  def property
    PropertyDecorator.decorate object.property
  end
end
```

The property decorator has several methods which can be directly accessed in
the template.  This simplifies the logic in the .erb file while also making it
easy to use logic-less templates.


#### [index.html.erb](../app/views/homestead/listings/index.html.erb)

```html
  <% if property.has_lot_size %>
    <strong>Lot Size: </strong><span><%= property.lot_size %> acres</span>
  <% end %>
```

#### index.html.mustache

```html
  {{#property}}
    {{#has_lot_size}}
      <strong>Lot Size: </strong><span>{{lot_size}} acres</span>
    {{/has_lot_size}}
  {{/property}}
```
