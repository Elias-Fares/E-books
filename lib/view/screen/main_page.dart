import 'package:books_gallery/controller/main_page_controller.dart';
import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:books_gallery/core/network/api%20handling/ChangeStateWidget.dart';
import 'package:books_gallery/model/static/books_categories.dart';
import 'package:books_gallery/view/widget/main_page/book_card.dart';
import 'package:books_gallery/view/widget/main_page/categories_grid.dart';
import 'package:books_gallery/view/widget/main_page/main_page_upper_part.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/main_page/main_page_title.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MainPageController(),permanent: false);
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainPageUpperPart(
              logo: const Text(
                "E-BOOK" ,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.white,
                    letterSpacing: 2),
              ),
              title: "Hello ${controller.getUserName()} !"  ,
              subTitle: "It's time to read books and enhance your knowledge ",
              controller: controller,
              onPressed: () {
                controller.showCategories();
              }, 
            ),
            GetBuilder<MainPageController>(
              builder: (controller) {
                return controller.isCategoriesShown == true
                    ? const MainPageTitle(
                        title: "Categories",
                      )
                    : const MainPageTitle(
                        title: "Books",
                      );
              },
            ),

            GetBuilder<MainPageController>(
              builder: (controller) {
                return controller.isCategoriesShown == true 
                    ? CategoriesGrid(
                        subjects: bookSubjects,
                        controller: controller,
                      )
                    : ChangeStateWidget(
                        state: controller.bodyStatus.string,
                        onSuccess: Expanded(
                          child: ListView.builder(
                            itemCount: controller.bookModel == null
                                ? 0
                                : controller.bookModel!.items!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return BookCard(
                                controller: controller,
                                bookSelfLink: controller.bookModel!.items![index].selfLink!,
                                imageUrl: controller.bookModel!.items![index]
                                            .volumeInfo!.imageLinks ==
                                        null
                                    ? ""
                                    : controller
                                        .bookModel!
                                        .items![index]
                                        .volumeInfo!
                                        .imageLinks!
                                        .smallThumbnail!,
                                title: controller.bookModel!.items![index]
                                    .volumeInfo!.title!,
                                author: controller.bookModel!.items![index]
                                    .volumeInfo!.authors!,
                                description: controller.bookModel!.items![index]
                                            .volumeInfo!.description ==
                                        null
                                    ? ""
                                    : controller.bookModel!.items![index]
                                        .volumeInfo!.description!,
                              );
                            },
                          ),
                        ));
              },
            )
            // (controller.categoriesShown)
            //     ? CategoriesGrid(
            //         subjects: bookSubjects,
            //       )
            //     : SizedBox()
          ],
        ),
      ),
    );
  }
}
