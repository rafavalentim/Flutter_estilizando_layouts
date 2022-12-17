import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountScores extends StatelessWidget {
  const AccountScores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(
            boxContent: _AccountScoresContent(),
          ),
        ],
      ),
    );
  }
}

class _AccountScoresContent extends StatelessWidget {
  const _AccountScoresContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Pontos totais:'),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
              child: Text(
                '3000',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: ContentDivision(
                width: 320,
              ),
            ),
            Text(
              'Objetivos:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 4.0),
                  child: ColorDot(
                      color: ThemeColors.accountScores['free_delivery']),
                ),
                Text('Entrega grátis: 150000 pts'),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                  const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 4.0),
                  child: ColorDot(
                      color: ThemeColors.accountScores['streaming_month']),
                ),
                Text('1 mês de streaming: 30000 pts'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
