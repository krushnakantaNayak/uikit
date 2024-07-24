import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final VoidCallback onPressed;
  final ButtonType buttonType;
  final String title;
  const ActionButton({
    super.key,
    required this.onPressed,
    this.title = "Tap",
    this.buttonType = ButtonType.defaultButton,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 15, fontStyle: FontStyle.normal, fontWeight: FontWeight.bold),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ).copyWith(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              if (buttonType == ButtonType.filledButton) {
                return Colors.white70;
              } else {
                return Colors.white10;
              }
            }
            if (buttonType == ButtonType.filledButton) {
              return Colors.white;
            } else {
              return Colors.black;
            }
          }),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: TextStyle(color: buttonType == ButtonType.filledButton ? Colors.black : Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ),
    );
  }
}

enum ButtonType {
  outlineButton,
  filledButton,
  defaultButton,
}
