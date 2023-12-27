import 'package:flutter/material.dart';

class BookDescription extends StatelessWidget {
  const BookDescription({
    super.key,
    required this.description,
  });
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15,right: 15, top: 10, bottom: 70),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(255, 219, 219, 219)),
        child: Text(
          description,
          style: const TextStyle(
              wordSpacing: 1, fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
    );
  }
}
