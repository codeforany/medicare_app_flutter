import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:medicare/common/color_extension.dart';

class DoctorCell extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const DoctorCell({super.key, required this.obj, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: 150,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.only(
                top: 50,
                left: 15,
                right: 15,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 2,
                        offset: Offset(0, 2))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    obj["name"],
                    maxLines: 2,
                    style: TextStyle(
                      color: TColor.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    obj["degree"],
                    maxLines: 2,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  IgnorePointer(
                    ignoring: true,
                    child: RatingStars(
                      value: 3,
                      onValueChanged: (v) {},
                      starCount: 5,
                      starSize: 10,
                      valueLabelColor: const Color(0xff9b9b9b),
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      valueLabelRadius: 0,
                      maxValue: 5,
                      starSpacing: 2,
                      maxValueVisibility: true,
                      valueLabelVisibility: false,
                      animationDuration: const Duration(milliseconds: 1000),
                      valueLabelPadding:
                          const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xff7c7c7c),
                      starColor: const Color(0xffDE6732),
                    ),
                  ),
                  Text(
                    "(4.0)",
                    maxLines: 2,
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                obj["img"],
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
    
  }
}