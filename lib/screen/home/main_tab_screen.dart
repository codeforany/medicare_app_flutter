import 'package:flutter/material.dart';
import 'package:medicare/common/color_extension.dart';
import 'package:medicare/common_widget/menu_row.dart';
import 'package:medicare/screen/home/home_tab_screen.dart';

class MainTabScreen extends StatefulWidget {
  const MainTabScreen({super.key});

  @override
  State<MainTabScreen> createState() => _MainTabScreenState();
}

class _MainTabScreenState extends State<MainTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int selectTab = 0;
  final GlobalKey<ScaffoldState> scaffoldStateKey = GlobalKey();

  List menuArr = [
    {'name': 'My Appointments', 'icon': 'assets/img/my_apo.png', 'action': '1'},
    {
      'name': 'New Appointment',
      'icon': 'assets/img/new_app.png',
      'action': '2'
    },
    {'name': 'Medical Records', 'icon': 'assets/img/recode.png', 'action': '3'},
    {'name': 'Forum', 'icon': 'assets/img/forum.png', 'action': '4'},
    {
      'name': 'Account Settings',
      'icon': 'assets/img/account_setting.png',
      'action': '5'
    },
    {'name': 'Help', 'icon': 'assets/img/help.png', 'action': '6'},
    {'name': 'Logout', 'icon': 'assets/img/logout.png', 'action': '7'}
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {
        selectTab = controller.index;
      });
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldStateKey,
      drawer: Drawer(
        width: context.width * 0.78,
        shadowColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {
                              scaffoldStateKey.currentState?.closeDrawer();
                            },
                            icon: const Icon(
                              Icons.close,
                              size: 25,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/img/u1.png",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manish Chutake",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Surat",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              )
                            ],
                          ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemBuilder: (context, index) {
                var obj = menuArr[index];

                return MenuRow(
                  obj: obj,
                  onPressed: () {},
                );
              },
              separatorBuilder: (context, index) => const Divider(
                color: Colors.black12,
                height: 1,
              ),
              itemCount: menuArr.length,
            ))
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () {
            scaffoldStateKey.currentState?.openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            size: 35,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Medicare",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {},
              child: Container(
                height: 30,
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: TColor.primaryText,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      "Surat",
                      style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 10,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 15,
            decoration: BoxDecoration(
                color: TColor.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15))),
          ),
          Expanded(
            child: TabBarView(controller: controller, children: [
              const HomeTabScreen(),
              Container(),
              Container(),
            ]),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 15),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black12, blurRadius: 5, offset: Offset(0, -2))
            ]),
        child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                icon: Image.asset(
                  "assets/img/home_tab_ic.png",
                  width: 32,
                  color: selectTab == 0 ? TColor.primary : TColor.unselect,
                ),
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/chat_tab_ic.png",
                  width: 32,
                  color: selectTab == 1 ? TColor.primary : TColor.unselect,
                ),
              ),
              Tab(
                icon: Image.asset(
                  "assets/img/setting_tab_ic.png",
                  width: 32,
                  color: selectTab == 2 ? TColor.primary : TColor.unselect,
                ),
              )
            ]),
      ),
    );
  }
}
