import 'package:flutter/material.dart';

class AporofobiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.017;
    } else {
      fontsize = sizeh * 0.022;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: null,
      ),
      body: SafeArea(
        child: Container(
          width: sizew,
          height: sizeh,
          child: Column(
            children: <Widget>[
              Container(
                color: Colors.white,
                height: sizeh / 2 - sizeh * 0.111,
                width: sizew,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      child: Container(
                        color: Colors.black,
                        height: sizeh / 2 - 2 * sizeh * 0.111,
                        width: sizew,
                        child: Stack(
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  RaisedButton(
                                    onPressed: () {},
                                    color: Colors.white,
                                    child: Container(
                                      width: sizew * 0.7,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'Alguma coisa',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: sizew * 0.05,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  RaisedButton(
                                    onPressed: () {},
                                    child: Container(
                                      width: sizew * 0.7,
                                      height: 40,
                                      child: Center(
                                        child: Text(
                                          'Outro Botão',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: sizew * 0.05,
                                              fontWeight: FontWeight.w300),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: CircleAvatar(
                        radius: sizeh * 0.111,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: sizeh * 0.111 - 1,
                          backgroundColor: Colors.white,
                          backgroundImage:
                              AssetImage('assets/aporofobia/aporofobia.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: sizew * 0.9,
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Aporofobia',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          'Aporofobia, do grego άπορος (á-poros), sem recursos, indigente, pobre; e φόβος (fobos), medo; refere-se ao medo, rejeição, hostilidade e aversão às pessoas pobres e à pobreza.\nO conceito aporofobia foi proposto nos anos 1990 pela filósofa Adela Cortina, professora catedrática de Ética e Filosofia Política da Universidade de Valência, para diferenciar essa atitude da xenofobia, que só se refere à rejeição ao estrangeiro, e do racismo, que é a discriminação por grupos étnicos.\nA diferença entre aporofobia e xenofobia ou racismo é que socialmente não se discrimina nem marginaliza as pessoas imigrantes ou a membros de outras etnias quando estas pessoas têm recursos econômicos ou relevância social e mediática. ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: fontsize),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
