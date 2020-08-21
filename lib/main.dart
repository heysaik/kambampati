import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kambampati/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              HeroWidget(),
              SizedBox(height: 80),
              MenuBar(),
              SizedBox(height: 50.0),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(40.0),
      ),
      child: BackdropFilter(
        child: Container(
          width: 627,
          height: 79,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            color: Colors.white.withOpacity(0.3),
          ),
          child: Row(
            children: [
              Spacer(),
              GNav(
                gap: 20,
                selectedIndex: selectedIndex,
                activeColor: Colors.white,
                color: kPrimaryBlueColor,
                iconSize: 40,
                curve: Curves.easeInOut,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                duration: Duration(milliseconds: 300),
                tabBackgroundColor: kPrimaryBlueColor,
                textStyle: kHeadline4TextStyle.copyWith(color: Colors.white),
                onTabChange: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'About Me',
                  ),
                  GButton(
                    icon: Icons.computer,
                    text: 'Projects',
                  ),
                  GButton(
                    icon: Icons.text_fields,
                    text: 'Blog',
                  ),
                  GButton(
                    icon: Icons.folder,
                    text: 'Work',
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 91,
      width: MediaQuery.of(context).size.width,
      child: ClipRRect(
        child: BackdropFilter(
          child: Container(
            color: Colors.black38,
            child: Row(
              children: [
                SizedBox(width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Spacer(),
                    Text(
                      "© 2021 SAI KAMBAMPATI",
                      style: kCaption2TextStyle.copyWith(color: Colors.white),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Built with ♥️ in Flutter",
                      style: kSmallText1TextStyle.copyWith(color: Colors.white),
                    ),
                    Spacer(),
                  ],
                )
              ],
            ),
          ),
          filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
        ),
      ),
    );
  }
}

class HeroWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hey! I'm Sai!",
              style: kHeadline1TextStyle.copyWith(color: kTextColorDark),
            ),
            SizedBox(height: 26.0),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.54,
              child: Text(
                "I'm a software engineer, app developer, and UI designer. I'm currently pursuing a major in Computer Science, Cognitive Science, and a minor in Technology and Information Management from the University of California, Santa Cruz.",
                style: kBodyIntroTextStyle.copyWith(color: kText2ColorDark),
              ),
            )
          ],
        ),
        SizedBox(width: 100),
        CircleAvatar(
          backgroundImage: AssetImage('images/profile.jpg'),
          radius: 175.0,
        ),
        Spacer(),
      ],
    );
  }
}
