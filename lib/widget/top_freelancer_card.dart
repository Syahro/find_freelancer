import 'package:find_freelancer/theme.dart';
import 'package:flutter/material.dart';

class TopFreelancerCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String jobTitle;
  final String rating;
  final String location;
  final String price;

  TopFreelancerCard({
    this.imageUrl,
    this.name,
    this.jobTitle,
    this.rating,
    this.location,
    this.price,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: defaultMargin),
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 33),
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: backgroundColor2,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(
                      imageUrl,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: titleTextStyle.copyWith(
                        fontSize: 17, color: blackColor),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    jobTitle,
                    style: subTitleTextStyle.copyWith(
                      fontSize: 14,
                      color: blackColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 15,
                        color: Colors.amber,
                      ),
                      Text(
                        rating,
                        style: subTitleTextStyle.copyWith(fontSize: 13),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on,
                        size: 12,
                        color: blackColor.withOpacity(0.4),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        location,
                        style: subTitleTextStyle.copyWith(
                          fontSize: 13,
                          color: blackColor.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 22,
                        width: 80,
                        decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Text(
                            'HIRE ME',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 12,
                              color: whiteColor,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Container(
                        height: 22,
                        width: 80,
                        decoration: BoxDecoration(
                          color: backgroundColor1,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: backgroundColor,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'PROFILE',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 12,
                              color: backgroundColor,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                bottom: 13,
              ),
              child: Text.rich(
                TextSpan(
                  text: '\$$price',
                  style: titleTextStyle.copyWith(fontSize: 14),
                  children: [
                    TextSpan(
                      text: '/hr',
                      style: subTitleTextStyle.copyWith(
                        fontSize: 12,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
