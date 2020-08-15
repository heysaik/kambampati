import 'package:flutter/material.dart';
import 'package:kambampati/constants.dart';
import 'package:kambampati/widgets/logo_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      theme: kLightTheme,
      darkTheme: kDarkTheme,
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 130.0,
        titleSpacing: 24.0,
        title: Column(
          children: [
            LogoWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FittedBox(
                  child: Text("HOME"),
                  fit: BoxFit.scaleDown,
                ),
                FittedBox(
                  child: Text("PROJECTS"),
                  fit: BoxFit.scaleDown,
                ),
                FittedBox(
                  child: Text("BLOG"),
                  fit: BoxFit.scaleDown,
                ),
                FittedBox(
                  child: Text("RESUME"),
                  fit: BoxFit.scaleDown,
                ),
                FittedBox(
                  child: Text("CONTACT"),
                  fit: BoxFit.scaleDown,
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage:
                      NetworkImage('https://i.postimg.cc/RZ3CNPVh/SaiToy.jpg'),
                  radius: MediaQuery.of(context).size.width * 0.1,
                ),
                SizedBox(
                  width: 50.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, I'm Sai!",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: 700,
                      child: Text(
                        "I'm a software engineer, app developer, and UI designer. I'm currently pursuring a double major in Computer Science and Cognitive Science from UCSC. You can catch up on what I've been up to by reading my blog, viewing my resume, or reading about my projects.",
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
