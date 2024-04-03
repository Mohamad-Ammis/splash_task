
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task7/controller/home_page_controller.dart';
import 'package:task7/views/homepage/widgets/home_card.dart';

class HomeProductsList extends StatelessWidget {
  HomeProductsList({
    super.key,
  });
  final controller=Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 18),
      child: GridView.builder(
        itemCount: controller.homeProducts.length,
          gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)),
                  child: HomeCard(model: controller.homeProducts[index],),
            );
          }),
    );
  }
}
