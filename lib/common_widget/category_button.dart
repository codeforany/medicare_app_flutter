import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';

class CategoryButton extends StatelessWidget {
  final String title;
  final String icon;
  final VoidCallback onPressed;

  const CategoryButton({super.key, required this.title, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(color: Colors.black12, blurRadius: 1)
                ]),
            alignment: Alignment.center,
            child: Image.asset(
              icon,
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: TextStyle(
                color: TColor.unselect,
                fontWeight: FontWeight.w500,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}