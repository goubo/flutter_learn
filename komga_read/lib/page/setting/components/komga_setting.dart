import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:komga_read/utils/komga_api.dart';
import 'package:komga_read/utils/ps.dart';
import 'package:logger/logger.dart';

class KomgaSetting extends StatelessWidget {
  const KomgaSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Komga 设置")), body: const FormWidget());
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  var logger = Logger();
  final TextEditingController _komgaController = TextEditingController();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    PersistentStorage().getStorage("komga_address").then((value) => _komgaController.text = value ?? "");
    PersistentStorage().getStorage("komga_user").then((value) => _unameController.text = value ?? "");
    PersistentStorage().getStorage("komga_pwd").then((value) => _pwdController.text = value ?? "");
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            autofocus: true,
            controller: _komgaController,
            keyboardType: TextInputType.url,
            decoration: const InputDecoration(
              labelText: "服务器地址",
              hintText: "http(s)://",
              icon: Icon(Icons.link),
            ),
            //校验密码
            validator: (v) {
              return v!.trim().isNotEmpty ? null : "地址不能为空";
            },
          ),
          TextFormField(
              controller: _unameController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                icon: Icon(Icons.person),
              ),
              validator: (v) {
                return v!.trim().isNotEmpty ? null : "用户名不能为空";
              }),
          TextFormField(
            controller: _pwdController,
            decoration: const InputDecoration(
              labelText: "密码",
              hintText: "您的登录密码",
              icon: Icon(Icons.lock),
            ),
            obscureText: true,
            //校验密码
            validator: (v) {
              return v!.trim().length > 5 ? null : "密码不能少于6位";
            },
          ),
          // 登录按钮
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("登录"),
                    ),
                    onPressed: () {
                      // 通过_formKey.currentState 获取FormState后，
                      // 调用validate()方法校验用户名密码是否合法，校验
                      // 通过后再提交数据。
                      if ((_formKey.currentState as FormState).validate()) {
                        //登录验证
                        KomgaApi.instance
                            .login(_komgaController.text, _unameController.text, _pwdController.text)
                            .then((komgaMe) {
                          Fluttertoast.showToast(msg: "验证成功", gravity: ToastGravity.CENTER);
                          PersistentStorage().setStorage("komga_address", _komgaController.text);
                          PersistentStorage().setStorage("komga_user", _unameController.text);
                          PersistentStorage().setStorage("komga_pwd", _pwdController.text);
                          // Navigator.pop(context);
                        }).catchError((error) {
                          Fluttertoast.showToast(msg: "服务器验证失败:$error.response.data", gravity: ToastGravity.CENTER);
                        });
                      }
                    },
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text("退出"),
                    ),
                    onPressed: () {
                      KomgaApi.cookie = null;
                      PersistentStorage().removeStorage("komga_address");
                      PersistentStorage().removeStorage("komga_user");
                      PersistentStorage().removeStorage("komga_pwd");
                      _komgaController.text = _unameController.text = _pwdController.text = "";
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
