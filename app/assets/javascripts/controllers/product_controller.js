StoreWebsite.ProductController = Ember.ObjectController.extend({
  actions: {
    deleteProduct: function() {
      if (confirm('Are you sure?')) {
        this.get('model').destroyRecord();
        this.transitionTo('/');
      }
    }
  }
});
