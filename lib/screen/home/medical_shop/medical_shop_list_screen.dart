import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/screen/home/medical_shop/shop_row.dart';

class MedicalShopListScreen extends StatefulWidget {
  const MedicalShopListScreen({super.key});

  @override
  State<MedicalShopListScreen> createState() => _MedicalShopListScreenState();
}

class _MedicalShopListScreenState extends State<MedicalShopListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        title: const Text(
          "Medical shop near by you",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 20,
            decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
          ),
          Expanded(
              child: ListView.separated(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            itemBuilder: (context, index) {
              return ShopRow(onPressed: (){

              }, obj: {});
            },
            separatorBuilder: (context, index) => const Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Divider(
                color: Colors.black12,
                height: 1,
              ),
            ),
            itemCount: 20,
          ))
        ],
      ),
    );
  }
}
