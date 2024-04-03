import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task7/controller/search_controller.dart';
import 'package:task7/views/search_page/search_bar.dart';
import 'package:task7/views/search_page/search_card.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final controller = Get.put(SearchPageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
      ),
      body: Column(
        children: [
          const CustomSearchBar(),
              GetBuilder<SearchPageController>(builder: (controller) {
                  return controller.visibleProducts.isNotEmpty? Expanded(
                    child: ListView.builder(
                        itemCount: controller.visibleProducts.length,
                        itemBuilder: (context, index) {
                          return SearchCard(
                              model: controller.visibleProducts[index]);
                        }),
                  ):Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/empty_search.png'),
                        const Text('Opps! We can’t find your product! ',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
                      ],
                                      ),
                    ),
                  );
                })

        ],
      ),
    );
  }
}
