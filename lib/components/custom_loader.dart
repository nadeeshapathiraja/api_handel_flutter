import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../utils/app_colors.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SpinKitFadingCircle(
      color: kGrey,
      size: 40,
    );
  }
}
