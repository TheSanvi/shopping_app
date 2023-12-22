import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton( child:Text("Sign Up",style: TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold
    ),),
      onPressed: onTap,
    style: ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity,50)
    ),);
  }
}
