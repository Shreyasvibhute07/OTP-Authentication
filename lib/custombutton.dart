import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all<Color>(
            const Color.fromARGB(255, 17, 23, 20)),
        // backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
        backgroundColor: MaterialStateProperty.all<Color>(Color(0xff3ed598)),

        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
        ),
      ),
      child: Text(text, style: const TextStyle(fontSize: 20)),
    );
  }
}
