import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/sexism/termSexism.dart';

class SexismPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.02;
    } else {
      fontsize = sizeh * 0.026;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
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
              height: sizeh / 2 - sizeh * 0.111,
              width: sizew,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                        colors: [Colors.pink, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter
                      )),
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
                                                SexismTerm()));
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
                        child: Image(
                          width: 100,
                          image: AssetImage(
                            'assets/sexism/sexismo2.png',
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
                        'Sexismo',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Sexismo ou discriminação de gênero é o preconceito ou discriminação baseada no gênero ou sexo de uma pessoa. O sexismo pode afetar qualquer gênero, mas é particularmente documentado como afetando mulheres e meninas. Tem sido ligado a estereótipos e papéis de gênero e pode incluir a crença de que um sexo ou gênero é intrinsecamente superior a outro. O sexismo extremo pode fomentar o assédio sexual, estupro e outras formas de violência sexual.',
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
