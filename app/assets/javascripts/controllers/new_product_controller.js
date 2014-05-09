StoreWebsite.NewProductController = Ember.ObjectController.extend({
  actions: {
    createProduct: function() {
      var model = this.get('model');
      var controller = this;

      model.save()
      .then(function() {
        controller.transitionToRoute('product', model);
      })
      .catch(function() {
        alert("Please fix the problems noted in red.")
      });
    }
  }
});


