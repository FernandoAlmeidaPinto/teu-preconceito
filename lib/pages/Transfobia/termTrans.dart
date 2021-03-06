import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TransTerm extends StatefulWidget {
  @override
  _TransTerm createState() => _TransTerm();
}

class _TransTerm extends State<TransTerm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Termos Transfóbico'),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        color: Colors.black,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: StreamBuilder(
          stream: Firestore.instance.collection('Transphobia').snapshots(),
          // ignore: missing_return
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                LinearProgressIndicator();
                break;
              default:
                return Center(
                  child: ListView(
                      padding: EdgeInsets.only(
                        top: 8.0,
                        bottom: 8.0,
                        left: 30,
                        right: 30,
                      ),
                      children: snapshot.data.documents
                          .map<Widget>((DocumentSnapshot doc) {
                        return Container(
                          padding: EdgeInsets.all(8.0),
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              BotToast.showSimpleNotification(
                                  title: doc.data['Termo'],
                                  subTitle: doc.data['significado'],
                                  duration: Duration(seconds: 15),);
                            },
                            child: Text(
                              doc.data['Termo'],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w300),
                            ),
                          ),
                        );
                      }).toList()),
                );
            }
          },
        ),
      ),
    );
  }
}
