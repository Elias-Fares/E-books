import 'package:books_gallery/controller/hello_screen_controller.dart';
import 'package:books_gallery/view/widget/hello_screen/go_to_categories.dart';
import 'package:books_gallery/view/widget/hello_screen/upper_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HelloScreen extends StatelessWidget {
  const HelloScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HelloScreenController());
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const UpperPart(
              imagePath: 'assets/images/book.png',
            ),
            const Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "E-Book Store",
                    style:
                        TextStyle(fontSize: 24.h, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Here you can find the best books and buying them, or reading them as PDF",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 17.h, fontWeight: FontWeight.w500),
                    ),
                  ),
                   GoToCategories(
                    onPressed: () {
                      controller.goToCategories();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
