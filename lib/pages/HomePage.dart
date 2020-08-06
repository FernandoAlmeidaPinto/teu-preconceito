import 'package:flutter/material.dart';
import '../components/Button.dart';

import 'package:teupreconceito/pages/Homophobia/Homophobia.dart';
import 'package:teupreconceito/pages/Machism/Machim.dart';
import 'package:teupreconceito/pages/sexism/Sexism.dart';
import 'package:teupreconceito/pages/Xenophobia/Xenophobia.dart';
import 'package:teupreconceito/pages/Transfobia/Trans.dart';
import 'package:teupreconceito/pages/Misoginia/Misoginia.dart';
import 'package:teupreconceito/pages/Aporofobia/Aporofobia.dart';
import './Racism/Racism.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizewidth = MediaQuery.of(context).size.width;
    double sizeheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(35, 31, 32, 1),
        elevation: 0,
        leading: null,
      ),
      body: SafeArea(
        child: Container(
          width: sizewidth,
          height: sizeheight,
          color: Color.fromRGBO(35, 31, 32, 1),
          child: Column(
            children: <Widget>[
              Container(
                  height: sizeheight * 0.15,
                  width: sizewidth,
                  child: Text('Teu\nPreConceito',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: sizewidth * 0.07,
                      ))),
              Image(
                image: AssetImage('assets/splash/barra.png'),
                width: sizewidth * 0.8,
              ),
              Container(
                height: sizeheight * 0.05,
              ),
              Container(
                width: sizewidth * 0.9,
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Buttom(
                          'Racismo',
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => RacismPage(),
                            ));
                          },
                          Colors.red,
                        ),
                        Buttom(
                          'Homofobia',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Homophobia(),
                              ),
                            );
                          },
                          Colors.purple
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Buttom(
                          'Machismo',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MachismPage(),
                              ),
                            );
                          },
                          Colors.yellow
                        ),
                        Buttom(
                          'Sexismo',
                          () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SexismPage()));
                          },
                          Colors.blue
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Buttom(
                          'Xenofobia',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => XenophobiaPage(),
                              ),
                            );
                          },
                          Colors.orange
                        ),
                        Buttom(
                          'Transfobia',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => TransPage(),
                              ),
                            );
                          },
                          Colors.green
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Buttom(
                          'Misoginia',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MisoginiaPage(),
                              ),
                            );
                          },
                          Colors.cyan
                        ),
                        Buttom(
                          'Aporofobia',
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => AporofobiaPage(),
                              ),
                            );
                          },
                          Colors.amber
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
