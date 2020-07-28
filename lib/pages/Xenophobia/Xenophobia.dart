import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Xenophobia/termXenophobia.dart';


class XenophobiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.018;
    } else {
      fontsize = sizeh * 0.024;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 0,
        leading: null,
      ),
      body: Container(
        width: sizew,
        height: sizeh,
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              height: sizeh / 2 - sizeh * 0.111 + 40,
              width: sizew,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                      color: Colors.yellow,
                      height: sizeh / 2 - 2 * sizeh * 0.111 + 40,
                      width: sizew,
                      child: Stack(
                        children: <Widget>[
                          Center(
                            child: Column(
                              children: <Widget>[
                                RaisedButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                XenophobiaTerm()));
                                  },
                                  color: Colors.white,
                                  child: Container(
                                    width: sizew * 0.7,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        'Termos e Expressões',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: sizew * 0.05,
                                          fontWeight: FontWeight.w300
                                        ),
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
                                        'Nomes Importantes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: sizew * 0.05,
                                          fontWeight: FontWeight.w300
                                        ),
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
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: sizeh * 0.111 - 1,
                        backgroundImage: AssetImage('assets/xenophobia/xenophobia.png'),
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
                        'Xenofobia',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Xenofobia é o medo, aversão ou a profunda antipatia em relação aos estrangeiros, a desconfiança em relação a pessoas que vêm de fora do seu país com uma cultura, hábito, raça ou religião diferente. A xenofobia compartilha diversas características com o racismo podendo-se manifestar de várias formas, envolvendo as relações e percepções do endogrupo em relação ao exogrupo, incluindo o medo de perda de identidade, suspeição acerca de suas atividades, agressão e desejo de eliminar a sua presença para assegurar uma suposta pureza. ',
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
    );
  }
}
