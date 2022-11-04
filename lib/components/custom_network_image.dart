import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class CustomNetworkImage extends StatelessWidget {
  const CustomNetworkImage({
    Key? key,
    required this.url,
  }) : super(key: key);
  final String url;
  @override
  Widget build(BuildContext context) {
    return Image.network(
      url,
      fit: BoxFit.cover,
      loadingBuilder: (BuildContext context, Widget child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return SkeletonAvatar(
          style: SkeletonAvatarStyle(),
        );
      },
    );
  }
}
