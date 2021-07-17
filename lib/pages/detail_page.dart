import 'package:find_freelancer/theme.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              color: backgroundColor2,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  'assets/illustration_cover2.png',
                  height: 150,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 24,
                      right: defaultMargin,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 114,
                          height: 130,
                          decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage('assets/person2.png'),
                              alignment: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Stephan Lee',
                              style: titleTextStyle.copyWith(
                                fontSize: 25,
                                color: backgroundColor,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'UI / UX Designer',
                              style: subTitleTextStyle.copyWith(
                                fontSize: 15,
                                color: backgroundColor.withOpacity(0.5),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 15,
                                  color: blackColor.withOpacity(0.6),
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  'Jakarta',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 13,
                                    color: blackColor.withOpacity(0.6),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 32,
                              width: 100,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Center(
                                child: Text(
                                  'HIRE ME',
                                  style: subTitleTextStyle.copyWith(
                                    fontSize: 15,
                                    color: whiteColor,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            ListView(
              children: [
                SizedBox(
                  height: 270,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor1,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: defaultMargin,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 32),
                          child: Text(
                            'Overview',
                            style: titleTextStyle.copyWith(
                              fontSize: 20,
                              color: blackColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: defaultMargin,
                          ),
                          child: Text(
                            'From humble startups to software used by billions, I’ve had a blast designing things that people love. At Google, I\'m proudly building the future of Chrome alongside some of the industry\'s greatest innovators.',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 15,
                              color: blackColor.withOpacity(0.6),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          'Skills',
                          style: titleTextStyle.copyWith(
                            fontSize: 20,
                            color: blackColor,
                          ),
                        ),
                        SizedBox(
                          height: 11,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            right: defaultMargin,
                          ),
                          child: Text(
                            'UX Design, UI Design, IoT Design, Micro-interaction Design, 3D Illustration',
                            style: subTitleTextStyle.copyWith(
                              fontSize: 15,
                              color: blackColor.withOpacity(0.6),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Container(
                                height: 35,
                                width: 119,
                                decoration: BoxDecoration(
                                  color: backgroundColor2,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Portofolio',
                                    style: titleTextStyle.copyWith(
                                      fontSize: 15,
                                      color: backgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 35,
                                width: 97,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: backgroundColor2,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Clients',
                                    style: titleTextStyle.copyWith(
                                      fontSize: 15,
                                      color: backgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                height: 35,
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: backgroundColor2,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Review',
                                    style: titleTextStyle.copyWith(
                                      fontSize: 15,
                                      color: backgroundColor,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: defaultMargin,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 238,
                          width: MediaQuery.of(context).size.width -
                              (2 * defaultMargin),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              'assets/design_porto1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: defaultMargin,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: defaultMargin, top: 42),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: backgroundColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
