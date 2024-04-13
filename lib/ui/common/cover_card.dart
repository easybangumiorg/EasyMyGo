import 'package:easy_mygo/entity/novel/novel_cover/novel_cover.dart';
import 'package:flutter/cupertino.dart';

class NovelCoverCard extends StatelessWidget {
  final NovelCover cover;

  const NovelCoverCard({super.key, required this.cover});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: AspectRatio(
                aspectRatio: 19 / 27, child: Image.network(cover.cover, width: double.infinity,))),
        Text(
          cover.label,
          maxLines: 2,
        ),
      ],
    );
  }
}
