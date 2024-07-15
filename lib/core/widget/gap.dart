import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AppGap extends StatelessWidget {
  const AppGap(this.gap, {Key? key}) : super(key: key);

  const AppGap.card({Key? key, this.gap = 5}) : super(key: key);

  const AppGap.list({Key? key, this.gap = 10}) : super(key: key);

  final double gap;

  @override
  Widget build(BuildContext context) {
    return Gap(gap);
  }
}
