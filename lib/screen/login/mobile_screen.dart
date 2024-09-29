import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({super.key});

  @override
  State<MobileScreen> createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  FlCountryCodePicker countryCodePicker = const FlCountryCodePicker();
  late CountryCode countryCode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryCode = countryCodePicker.countryCodes
        .firstWhere((element) => element.name == "India");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: context.width,
          height: context.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: context.width * 0.3,
              ),
              Image.asset(
                "assets/img/color_logo.png",
                width: context.width * 0.33,
              ),
              SizedBox(
                height: context.width * 0.05,
              ),
              Text(
                "Enter Mobile Number",
                style: TextStyle(
                  color: TColor.primary,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "The  verification code will send to the\nnumber",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 14,
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                height: 45,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: TColor.placeholder,
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        final code = await countryCodePicker.showPicker(context: context);

                        if (code != null) {
                          countryCode = code;
                          setState(() {
                            
                          });
                        }
                      },
                      child: Container(
                        height: 45,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: TColor.placeholder,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          countryCode.dialCode,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Ex: 9876543210",
                          hintStyle: TextStyle(
                            color: TColor.placeholder,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: double.maxFinite,
                    height: 40,
                    decoration: BoxDecoration(
                      color: TColor.primary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
