'use strict';
var Mock = require('mockjs')
// var Random = Mock.Random;

module.exports = {

    'GET /api/news/queryList': function (req, res, next) {
        console.log("news queryList");
        var data = Mock.mock({
          'items|10': [{
            'id|+1': 1,
            'title': '@ctitle',
            'icon': "assets/rabbit_48px_1182406_easyicon.net.png",
             'clickCount|+1': 1,
             'time': new Date(),
              'mark': "@integer(0,1)",
              'url': "https://www.oschina.net/news/103516/numsharp-0-6-5-released"
          }]
        });
        setTimeout(function () {
            res.json({
                code: 0,
                errorMsg: 'this is a msg',
                data: data.items
            });
        }, 1000);
    },

    'POST /api/news/save': function (req, res, next) {
        console.log(req.body);
        setTimeout(function () {
            res.json({
                code: 0,
                errorMsg: 'this is a msg',
                data: {}
            });
        }, 1000);
    }

}
