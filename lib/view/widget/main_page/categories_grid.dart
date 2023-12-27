import 'package:books_gallery/controller/main_page_controller.dart';
import 'package:books_gallery/view/widget/main_page/categories_card.dart';
import 'package:flutter/material.dart';

class CategoriesGrid extends StatelessWidget {
  const CategoriesGrid({
    super.key,
    required this.subjects, required this.controller,
  });
  final List<String> subjects;
  final MainPageController controller;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width * 0.4,
              childAspectRatio: 1.1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
          itemCount: subjects.length,
          itemBuilder: (context, index) => CategoriesCard(
            subjectName: subjects[index],
          ),
        ),
      ),
    );
  }
}
