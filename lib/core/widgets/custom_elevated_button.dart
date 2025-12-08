import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/styles/colors.dart';
import 'package:flutter_application_1/core/styles/sizes.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.width,
    this.height,
    required backgroundColor,
    required Color foregroundColor,
  });

  // final Color backgroundColor;
  // final Color foregroundColor;
  final String label;
  final void Function()? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: kRadius10),
        minimumSize: Size(width ?? double.infinity, height ?? 40),
        backgroundColor: MyColors.blue,
        foregroundColor: MyColors.white,
      ),
      onPressed: onPressed,
      child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
    );
  }
}
