import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task7/views/homepage/widgets/home_products_lit.dart';
import 'package:task7/views/search_page/serach_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Grocery Plus",
          style: TextStyle(
              fontFamily: 'Poppins', fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(onPressed: () {Get.to(SearchPage());}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xFF87DD39),
              child: Icon(Icons.location_on,color: Colors.white,),
            ),
            title: Text(
              'Your Location',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 11,
                  fontWeight: FontWeight.normal),
            ),
            subtitle: Text(
              '32 Llanberis Close, Tonteg, CF38 1HR',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Expanded(
            child: HomeProductsList(),
          )
        ],
      ),
    );
  }
}
