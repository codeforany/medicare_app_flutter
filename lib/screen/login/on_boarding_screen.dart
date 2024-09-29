import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/screen/login/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  int selectPage = 0;
  List pageArr = [
    {
      "img": "assets/img/on_board_1.png",
      "title": "Find  Your Doctor",
      "subtitle": "To find best Doctors from list\nNear by you",
    },
    {
      "img": "assets/img/on_board_2.png",
      "title": "Easily Available   ",
      "subtitle": "Easily  book appointment of specialist\nDoctors",
    },
    {
      "img": "assets/img/on_board_3.png",
      "title": "Full Satisfaction",
      "subtitle": "Get full satisfaction of your\nProblems",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
              controller: controller,
              itemCount: pageArr.length,
              onPageChanged: (page) {
                setState(() {
                  selectPage = page;
                });
              },
              itemBuilder: (context, index) {
                var obj = pageArr[index];

                return Column(
                  children: [
                    SizedBox(
                      height: context.width * 0.4,
                    ),
                    Image.asset(
                      obj["img"],
                      width: context.width * 0.85,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      obj["title"],
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      obj["subtitle"],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: TColor.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                );
              }),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.width * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        actionNextScreen();
                      },
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: TColor.primary, width: 1),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Skip",
                          style: TextStyle(
                            color: TColor.primary,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  if (selectPage < pageArr.length - 1) {
                    setState(() {
                      selectPage += 1;
                      controller.animateToPage(selectPage,
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceInOut);
                    });
                  } else {
                    // Last Page Next Button Press
                    actionNextScreen();
                  }
                },
                child: Container(
                  width: 120,
                  height: 40,
                  decoration: BoxDecoration(
                    color: TColor.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: context.width * 0.3,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: pageArr.map((obj) {
                  var index = pageArr.indexOf(obj);

                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(
                      color:
                          index == selectPage ? TColor.primary : Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: TColor.primary, width: 1),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: context.width * 0.2,
              ),
            ],
          )
        ],
      ),
    );

    
  }

  //TODO: ACTION
  void actionNextScreen() {
    debugPrint("Last Page Screen Open");
    context.push( const LoginScreen() );
  }
}
