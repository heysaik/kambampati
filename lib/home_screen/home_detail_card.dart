import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:kambampati/constants.dart';

class HomeDetailCard extends StatefulWidget {
  @override
  _HomeDetailCardState createState() => _HomeDetailCardState();
}

class _HomeDetailCardState extends State<HomeDetailCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 644,
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(70.0)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
            ),
            child: Padding(
              padding: EdgeInsets.all(50.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: kPurpleColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(43),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Image.asset(
                                'illustrations/illustration-01.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                            Text(
                              "About Me",
                              style: kHeadline2TextStyle.copyWith(
                                  color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 30.0),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text(
                          "I began coding at the age of 12 with HTML/CSS and Python. In 2015, I took a deep plunge into the depths of iOS app development with many of my apps making the top charts and even getting featured by Apple. Along the way, I learned a lot about UI design and even branched out towards Android development.\n\nNowadays, I’m focused on software development, machine learning, and its intersection with the human brain. I love to answer questions and meet new people so do feel free to visit any of the following links! You can also explore the rest of this website by checking out my side projects, personal blog, or technical tutorials.",
                          style:
                              kBodyMainTextStyle.copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
