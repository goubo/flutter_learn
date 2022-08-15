import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Subject extends StatelessWidget {
  const Subject({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("书影音"),
      ),
      body: Center(
        child:
            // Text(
            //   "书影音",
            //   style: TextStyle(fontSize: 50),
            // ),
            RatingBar.builder(
          initialRating: 2.2,
          allowHalfRating: true,
          itemBuilder: (BuildContext context, int index) => const Icon(
            Icons.star,
            color: Colors.orangeAccent,
          ),
          onRatingUpdate: (rating) => print(rating),
        ),
      ),
    );
  }
}
