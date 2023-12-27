import 'package:books_gallery/core/network/api%20handling/api_provider.dart';
import 'package:books_gallery/model/remote/book_model.dart';
import 'package:get/get.dart';

class CategoryPageController extends GetxController {
  late final String categoryName;
  String pageUrl = "https://www.googleapis.com/books/v1/volumes";
  final _apiProvider = ApiProvider();
  BookModel? bookModelCategories;
  RxString bodyStatus = "done".obs;

  Future<dynamic> booksInCategory(String category) async {
    print('start');
    bodyStatus.value = 'loading';
    update();
    print("====================$bodyStatus============================");
    final response = await _apiProvider.gets<Map<String, dynamic>, BookModel>(
      pageUrl,
      query: {
        "q": "insubject: $category",
      },
      headers: {"key": "AIzaSyB080mkLTZIX9dWLUkrGZwQ-STSp1ntukw",},
      makingTheFromJsonPossible: (theComingJson) {
        bookModelCategories = BookModel.fromJson(theComingJson);
        return bookModelCategories!;
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

  void goToBookDetails(String bookSelfLink) {
    Get.toNamed("/BookDetails", arguments: bookSelfLink);
  }

  @override
  void onInit() {
    categoryName = Get.arguments as String;
    booksInCategory(categoryName);
    super.onInit();
  }
}
