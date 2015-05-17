baby = require 'babyparse'

module.exports =
  params:
    csv: (exe, params) ->
      getdata = exe.build params.__s
      getparams = exe.build params.__p
      (cb) ->
        getparams (err, params) ->
          getdata (err, data) ->
            res = baby.parse data, params
            cb null, res.data