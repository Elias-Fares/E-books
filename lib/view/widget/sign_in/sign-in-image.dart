import 'package:flutter/material.dart';
class SigninImage extends StatelessWidget {
  const SigninImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset('assets/images/book.png')),
      ),
    );
  }
}
