import 'package:flutter/material.dart';

class TextShow extends StatefulWidget {
  const TextShow({Key? key}) : super(key: key);

  @override
  State<TextShow> createState() => _TextShowState();
}

class _TextShowState extends State<TextShow> {
  var num = 0;
  final List<String> texts = [];
  final ScrollController _scrollController = ScrollController(); //listview的控制器
  late Map arguments;

  @override
  void initState() {
    super.initState();
    num = 0;
  }

  @override
  Widget build(BuildContext context) {
    arguments = ModalRoute.of(context)!.settings.arguments as Map;
    if (num == 0) {
      texts.add(arguments["text"][num++]);
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
              if (index == arguments['text'].length - 1) {
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
              return Text(
                texts[index],
                style: const TextStyle(
                    fontSize: 31,
                    color: Colors.white,
                    decoration: TextDecoration.none),
              );
            }),
      ),
      onTap: () {
        if (num < arguments['text'].length) {
          setState(() {
            texts.add("${arguments['text'][num++]}");
          });
          Future.delayed(
            const Duration(milliseconds: 10),
            () => _scrollController.animateTo(
                _scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOut),
          );
        } else {
        }
      },
    );
  }
}
