'use strict';
var Mock = require('mockjs')
var RespModel = require("../bean/RespModel");

module.exports = {

    // //用户登录，传入 用户名和密码
    // 'POST /api/user/login': function (req, res, next) {
    //     console.log(req.body);
    //     RespModel.data = {
    //         id: 1,
    //         name: 'alvin',
    //         icon: 'http://www.jf258.com/uploads/2014-09-10/235842557.jpg'
    //     };
    //     setTimeout(function () {
    //         res.json(RespModel);
    //     }, 500);
    // },
    // //注册
    // 'POST /api/user/register': function (req, res, next) {
    //     console.log(req.body)
    //     RespModel.data = req.body;
    //     setTimeout(function () {
    //         res.json(RespModel);
    //     }, 500);
    // },
    // 'POST /api/user/update': function (req, res, next) {
    //     console.log(req.body);
    //     RespModel.data = {};
    //     setTimeout(function () {
    //         res.json(RespModel);
    //     }, 500);
    // }

}
