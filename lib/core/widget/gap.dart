import 'package:flutter/material.dart';

class Gap extends StatelessWidget {
  const Gap(this.gap, {Key? key}) : super(key: key);

  const Gap.card({Key? key, this.gap = 5}) : super(key: key);

  const Gap.list({Key? key, this.gap = 10}) : super(key: key);

  final double gap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gap,
      width: gap,
    );
  }
}
