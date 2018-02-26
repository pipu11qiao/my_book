/**
 * Created by pipu11qiao on 2017/8/21.
 */
(function () {
    var carManager = {
        // request information
        requestInfo: function (modal,id) {
            return 'The infomation for ' + modal + 'width Id' + id;
        },

        // purchase the car
        buyVehicle: function (model,id) {
            return 'You have successfully puchased Item ' + id ;
        },
        // arrange a viewing

        arrangeViewing: function (model,id) {
            return 'You have successfully booked a viewing of ' + id;
        },
        execute: function (name) {
            return this[name] && this[name].apply(carManager);
        }
    };
})();