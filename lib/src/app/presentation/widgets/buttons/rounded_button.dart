import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String text;
  const RoundedButton({super.key, required this.text});

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(color: Colors.blueAccent.shade700, offset: Offset(0, 4))
          ]),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        child: Center(
            child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
