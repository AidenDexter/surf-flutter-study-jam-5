import 'package:flutter/material.dart';

import 'button_widget.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  bool isButtonPressed = false;
  void buttonPressed() {
    setState(() {
      if (isButtonPressed == false) {
        isButtonPressed = true;
      } else if (isButtonPressed == true) {
        isButtonPressed = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonWidget(
          onTap: buttonPressed,
          isButtonPressed: isButtonPressed,
          icon: Icons.add_a_photo,
        )
      ],
    );
  }
}