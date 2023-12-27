import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
    required this.subjectName,
  });

  final String subjectName;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.secondaryBlue,
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        onTap: () {
          Get.toNamed("/CategoryPage", arguments: subjectName,);
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
              child: Text(
            subjectName,
            textAlign: TextAlign.center,
            style:  TextStyle(
                color: AppColors.black, 
                fontSize: 15.sp,
                fontWeight: FontWeight.w400),
          )),
        ),
      ),
    );
  }
}
