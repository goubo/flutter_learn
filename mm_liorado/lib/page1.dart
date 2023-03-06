import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Page1"),
          Text("number : $num"),
          ElevatedButton(
              child: const Text("++1"),
              onPressed: () => {setState(() => num++)}),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page2"))},
              child: const Text("跳转到page2")),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page3"))},
              child: const Text("跳转到page3")),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Page2"),
          Text("number : $num"),
          ElevatedButton(
              child: const Text("++1"),
              onPressed: () => {setState(() => num++)}),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page1"))},
              child: const Text("跳转到page1")),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page3"))},
              child: const Text("跳转到page3")),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Text("Page3"),
          Text("number : $num"),
          ElevatedButton(
              child: const Text("++1"),
              onPressed: () => {setState(() => num++)}),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page1"))},
              child: const Text("跳转到page1")),
          ElevatedButton(
              onPressed: () =>
                  {Navigator.popUntil(context, ModalRoute.withName("/page2"))},
              child: const Text("跳转到page2")),
        ],
      ),
    );
  }
}
