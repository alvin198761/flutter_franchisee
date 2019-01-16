import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_franchisee/services/UserService.dart';
import 'package:flutter_franchisee/sys/AppSystem.dart';
import 'package:flutter_franchisee/sys/ThemeConfig.dart';

class LoginView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _LoginViewState();
  }
}

class _LoginViewState extends State<LoginView> {
  final _phoneNo = new TextEditingController();
  final _password = new TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    //如果又用户信息，跳到首页
//    if (AppSystem.sessionSubjectUser != null) {
//      Navigator.pushNamed(context, "/");
//    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getTheme(context),
      home: Scaffold(
        body: SingleChildScrollView(
          //解决高度溢出
          child: new ConstrainedBox(
            constraints: new BoxConstraints(
              minHeight: 120.0,
            ),
            child: Center(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 66),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "请输入手机号/密码",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.phone_android),
                            hintText: "请输入手机号"),
                        maxLength: 11,
                        controller: _phoneNo,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value.isEmpty) {
//                            return "手机号不能为空！";
                            return "";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key), hintText: "请输入密码"),
                        maxLength: 20,
                        obscureText: true,
                        controller: _password,
                        validator: (value) {
                          if (value.isEmpty) {
//                            return "密码不能为空！";
                            return "";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: RaisedButton(
                                  onPressed: doLogin,
//                                  color: Colors.blue,
                                  shape: StadiumBorder(),
                                  child: Text(
                                    '登录',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    // TODO: implement build
  }

  void doLogin() {
    String name = _phoneNo.text.trim();
    String password = _password.text;
    if (!_formKey.currentState.validate()) {
      return;
    }
    UserService.login(name, password, context);
  }
}
