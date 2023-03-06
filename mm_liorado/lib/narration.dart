import 'package:flutter/material.dart';
import 'package:mm_liorado/common/utils/sp.dart';

class Narration extends StatefulWidget {
  const Narration({Key? key}) : super(key: key);

  @override
  State<Narration> createState() => _NarrationState();
}

class _NarrationState extends State<Narration> {
  var num = 0;
  final List<String> texts = [];
  final ScrollController _scrollController = ScrollController(); //listview的控制器
  late TextShowArguments arguments;

  @override
  void initState() {
    super.initState();
    num = 0;
  }

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)!.settings.arguments as TextShowArguments;
    if (num == 0) {
      texts.add(arguments.text[num++]);
    }
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.fromLTRB(50, 200, 50, 200),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: ListView.builder(
            itemCount: texts.length,
            controller: _scrollController,
            itemBuilder: (BuildContext _, int index) {
              if (index == arguments.text.length - 1) {
                return Text(
                  texts[index],
                  style: const TextStyle(
                      fontSize: 35,
                      color: Colors.white70,
                      decoration: TextDecoration.none),
                );
              } else {
                return Text(
                  texts[index],
                  style: const TextStyle(
                      fontSize: 31,
                      color: Colors.white,
                      decoration: TextDecoration.none),
                );
              }
            }),
      ),
      onTap: () {
        if (num < arguments.text.length) {
          setState(() {
            texts.add(arguments.text[num++]);
          });
          Future.delayed(
            const Duration(milliseconds: 10),
            () => _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOut),
          );
        } else {
          //跳转到指定位置
          Navigator.pushNamedAndRemoveUntil(
              context, arguments.backRouter, (_) => false);
          //保存剧情进度
          PersistentStorage().setStorage(arguments.plot, true);
        }
      },
    );
  }
}

class TextShowArguments {
  final List<String> text;
  final String plot;
  final String backRouter;

  TextShowArguments(this.text, this.plot, this.backRouter);
}
