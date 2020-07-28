import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Racism/racismTerm.dart';

class TransPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.02;
    } else {
      fontsize = sizeh * 0.028;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
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
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.green, Colors.white],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter
                        ),
                      ),
                      height: sizeh / 2 - 2 * sizeh * 0.111,
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
                                                RacismTerm()));
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
                                        'Nomes Importantes',
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
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        radius: sizeh * 0.111 - 1,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/trans/trans.png'),
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
                        'Transfobia',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Transfobia é uma forma de preconceito contra pessoas transexuais que pode se traduzir em atos de violência física, moral ou psicológica. A transfobia é uma forma de aversão às pessoas trans e se manifesta em diferentes ações de preconceitos, sejam explícitos ou velados.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: fontsize,
                            fontWeight: FontWeight.w300),
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
