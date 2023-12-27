import 'package:books_gallery/controller/book_details_controller.dart';
import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:books_gallery/core/network/api%20handling/ChangeStateWidget.dart';
import 'package:books_gallery/view/widget/book_details/book_description.dart';
import 'package:books_gallery/view/widget/book_details/book_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButton: InkWell(
      //   onTap: () {},
      //   child: Container(
      //     width: 250,
      //     height: 45,
      //     decoration: BoxDecoration(
      //         color: AppColors.primaryBlue,
      //         borderRadius: BorderRadius.circular(20)),
      //     child: const Center(
      //         child: Text(
      //       "Show in Google Books",
      //       style: TextStyle(
      //           color: AppColors.white,
      //           fontWeight: FontWeight.w500,
      //           fontSize: 16),
      //     )),
      //   ),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
          child: GetBuilder<BookDetailsController>(
              init: BookDetailsController(),
              builder: (controller) {
                return controller.bookDetailsModel == null
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : ChangeStateWidget(
                        state: controller.bodyStatus.value,
                        onSuccess: Column(
                          children: [
                            // ====================== Book's image ==========================//
                            BookImage(
                              imageUrl: controller.bookDetailsModel!.volumeInfo!
                                          .imageLinks ==
                                      null
                                  ? ""
                                  : controller.bookDetailsModel!.volumeInfo!
                                              .imageLinks!.large ==
                                          null
                                      ? controller.bookDetailsModel!.volumeInfo!
                                                  .imageLinks!.smallThumbnail ==
                                              null
                                          ? ""
                                          : controller
                                              .bookDetailsModel!
                                              .volumeInfo!
                                              .imageLinks!
                                              .smallThumbnail!
                                      : controller.bookDetailsModel!.volumeInfo!
                                          .imageLinks!.large!,
                            ),
                            //============================Details sections===========================
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //===================Books name=================================
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Text(
                                        controller.bookDetailsModel!.volumeInfo!
                                            .title!,
                                        style: const TextStyle(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    //===================Books authors=================================
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 10),
                                      child: Text(
                                        "Authors : ${controller.bookDetailsModel!.volumeInfo!.authors!.join(", ")}",
                                        style: const TextStyle(
                                            color: AppColors.fontBlue,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        //===================Books description word===========================
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 10),
                                          child: Text(
                                            "description:",
                                            style: TextStyle(
                                                color: AppColors.fontBlue,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ),
                                        //===================Books Vumber of pages============================
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15),
                                          child: Text(
                                            "Number of pages: ${controller.bookDetailsModel!.volumeInfo!.pageCount}",
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500),
                                          ),
                                        )
                                      ],
                                    ),
                                    //===================Book's description==============================
                                    BookDescription(
                                        description:
                                            "${controller.bookDetailsModel!.volumeInfo!.description}"),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ));
              })),
    );
  }
}
