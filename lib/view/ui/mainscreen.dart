import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/main.dart';
import 'package:providerapp/view/shared/bottomnavigationwidget.dart';
import 'package:providerapp/view/shared/colors.dart';
import 'package:providerapp/view/ui/cartscreen.dart';
import 'package:providerapp/view/ui/homepage.dart';
import 'package:providerapp/view/ui/profilescreen.dart';
import 'package:providerapp/view/ui/searchscreen.dart';

import '../../controller/bottomnavigationcontroller.dart';
import 'addscreen.dart';

class Mainscreenwrapper extends StatelessWidget {
  const Mainscreenwrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => BottomnavController(),
      child: Mainscreen(),
    );
  }
}

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});

  List<Widget> PageList = [
    Homepage(),
    Searchscreen(),
    Addscreen(),
    Cartscreen(),
    Profilescreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomnavController>(
      builder: (context, provider, child) {
        return Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: Container(
              height: MyApp.height,
              width: MyApp.width,
              child: Stack(
                children: [
                  PageList[provider.pageindex],
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: MyApp.height * .07,
                        width: MyApp.width,
                        decoration: BoxDecoration(
                            color: AppColors.black,
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Bottomnavigationwidget(
                              tapfun: () {
                                provider.changepage(0);
                              },
                              icon: Icons.home,
                              isSelected: provider.pageindex==0,
                            ),
                            Bottomnavigationwidget(
                              tapfun: () {
                                provider.changepage(1);
                              },
                              icon: Icons.search,
                              isSelected: provider.pageindex==1,
                            ),
                            Bottomnavigationwidget(
                              tapfun: () {
                                provider.changepage(2);
                              },
                              icon: Icons.add,
                              isSelected: provider.pageindex==2,
                            ),
                            Bottomnavigationwidget(
                              tapfun: () {
                                provider.changepage(3);
                              },
                              icon: Icons.add_shopping_cart,
                              isSelected: provider.pageindex==3,
                            ),
                            Bottomnavigationwidget(
                              tapfun: () {
                                provider.changepage(4);
                              },
                              icon: Icons.person,
                              isSelected: provider.pageindex==4,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
