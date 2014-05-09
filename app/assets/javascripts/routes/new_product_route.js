StoreWebsite.NewProductRoute = Ember.Route.extend({
  model: function() {
    return this.store.createRecord('product');
  }
})
