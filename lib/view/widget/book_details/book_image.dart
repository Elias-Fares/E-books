import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key, required this.imageUrl,
  });
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
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
                  height: MediaQuery.of(context).size.height * 0.4,
                  // width: double.infinity,
                  child: Image.asset("assets/images/loading.png"));
            },
          ),
        ));
  }
}
