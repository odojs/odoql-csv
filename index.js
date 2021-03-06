// Generated by CoffeeScript 1.9.1
var baby;

baby = require('babyparse');

module.exports = {
  params: {
    csv: function(exe, params) {
      var getdata, getparams;
      getdata = exe.build(params.__s);
      getparams = exe.build(params.__p);
      return function(cb) {
        return getparams(function(err, params) {
          return getdata(function(err, data) {
            var res;
            res = baby.parse(data, params);
            return cb(null, res.data);
          });
        });
      };
    }
  }
};
