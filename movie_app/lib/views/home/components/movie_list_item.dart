import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/components/dashed_line.dart';
import 'package:movie_app/models/home_models.dart';

class MovieListItemWidget extends StatelessWidget {
  const MovieListItemWidget(this.movieItem, {Key? key}) : super(key: key);
  final MovieItem movieItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 10,
            color: Color(0xffe2e2e2),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 交叉轴，水平方向
        children: [
          getRankWidget(),
          const SizedBox(
            height: 10,
          ),
          getMovieInfoWidget(),
          const SizedBox(
            height: 10,
          ),
          getDescriptionWidget(),
        ],
      ),
    );
  }

  // 获取排名
  Widget getRankWidget() {
    return Container(
      // padding: EdgeInsets.fromLTRB(9, 4, 9, 4),
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 9),
      decoration: BoxDecoration(
        // container 设置相关的样式
        color: const Color.fromARGB(255, 238, 205, 144),
        borderRadius: BorderRadius.circular(4), // 圆角
      ),
      child: Text(
        "No.${movieItem.rankIndex}",
        style: const TextStyle(
          fontSize: 18,
          color: Color.fromARGB(255, 131, 95, 36),
        ),
      ),
    );
  }

  //获取电影信息
  Widget getMovieInfoWidget() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getMovieImageWidget(),
        getMovieInfo(),
        getDashedLineWidget(),
        getWishWidget(),
      ],
    );
  }

  Widget getMovieImageWidget() {
    return ClipRRect(
      //图片圆角
      borderRadius: BorderRadius.circular(4), // 圆角
      child: Image.network(
        "${movieItem.data?.poster}",
        height: 150,
      ),
    );
  }

  //详情描述
  Widget getMovieInfo() {
    return Expanded(
      // Expanded 占据剩余的所有空间，头尾宽度固定，中间占用所有的空白空间用这个
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getMovieNameWidget(),
            Text("${movieItem.originalName}"),
            Text("${movieItem.alias}"),
            getRatingWidget(),
            Text("${movieItem.data?.genre}"),
          ],
        ),
      ),
    );
  }

  //电影名称
  Widget getMovieNameWidget() {
    return Wrap(
      children: [
        const Icon(
          Icons.play_circle_outline,
          color: Colors.red,
          size: 28,
        ),
        Text(
          "${movieItem.data?.name}",
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "(${movieItem.year})",
          style: const TextStyle(fontSize: 18, color: Colors.black54),
        ),
      ],
    );
  }

//  评分
  Widget getRatingWidget() {
    return Container(
      child: Wrap(
        children: [
          RatingBarIndicator(
            rating: double.tryParse("${movieItem.imdbRating}") ?? 0 / 2,
            itemBuilder: (BuildContext context, int index) => const Icon(
              Icons.star,
              color: Colors.orangeAccent,
            ),
            itemSize: 30,
          ),
          const SizedBox(width: 10),
          Text(
            "${movieItem.imdbRating?.isEmpty ?? true ? 0 : movieItem.imdbRating} / 10",
            style: const TextStyle(color: Colors.orangeAccent, fontSize: 26),
          )
        ],
      ),
    );
  }

  //分割线

  Widget getDashedLineWidget() {
    return const SizedBox(
      height: 100,
      child: DashedLine(
        dashedHeight: 5,
        count: 12,
      ),
    );
  }

  //想看
  Widget getWishWidget() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: Column(
        children: [
          Image.asset(
            "assets/images/home/wish.png",
            width: 32,
          ),
          const SizedBox(height: 3),
          const Text(
            "想看",
            style: TextStyle(
              fontSize: 16,
              color: Color.fromARGB(255, 235, 170, 60),
            ),
          ),
        ],
      ),
    );
  }

  //描述的widget
  Widget getDescriptionWidget() {
    return Container(
      width: double.infinity, //宽度设置一个大的值，填充整个宽
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xfff3f3f3),
        borderRadius: BorderRadius.circular(4), // 圆角
      ),
      child: Text(
        "${movieItem.data?.description}",
        style: const TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }
}
