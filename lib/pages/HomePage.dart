import 'package:flutter/material.dart';
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
                child: Text(
                  'Teu\nPreConceito',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizewidth * 0.07,
                  ),
                ),
              ),
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
                        SizedBox(
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => RacismPage(),
                                ),
                              );
                            },
                            color: Colors.red,
                            child: Text(
                              'Racismo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: sizewidth * 0.05,
                                  fontWeight: FontWeight.w300),
                            ),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Homophobia(),
                              ),
                            );
                          },
                          color: Colors.purple,
                          child: Text(
                            'Homofobia',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: sizewidth * 0.05,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MachismPage(),
                              ),
                            );
                          },
                          color: Colors.orange,
                          child: Text(
                            'Machismo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SexismPage()));
                          },
                          color: Colors.blue,
                          child: Text(
                            'Sexismo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => XenophobiaPage()));
                          },
                          color: Colors.yellow,
                          child: Text(
                            'Xenofobia',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TransPage()));
                          },
                          color: Colors.green,
                          child: Text(
                            'Transfobia',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MisoginiaPage()));
                          },
                          color: Colors.green,
                          child: Text(
                            'Misognia',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        RaisedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AporofobiaPage()));
                          },
                          color: Colors.yellow,
                          child: Text(
                            'Aporofobia',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: sizewidth * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
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
