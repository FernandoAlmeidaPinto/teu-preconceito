import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Misoginia/MisoginiaTerm.dart';

class MisoginiaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.017;
    } else {
      fontsize = sizeh * 0.025;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
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
                      color: Colors.deepPurpleAccent,
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
                                                MisoginiaTerm()));
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
                        backgroundColor: Colors.deepPurpleAccent,
                        child: Image(
                          image: AssetImage(
                            'assets/machism/feminism.png',
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
                        'Misoginia',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Misoginia é o ódio, desprezo ou preconceito contra mulheres ou meninas. A misoginia pode se manifestar de várias maneiras, incluindo a exclusão social, a discriminação sexual, hostilidade, androcentrismo, o patriarcado, ideias de privilégio masculino, a depreciação das mulheres, violência contra as mulheres e objetificação sexual.[1][2] A misoginia pode ser encontrada ocasionalmente dentro de textos antigos relativos a várias mitologias. Além disso, vários filósofos e pensadores ocidentais influentes têm sido descritos como misóginos.',
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
