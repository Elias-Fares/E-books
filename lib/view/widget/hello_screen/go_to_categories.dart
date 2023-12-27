import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoToCategories extends StatelessWidget {
  const GoToCategories({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 0, 86, 236),
            minimumSize: const Size(120, 50)),
        child: Text(
          "Let's Start!",
          style: TextStyle(color: Colors.white, fontSize: 15.h),
        ));
  }
}
