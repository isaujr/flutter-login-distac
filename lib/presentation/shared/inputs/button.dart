import 'package:flutter/material.dart';
import 'package:teste_flutter/constants/colors/AppColors.dart';

class Button extends StatelessWidget {
  final String title;
  final Color background;
  const Button({
    required this.title,
    required this.background,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 53,
      decoration: BoxDecoration(
        color: background,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
