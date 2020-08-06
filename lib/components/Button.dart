import 'package:flutter/material.dart';

class Buttom extends StatelessWidget {
  final void Function() callback;
  final String text;
  final Color color;

  Buttom(
    @required this.text,
    @required this.callback,
    @required this.color,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 130,
      child: RaisedButton(
        onPressed: callback,
        color: color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.width * 0.05,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
