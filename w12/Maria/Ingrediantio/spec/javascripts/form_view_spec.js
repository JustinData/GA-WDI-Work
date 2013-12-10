describe("FormView", function() {

  var view, collection, form;

  beforeEach(function() {
    appendLoadFixtures("form.html");
    form = $("form.new-ingresient");

    view = new FormView();
  });
  
  it("is tied to the form", function() {
    expect(view.el).toBe(form[0]);
  });
});