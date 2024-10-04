import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';

class MenuRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;
  const MenuRow({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        height: 55,
        child: Row(
          children: [
            Image.asset(
              obj["icon"],
              width: 25,
              height: 25,
            ),

            const SizedBox(width: 20,),
            Text(
              obj["name"],
              style: TextStyle(color: TColor.secondaryText, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
