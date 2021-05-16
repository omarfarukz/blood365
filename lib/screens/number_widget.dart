import 'package:flutter/material.dart';

class NumbersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildButton(context, '4.8', 'Raking'),
            buildDivider(),
            buildButton(context, '4.8', 'Raking'),
            buildDivider(),
            buildButton(context, '4.8', 'Raking'),
          ],
        ),
      );
  Widget buildDivider() => VerticalDivider();

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              value,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
