import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent; //Esse card receberá informações diversas de outros widgets.
  const BoxCard({Key? key, required this.boxContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink( //O Ink funciona como um Container, porém deve ser usado junto com o InkWell.
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).cardColor,
      ),
      child: boxContent,
    );
  }
}
