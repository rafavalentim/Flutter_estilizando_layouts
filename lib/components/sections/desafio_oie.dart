import 'package:flutter/material.dart';

class DesafioOie extends StatelessWidget {
  const DesafioOie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16.0, 80.0, 16.0, 16.0),
        child: Column(
          children: const <Widget>[
            Text.rich(
              TextSpan(
                text: 'Oie',
                style: TextStyle(fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: ', mundo Flutter.',
                    style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.normal),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
