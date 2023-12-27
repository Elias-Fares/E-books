import 'package:books_gallery/controller/category_page_controller.dart';
import 'package:flutter/material.dart';

class CategoryBookCard extends StatelessWidget {
  final String bookSelfLink;
  final String imageUrl;
  final String title;
  final String description;
  final List<String> author;
  final CategoryPageController controller;
  const CategoryBookCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.author,
    required this.controller,
    required this.description,
    required this.bookSelfLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: InkWell(
        onTap: () {
          controller.goToBookDetails(bookSelfLink);
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 197, 197, 197),
                  blurRadius: 10,
                  offset: Offset(0, 5),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 200,
                      width: 130,
                      child: Image.network(
                        imageUrl,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Center(
                            child: Text("No image"),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;

                          return SizedBox(
                              width: 100,
                              height: 100,
                              child: Image.asset("assets/images/loading.png"));
                        },
                      ),
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 20,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            author.join(", "),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.fade,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                    SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 70,
                        child: Text(
                          description,
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.fade,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 72, 72, 72)),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
