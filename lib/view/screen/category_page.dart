import 'package:books_gallery/controller/category_page_controller.dart';
import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:books_gallery/core/network/api%20handling/ChangeStateWidget.dart';
import 'package:books_gallery/view/widget/category_page/category_book_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    CategoryPageController controller = Get.put(CategoryPageController());
    return Scaffold(
      appBar: AppBar(
        title:  Text(controller.categoryName),
        centerTitle: true,
        backgroundColor: AppColors.primaryBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GetBuilder<CategoryPageController>(
            builder: (controller) {
              return 
              ChangeStateWidget(
                  state: controller.bodyStatus.string,
                
                  onSuccess: Expanded(
                    child: ListView.builder(
                      itemCount: controller.bookModelCategories == null
                          ? 0
                          : controller.bookModelCategories!.items!.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CategoryBookCard(
                          bookSelfLink: controller.bookModelCategories!.items![index].selfLink!,
                          controller: controller,
                          imageUrl: controller.bookModelCategories!.items![index]
                                      .volumeInfo!.imageLinks ==
                                  null
                              ? ""
                              : controller.bookModelCategories!.items![index]
                                  .volumeInfo!.imageLinks!.smallThumbnail!,
                          title: controller.bookModelCategories!.items![index]
                              .volumeInfo!.title!,
                          author: controller.bookModelCategories!.items![index]
                              .volumeInfo!.authors!,
                          description: controller.bookModelCategories!.items![index]
                                      .volumeInfo!.description ==
                                  null
                              ? ""
                              : controller.bookModelCategories!.items![index]
                                  .volumeInfo!.description!,
                        );
                      },
                    ),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
