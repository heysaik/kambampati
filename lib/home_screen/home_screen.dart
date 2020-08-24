import 'package:kambampati/components/footer_widget.dart';
import 'package:flutter/material.dart';
import 'home_detail_card.dart';
import 'home_hero_widget.dart';
import 'home_menu_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
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
              HomeHeroWidget(),
              SizedBox(height: 80),
              HomeMenuBar(),
              SizedBox(height: 50.0),
              HomeDetailCard(),
              SizedBox(height: 100),
              FooterWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
