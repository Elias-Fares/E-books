import 'package:books_gallery/view/screen/category_page.dart';
import 'package:books_gallery/view/screen/main_page.dart';
import 'package:books_gallery/view/screen/hello_screen.dart';
import 'package:books_gallery/view/screen/sign_in.dart';
import 'package:books_gallery/view/screen/book_details.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>>?  routes = [

   GetPage(name: "/", page: () => const HelloScreen()),
  GetPage(name: "/SignIn", page: () =>  const SignIn(),) ,
  GetPage(name: "/MainPage", page: () =>  const MainPage(),) ,
  GetPage(name: "/CategoryPage", page: () =>  const CategoryPage(),) ,
  GetPage(name: "/BookDetails", page: () =>  const BookDetails(),) ,

];