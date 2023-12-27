import 'package:books_gallery/core/network/api%20handling/api_provider.dart';
import 'package:books_gallery/model/remote/book_details_model.dart';
import 'package:get/get.dart';

class BookDetailsController extends GetxController {
  final _apiProvider = ApiProvider();
  BookDetailsModel? bookDetailsModel;
  RxString bodyStatus = "done".obs;

  Future<dynamic> showBooksDetails(String bookSelfLink) async {
    print('start');
    bodyStatus.value = 'loading';
    update();
    print("====================$bodyStatus============================");
    final response = await _apiProvider.gets<Map<String, dynamic>, BookDetailsModel>(
      bookSelfLink,
      // query: {},
      headers: {
        "key": "AIzaSyB080mkLTZIX9dWLUkrGZwQ-STSp1ntukw",
      },
      makingTheFromJsonPossible: (theComingJson) {
        bookDetailsModel = BookDetailsModel.fromJson(theComingJson);
        return bookDetailsModel!;
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

  @override
  void onInit() {
    print("=========================${Get.arguments}");
    showBooksDetails(Get.arguments);
    super.onInit();
  }
}
