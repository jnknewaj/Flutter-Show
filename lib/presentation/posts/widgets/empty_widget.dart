import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget();

  @override
  Widget build(BuildContext context) => const SizedBox(
        width: 0,
        height: 0,
      );
}
