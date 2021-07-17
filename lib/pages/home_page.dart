import 'package:find_freelancer/theme.dart';
import 'package:find_freelancer/widget/most_populer_card.dart';
import 'package:find_freelancer/widget/top_freelancer_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 340,
            color: backgroundColor,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Opacity(
                    opacity: 0.1,
                    child: Image.asset(
                      'assets/illustration_cover.png',
                      height: 120,
                      width: 120,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/person_cover.png',
                    width: 170,
                    height: 220,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: defaultMargin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 42,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 42,
                      width: 270,
                      decoration: BoxDecoration(
                        color: redDarkLight,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.search,
                              color: whiteColor.withOpacity(0.3),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Search Freelancers, Project',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 14,
                                color: whiteColor.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: redDarkLight,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Image.asset(
                          'assets/filter.png',
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 46,
                ),
                Text(
                  'Cari\nFreelancer',
                  style: titleTextStyle.copyWith(
                    fontSize: 36,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Selesaikan pekerjaan\ndengan talenta\nterbaik di bidangnya',
                  style: subTitleTextStyle.copyWith(
                    fontSize: 14,
                    color: whiteColor.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          ListView(
            children: [
              SizedBox(
                height: 300,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgroundColor1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: defaultMargin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 24, defaultMargin, 24),
                        child: Text(
                          'Paling Banyak Dicari',
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MostPopulerCard(
                              imageUrl: 'assets/job1.png',
                              jobTitle: 'Programmer',
                              total: '256 Programmer',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MostPopulerCard(
                              imageUrl: 'assets/job2.png',
                              jobTitle: 'UI/UX Designer',
                              total: '120 Designer',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            MostPopulerCard(
                              imageUrl: 'assets/job3.png',
                              jobTitle: 'Sosmed Admin',
                              total: '67 Admin',
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: defaultMargin),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Top Freelancer',
                              style: titleTextStyle.copyWith(
                                fontSize: 20,
                                color: blackColor,
                              ),
                            ),
                            Text(
                              'Lihat Semua',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 15,
                                color: backgroundColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TopFreelancerCard(
                        imageUrl: 'assets/person1.png',
                        name: 'Andrea Hutama Karya',
                        jobTitle: 'Programmer',
                        rating: '4.9',
                        location: 'Bandung',
                        price: '55',
                      ),
                      Divider(),
                      TopFreelancerCard(
                        imageUrl: 'assets/person2.png',
                        name: 'Stephan Lee',
                        jobTitle: 'UI/UX Designer',
                        rating: '4.5',
                        location: 'Jakarta',
                        price: '51',
                      ),
                      Divider(),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
