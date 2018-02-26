/**
 * Created by pipu11qiao on 2017/8/16.
 */
var mediator = {};
// The pupose of the mediator is ot control the workflow between objects and we really don't need anything more thant an object literial to do this

var orgChart = {
  addNewEmployee: function () {
      // getEmployeeDetail provides a view that users interact with
      var employeeDetail  = this.getEmployeeDetail();

      // when the emploee detail is complete, the mediator
      // decides what should happen next
      employeeDetail.on('complete',function (employee) {

          // set up additional objects that have additional events, which by the mediator to do additional things;
          var managerSelector = this.selectManager(employee);
          managerSelector.on('save',function (employee) {
              employee.save();
          });

      });
  }
};