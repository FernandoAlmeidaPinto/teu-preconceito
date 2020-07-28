import 'package:flutter/material.dart';
import 'package:teupreconceito/pages/Machism/termMachism.dart';

class MachismPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizew = (MediaQuery.of(context).size.width);
    double sizeh = (MediaQuery.of(context).size.height);
    var fontsize;

    if (sizeh < 600) {
      fontsize = sizeh * 0.02;
    } else {
      fontsize = sizeh * 0.025;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(249, 86, 86, 1),
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
              height: sizeh / 2 - sizeh * 0.111 + 30,
              width: sizew,
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                      color: Color.fromRGBO(249, 86, 86, 1),
                      height: sizeh / 2 - 2 * sizeh * 0.111 + 30,
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
                                                MachismTerm()));
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
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: sizeh * 0.111 - 1,
                        backgroundColor: Color.fromRGBO(249, 86, 86, 1),
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
                        'Machismo',
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        'Machismo é a sensação de ser viril e autossuficiente, o conceito associado a "um forte senso de orgulho masculino: uma masculinidade exagerada". Está associado à "responsabilidade de um homem de prover, proteger e defender sua família". Em um termo mais amplo, o machismo, por ser um conceito filosófico e social que crê na inferioridade da mulher, é a ideia de que o homem, em uma relação, é o líder superior, na qual protege e é a autoridade em uma família.',
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
