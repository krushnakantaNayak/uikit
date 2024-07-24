import 'package:flutter/material.dart';
import 'package:uikit/Ui/Button/action_button.dart';
import 'package:uikit/Ui/Dialog/dialog_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Change the Page to see the example
    return const DialogPage();
  }
}

// Dialog page

class DialogPage extends StatelessWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionButton(
          title: "Show Dialog",
          onPressed: () {
            showDialog(context: context, builder: (_) => const DialogBox());
          },
        ),
      ),
    );
  }
}

// Drawer page

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionButton(
          title: "Show Drawer",
          onPressed: () {},
        ),
      ),
    );
  }
}
