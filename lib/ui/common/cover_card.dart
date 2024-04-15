import 'package:easy_mygo/entity/book/cover/book_cover.dart';
import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:easy_mygo/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BookCoverCard extends StatelessWidget {
  static const double coverRatio = 181 / 256;
  static const int maxLine = 2;
  static const double titleFontSize = 14;
  // 1.1 倍行高
  static const double titleFontLineHeight = 1.1;
  static const double titleHeight = maxLine * (titleFontSize * titleFontLineHeight);

  // 根据宽度测量高度
  // 19 / 27 的海报 + 120，然后能展示多少行文字随缘
  static double measureHeight(double width) {
    final coverHeight = width / coverRatio;
    return coverHeight + titleHeight;
  }

  final BookCover cover;

  const BookCoverCard({super.key, required this.cover});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: titleFontSize, height: titleFontLineHeight);
    return Column(
      children: [
        AspectRatio(
            aspectRatio: coverRatio,
            child: Image.network(
              cover.cover,
              width: double.infinity,
            )),
        SizedBox(
          height: titleHeight,
          width: double.infinity,
          child: Text(
            cover.label,
            style: textStyle,
            softWrap: true,
            maxLines: maxLine,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
