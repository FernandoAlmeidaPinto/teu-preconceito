import 'dart:async';

import 'package:flutter/material.dart';

import 'HomePage.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}



const image = 'assets/icons/undraw_super_thank_you_obwk.svg';

class _SplashPageState extends State<SplashPage> {

  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 6),
        () => Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return HomePage();
            })));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromRGBO(35, 31, 32, 1),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: <Widget>[
              Positioned(
                right: 50,
                top: 50,
                child: Image(
                  image: AssetImage('assets/splash/feminism.png'),
                  width: 100,
                ),
              ),
              Positioned(
                top: 100,
                left: 50,
                child: Transform.rotate(
                  angle: 6,
                  child: Image(
                    image: AssetImage('assets/splash/Black.png'),
                    width: 100,
                  ),
                ),
              ),
              Positioned(
                top: 250,
                right: 70,
                child: Transform.rotate(
                  angle: 0.3,
                  child: Image(
                    image: AssetImage(
                        'assets/splash/rainbow-flag-lgbt-symbol-on-heart-vector.png'),
                    width: 150,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 2.7,
                child: Text(
                  'Teu\nPreConceito',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height / 2.7,
                child: Image(
                    image: AssetImage(
                        'assets/splash/barra.png'),
                        width: 300,
                  ),
                ),
                Positioned(
                bottom: 0,
                child: Image(
                    image: AssetImage(
                        'assets/splash/undraw_super_thank_you_obwk.png'),
                        width: 300,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
