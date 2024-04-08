import 'package:flutter/material.dart';
import 'package:font_awesome_icon_class/font_awesome_icon_class.dart';
import 'package:task7/models/product_model.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({
    super.key,
    required this.model,
  });
  final ProductModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.hardEdge,
      decoration:  BoxDecoration(color: Colors.white,border: Border(bottom: BorderSide(color: Colors.grey.withOpacity(0.3),width: 0.4))),
      child: Row(
        children: [
          Expanded(
              child: Image.network(
            model.image!,
            fit: BoxFit.contain,
          )),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width / 2,
                child: Text(
                  model.title,
                  style: const TextStyle(
                    overflow: TextOverflow.clip,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const Text(
                        r"200$",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Color(0xFF37474F),
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${model.price}\$",
                        style: const TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFF37A20)),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 16),
                    decoration: BoxDecoration(
                        color: const Color(0xFF5EC401),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          FontAwesomeIcons.bagShopping,
                          color: Colors.white,
                          size: 20,
                        ),
                        const Text('  '),
                        GestureDetector(
                          child: const Text(
                            'Add',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              
            ]
          ),
        ],
      ),
    );
  }
}
