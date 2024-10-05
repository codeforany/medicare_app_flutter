import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:medicare/common/color_extension.dart';

class DoctorRow extends StatelessWidget {
  const DoctorRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            "assets/img/u1.png",
            width: 80,
            height: 80,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dr. Manish Chutake",
                maxLines: 2,
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "BAMS, MBBS, MD, DDLT,",
                maxLines: 2,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                "Nagpur - 2 Km",
                maxLines: 2,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 10,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Row(
                children: [
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
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
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
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_vert,
            color: TColor.primaryText,
          ),
        )
      ],
    );
  }
}
