import 'package:flutter/material.dart';
import 'package:uikit/Constants/string_constants.dart';
import 'package:uikit/Ui/Button/action_button.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 200.0,
          width: 550.0,
          padding: const EdgeInsets.all(30),
          margin: const EdgeInsets.all(100),
          decoration: BoxDecoration(
            color: const Color.fromARGB(31, 70, 70, 70),
            border: Border.all(color: Colors.white54, width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  dialogTitle,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(dialogMessage, style: TextStyle(fontSize: 13, color: Colors.white60)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ActionButton(
                      title: "Cancel",
                      buttonType: ButtonType.outlineButton,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const SizedBox(width: 20),
                    ActionButton(
                      title: "Continue",
                      buttonType: ButtonType.filledButton,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
