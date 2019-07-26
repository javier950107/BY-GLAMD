import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function action;

  RoundIconButton({@required this.icon, this.action});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Colors.black,
        size: 40,
      ),
      onPressed: action,
      shape: CircleBorder(),
      fillColor: Colors.white70,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 76.0,
        height: 76.0,
      ),
    );
  }
}
