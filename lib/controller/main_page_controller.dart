import 'package:books_gallery/core/network/api%20handling/api_provider.dart';
import 'package:books_gallery/model/remote/book_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainPageController extends GetxController {
  bool categoriesShown = false;
  bool isCategoriesShown = true;
  int currentPage = 1;
  var user;

  void Function()? showCategories() {
    isCategoriesShown = true;
    searchSentence.clear();
    update();
    return null;
  }

  late TextEditingController searchSentence;
  String pageUrl = "https://www.googleapis.com/books/v1/volumes";
  final _apiProvider = ApiProvider();
  RxString bodyStatus = "done".obs;
  BookModel? bookModel;

  Future<dynamic> searchInBooks() async {
    isCategoriesShown = false;
    print('start');
    bodyStatus.value = 'loading';
    update();
    print("====================$bodyStatus============================");
    final response = await _apiProvider.gets<Map<String, dynamic>, BookModel>(
      pageUrl,
      query: {"q": searchSentence.value.text},
      headers: {"key": "AIzaSyB080mkLTZIX9dWLUkrGZwQ-STSp1ntukw"},
      makingTheFromJsonPossible: (theComingJson) {
        bookModel = BookModel.fromJson(theComingJson);
        return bookModel!;
      },
    );
    handleRespose(response);
    print("====================$bodyStatus============================");
    update();
  }

  handleRespose(response) {
    if (response == 'error') {
      bodyStatus.value = 'error';
    } else {
      bodyStatus.value = 'done';
      return response;
    }
    return response;
  }

  Future<void> signOut() async {
    // ignore: avoid_print
    print(user[0].runtimeType);
    if (user[1] is FirebaseAuth) {
      await user[1].signOut();
      Get.toNamed('/');
    }
    if (user[0] is GoogleSignInAccount) {
      await user[1].disconnect();
      Get.toNamed('/');
    }
  }

  void goToBookDetails(String bookSelfLink) {
    Get.toNamed("/BookDetails", arguments: bookSelfLink);
  }

  String getUserName() {
    if (user[1] is GoogleSignIn) {
      return user[0].displayName;
    }
    return "";
  }

  @override
  void onInit() {
    searchSentence = TextEditingController();
    user = Get.arguments;
    print(user);
    print("=================================" + user[0].runtimeType.toString());
    print(user[1].runtimeType);
    super.onInit();
  }
}
