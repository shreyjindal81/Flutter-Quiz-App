import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String aText;
  Answer(this.selectHandler, this.aText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(aText),
        onPressed: selectHandler,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.black45),
          foregroundColor: MaterialStateProperty.all(Colors.yellow),
        ),
      ),
      width: double.infinity,
    );
  }
}
