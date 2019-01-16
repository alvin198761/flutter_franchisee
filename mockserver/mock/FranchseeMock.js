'use strict';
var Mock = require('mockjs')
var Random = Mock.Random;
var RespModel = require("../bean/RespModel");
module.exports = {

    //加盟商列表，分页查询
    'POST /api/fran/queryPage': function (req, res, next) {
        console.log(req.body);

        const data = Mock.mock({
            "items|10": [
                {
                    "id|+1": 1,
                    "name": "@ctitle",
                    "head": '@cname(5,10)',
                    "create_date": Random.date('yyyy-MM-dd'),
                    "remark": '@cword(10,20)',
                    "status": '@integer(1,4)',
                    "phone_no": "@integer(10000000,99999999)",
                }
            ],
            "total": 100,

        });

        var page = {
            "content": data.items,
            "last": true,
            "totalPages": 10,
            "totalElements": data.total,
            "size": 10,
            "number": 1,
            "numberOfElements": 0,
            "first": false
        };

        RespModel.data = page;
        setTimeout(function () {
            res.json(RespModel);
        }, 1000);
    },
    //修改某一个加盟商
    "POST /api/fran/update": function (req, res, next) {
        console.log(req.body);
        RespModel.data = {};
        setTimeout(function () {
            res.json(RespModel);
        }, 1000);
    },
    //删除一个加盟商
    "DELETE /api/fran/delete": function (req, res, next) {
        console.log(req.query);
        RespModel.data = {};
        setTimeout(function () {
            res.json(RespModel);
        }, 1000);
    },
    //创建一个加盟商
    "POST /api/fran/save": function (req, res, next) {
        console.log(req.body);
        RespModel.data = {};
        setTimeout(function () {
            res.json(RespModel);
        }, 1000);
    },
    //创建一个加盟商
    "GET /api/fran/findById/:id": function (req, res, next) {
        console.log(req.path);
        RespModel.data = Mock.mock({
            "id": '@integer',
            "name": "@ctitle",
            "head": '@cname(5,10)',
            "create_date": Random.date('yyyy-MM-dd'),
            "remark": '@cword(10,20)',
            "status": '@integer(1,4)',
            "phone_no": "@integer(10000000,99999999)",
        });
        setTimeout(function () {
            res.json(RespModel);
        }, 1000);
    }


}
