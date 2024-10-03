import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/common_widget/category_button.dart';
import 'package:medicare/common_widget/section_row.dart';
import 'package:medicare/screen/home/doctor_cell.dart';
import 'package:medicare/screen/home/shop_cell.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  List categoryArr = [
    {"title": "Heart Issue", "img": "assets/img/heart.png"},
    {"title": "Lung Issue", "img": "assets/img/lung.png"},
    {"title": "Cancer Issue", "img": "assets/img/cancer.png"},
    {"title": "Sugar Issue", "img": "assets/img/sugar.png"},
  ];

  List adsArr = [
    {
      "img": "assets/img/ad_1.png",
    },
    {
      "img": "assets/img/ad_2.png",
    },
  ];

  List nearDoctorArr = [
    {"name": "Dr. Mainsh", "degree": "BAMS, MBBS, MD, DDLT,Psychiatrist" , "img": "assets/img/u1.png"},
    {
      "name": "Dr. Priyanka",
      "degree": "BAMS, MBBS, MD, DDLT,Psychiatrist",
      "img": "assets/img/u2.png"
    },
    {
      "name": "Dr. Kunal Vaidya",
      "degree": "BAMS, MBBS, MD, DDLT,Psychiatrist",
      "img": "assets/img/u3.png"
    },
    
  ];

  List nearShopArr = [
    {
      "name": "Jai Ambey Medical",
      "address": "Surat",
      "img": "assets/img/s1.png"
    },
    {
      "name": "All Relif Medical",
      "address": "Surat",
      "img": "assets/img/s2.png"
    },
    {
      "name": "Matru Chaya Medical",
      "address": "Surat",
      "img": "assets/img/s3.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 150,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                itemBuilder: (context, index) {
                  var obj = categoryArr[index];

                  return CategoryButton(
                      title: obj["title"], icon: obj["img"], onPressed: () {});
                },
                separatorBuilder: (context, index) => const SizedBox(
                  width: 25,
                ),
                itemCount: categoryArr.length,
              ),
            ),
            Container(
              // color: Colors.red,
              height: context.width * 0.5,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  itemBuilder: (context, index) {
                    var obj = adsArr[index];
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(color: Colors.black12, blurRadius: 1)
                          ]),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        child: Image.asset(
                          obj["img"],
                          width: context.width * 0.85,
                          height: context.width * 0.425,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 15,
                      ),
                  itemCount: adsArr.length),
            ),
            SectionRow(title: "Doctors near by you", onPressed: () {}),
            SizedBox(
              height: 220,
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return DoctorCell(obj: nearDoctorArr[index] , onPressed: (){

                    });
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                  itemCount: nearDoctorArr.length),
            ),
            SectionRow(title: "Medical Shop near by you", onPressed: () {}),
            SizedBox(
              height: 220,
              child: ListView.separated(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ShopCell(
                        obj: nearShopArr[index], onPressed: () {});
                  },
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                  itemCount: nearShopArr.length),
            ),
          ],
        ),
      ),
    );
  }
}
