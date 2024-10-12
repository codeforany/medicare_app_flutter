import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:medicare/common/color_extension.dart';

class ShopRow extends StatelessWidget {
  final Map obj;
  final VoidCallback onPressed;

  const ShopRow({super.key, required this.onPressed, required this.obj});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/img/ms1.png",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Rathod Medical Shop",
                style: TextStyle(
                  color: TColor.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Near Kamla Nehru Collage\nSakkardara,Nagpur\nNagpur - 2 Km",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 10,
                ),
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
          )),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.more_vert,
              color: TColor.black,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}
