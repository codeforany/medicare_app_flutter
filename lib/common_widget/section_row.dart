import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';

class SectionRow extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final VoidCallback onPressed;

  const SectionRow({super.key, required this.title,  this.buttonTitle = "See All", required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: onPressed,
            child: Text(
              buttonTitle,
              style: TextStyle(
                color: TColor.primary,
                fontSize: 12,
                decoration: TextDecoration.underline
              ),
            ),
          )
        ],
      ),
    );
  }
}