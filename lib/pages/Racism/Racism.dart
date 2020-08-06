import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Racism/racismTerm.dart';

class RacismPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.018;
    } else {
      fontsize = sizeh * 0.023;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
              height: sizeh / 2 - sizeh * 0.111 + 60,
              width: sizew,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                      color: Colors.black,
                      height: sizeh / 2 - 2 * sizeh * 0.111 + 60,
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
                                  onPressed: () {
                                    BotToast.showSimpleNotification(
                                        title: 'Função não ativada', );
                                  },
                                  child: Container(
                                    width: sizew * 0.7,
                                    height: 40,
                                    child: Center(
                                      child: Text(
                                        'Código Penal',
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
                                  onPressed: () {
                                    BotToast.showSimpleNotification(
                                        title: 'Função não ativada', );
                                  },
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
                        child: Image(
                          image: AssetImage(
                            'assets/racism/livesblackmatter.png',
                          ),
                        ),
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
                        'Racismo',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Racismo consiste no preconceito e na discriminação com base em percepções sociais baseadas em diferenças biológicas entre os povos. Muitas vezes toma a forma de ações sociais, práticas ou crenças, ou sistemas políticos que consideram que diferentes raças devem ser classificadas como inerentemente superiores ou inferiores com base em características, habilidades ou qualidades comuns herdadas.  Também pode afirmar que os membros de diferentes raças devem ser tratados de forma distinta.',
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
