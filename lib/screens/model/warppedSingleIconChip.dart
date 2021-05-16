import 'package:blood365/main.dart';
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class wrappedSingleIconChip extends StatefulWidget {
  const wrappedSingleIconChip({Key key}) : super(key: key);

  @override
  _warppedSingleIconChipState createState() => _warppedSingleIconChipState();
}

class _warppedSingleIconChipState extends State<wrappedSingleIconChip> {
  int tag = 1;
  List<String> options = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
  ];
  List myIcons = [
    Icons.help_outline_outlined,
    Icons.help_outline_outlined,
    Icons.help_outline_outlined,
    Icons.help_outline_outlined,
    Icons.help_outline_outlined,
    Icons.help_outline_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ChipsChoice.single(
        value: tag,
        onChanged: (val) => setState(() => tag = val),
        choiceItems: C2Choice.listFrom(
          source: options,
          value: (i, v) => i,
          label: (i, v) => v,
        ),
        wrapped: true,
        choiceStyle: C2ChoiceStyle(
          color: Colors.blue,
        ),
        choiceAvatarBuilder: (data) {
          return Icon(
            myIcons[data.value],
            color: Colors.white,
          );
        },
      ),
    );
  }
}
