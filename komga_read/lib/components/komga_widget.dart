import 'package:flutter/cupertino.dart';
import 'package:komga_read/utils/config.dart';

class KomgaImageWidget extends StatelessWidget {
  final double height;
  final double width;
  final String url;

  const KomgaImageWidget({Key? key, required this.url, this.height = 150, this.width = 100}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      //图片圆角
      borderRadius: BorderRadius.circular(4), // 圆角
      child: Image(
        image: NetworkImage(url, headers: {"Cookie": Global.cookie!}),
        height: height,
        width: width,
      ),
    );
  }
}
