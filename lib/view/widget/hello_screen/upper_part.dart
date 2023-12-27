import 'package:flutter/material.dart';

class UpperPart extends StatelessWidget {
  const UpperPart({
    super.key, required this.imagePath,
  });
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 0, 86, 236),
          child: Image.asset(
            imagePath,
            height: MediaQuery.of(context).size.height * 0.3,
          )),
    );
  }
}