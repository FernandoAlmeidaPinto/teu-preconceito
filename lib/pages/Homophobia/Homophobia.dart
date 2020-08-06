import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Homophobia/termHomophobia.dart';

class Homophobia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.019;
    } else {
      fontsize = sizeh * 0.022;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
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
                      height:  sizeh / 2 - 2 * sizeh * 0.111 + 80,
                      width: sizew,
                      child: Column(
                        children: <Widget>[
                          Container(
                            color: Colors.orange,
                            height: sizeh / 13,
                          ),
                          Container(
                            color: Colors.yellow,
                            height: sizeh / 13,
                          ),
                          Container(
                            color: Colors.green,
                            height: sizeh / 13,
                          ),
                          Container(
                            color: Colors.blue,
                            height: sizeh / 13,
                          ),
                          Container(
                            color: Colors.purple,
                            height: sizeh / 13,
                          ),
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
                            'assets/homophobia/LGBT.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomophobiaTerm()));
                      },
                      color: Colors.white,
                      child: Container(
                        width: sizew * 0.7,
                        height: 40,
                        child: Center(
                          child: Text(
                            'Termos',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: sizew * 0.05,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: RaisedButton(
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
                  ),
                  Positioned(
                    top: 100,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.white,
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
                        'Homofobia',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Homofobia é uma série de atitudes e sentimentos negativos em relação a pessoas homossexuais, bissexuais e, em alguns casos, contra transgêneros e pessoas intersexuais. As definições para o termo referem-se variavelmente a antipatia, desprezo, preconceito, aversão e medo irracional. A homofobia é observada como um comportamento crítico e hostil, assim como a discriminação e a violência com base na percepção de que todo tipo de orientação sexual não-heterossexual é negativa.',
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
