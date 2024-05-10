import 'package:flutter/material.dart';

class PointerIndicator extends StatelessWidget {
  final int index;
  const PointerIndicator({super.key,required this.index});

  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: index == 0 ? Colors.red :Colors.white30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: index == 1 ? Colors.red :Colors.white30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: index == 2 ? Colors.red :Colors.white30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
            height: 8,
            width: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: index == 3 ? Colors.red :Colors.white30,
            ),
          ),
        ),
      ],
    );
  }
}
