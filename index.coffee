baby = require 'babyparse'

module.exports = (exe, params) ->
  getdata = exe.build params.__source
  getparams = exe.build params.__params
  (cb) ->
    getparams (err, params) ->
      getdata (err, data) ->
        res = baby.parse data, params
        cb null, res.data