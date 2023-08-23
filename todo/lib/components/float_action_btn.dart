import 'package:flutter/material.dart';

class FloatActionBtn extends StatelessWidget {
  const FloatActionBtn({super.key, required this.onPressed});

  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: onPressed,
        child: const Icon(
          Icons.add,
          color: Colors.white,
          ),
        );
  }
}