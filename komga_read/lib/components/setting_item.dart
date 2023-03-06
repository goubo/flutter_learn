import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem(this.title, this.widget, {Key? key}) : super(key: key);
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (kDebugMode) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
        }
      },
      child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Color(0xFFEEEEEE)))),
          child: Row(
            children: [
              Text(title, style: const TextStyle(fontSize: 22)),
              const Spacer(),
              Text(">", style: TextStyle(fontSize: 22, color: Colors.grey[400]))
            ],
          )),
    );
  }
}
