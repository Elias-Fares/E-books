import 'package:books_gallery/controller/main_page_controller.dart';
import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPageUpperPart extends StatelessWidget {
  const MainPageUpperPart({
    super.key,
    required this.logo,
    required this.title,
    required this.subTitle,
    required this.controller,
    this.onPressed,
  });
  final Widget logo;
  final String title;
  final String subTitle;
  final MainPageController controller;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: const BoxDecoration(
        color: AppColors.primaryBlue,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                logo,
                SizedBox(width: MediaQuery.of(context).size.width*0.5 - 60,),
                InkWell(
                  onTap: () {
                    controller.signOut();
                  },
                  child: const Icon(Icons.logout_rounded, color: AppColors.white,),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                    fontSize: 26.sp,
                    letterSpacing: 2),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                subTitle,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15.sp,
                  color: AppColors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
              child: TextField(
                controller: controller.searchSentence,
                decoration: InputDecoration(
                    fillColor: AppColors.white,
                    filled: true,
                    prefixIcon: IconButton(
                        onPressed: onPressed, icon: const Icon(Icons.close)),
                    // prefixIcon: Icon(Icons.book_outlined),
                    suffixIcon: IconButton(
                        onPressed: () {
                          print(controller.searchSentence.value.text);
                          controller.searchInBooks();
                        },
                        icon: const Icon(Icons.search_outlined)),
                    hintText: "Search Here",
                    hintStyle:
                        TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
