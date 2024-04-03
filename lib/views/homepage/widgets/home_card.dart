
import 'package:flutter/material.dart';
import 'package:task7/models/home_card_model.dart';

class HomeCard extends StatelessWidget {
  const HomeCard({
    super.key, required this.model,
  });
  final HomeCardModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Image.asset(model.image),
      Text(model.title,style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 13,
                  fontWeight: FontWeight.w500))
    ],);
  }
}
