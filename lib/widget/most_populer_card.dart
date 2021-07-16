import 'dart:developer';

import 'package:find_freelancer/theme.dart';
import 'package:flutter/material.dart';

class MostPopulerCard extends StatelessWidget {
  final String imageUrl;
  final String jobTitle;
  final String total;

  MostPopulerCard({
    this.imageUrl,
    this.jobTitle,
    this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 107,
          width: 146,
          decoration: BoxDecoration(
            color: backgroundColor2,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          jobTitle,
          style: titleTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          total,
          style: subTitleTextStyle.copyWith(
            fontSize: 11,
            color: blackColor.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}
