import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.network(
      (MediaQuery.of(context).platformBrightness == Brightness.dark)
          ? 'https://i.postimg.cc/4NMSPwZr/S-Dark.png'
          : 'https://i.postimg.cc/ryfb0MHy/S-Light.png',
      height: 100.0,
    );
  }
}
