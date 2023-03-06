import 'package:flutter/material.dart';
import 'package:komga_read/components/setting_item.dart';
import 'package:komga_read/page/setting/components/komga_setting.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("设置"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SettingItem("Komga 设置", KomgaSetting()),
          DecoratedBox(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1.0)),
          ),
          const SettingItem("1", Text("123213")),
        ],
      )),
    );
  }
}
