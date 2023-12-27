import 'package:get/get.dart';

class HelloScreenController extends GetxController{
  void Function()? goToCategories(){
     Get.toNamed("/SignIn");
     return null;
  } 
}