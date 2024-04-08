import 'package:get/get.dart';
import 'package:task7/views/homepage/widgets/home_page_body.dart';
import 'package:task7/views/search_page/serach_page.dart';

class NavigationController extends GetxController{
  int selectedIndex=0;
List screens=[
   HomePageBody(),
  SearchPage(),
   HomePageBody(),
  SearchPage(),
];
}