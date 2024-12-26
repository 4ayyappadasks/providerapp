import 'package:flutter/material.dart';
import 'package:providerapp/view/shared/appstyle.dart';

import '../../main.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          body: SizedBox(
            width: MyApp.width,
            height: MyApp.height,
            child: Stack(
              children: [
                Container(
                  width: MyApp.width,
                  height: MyApp.height * .3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/bannerinhm.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        AppTextstyle(
                          text: "Best shopping experiencE",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        AppTextstyle(
                          text: "EveR",
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        TabBar(
                          dividerColor: Colors.transparent,
                          tabs: const [
                            Tab(
                              text: "Men Products",
                            ),
                            Tab(
                              text: "Women Products",
                            ),
                            Tab(
                              text: "Kid Products",
                            ),
                          ],
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Color(0xFFFFFFFF),
                          isScrollable: true,
                          labelColor: Color(0xFFFFFFFF),
                          unselectedLabelColor: Color(0x2CD2D2D2),
                          labelStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MyApp.height * .25,
                  child: SizedBox(
                    width: MyApp.width,
                    height: MyApp.height * 0.7,
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: MyApp.height * .4,
                              width: MyApp.width,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 20),
                                  child: Material(
                                    borderRadius: BorderRadius.circular(10),
                                    elevation: 10,
                                    child: Container(
                                      height: MyApp.height * .3,
                                      width: MyApp.width * .4,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: MyApp.height * .3,
                              width: MyApp.width,
                              child: Column(
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      AppTextstyle(
                                        text: "Latest Products",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      AppTextstyle(
                                        text: "See All",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: MyApp.height * .2,
                                    width: MyApp.width,
                                    // color: Colors.red,
                                    child: ListView.builder(
                                      padding: const EdgeInsets.all(0),
                                      itemCount: 5,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) => Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 20),
                                        child: Container(
                                          height: MyApp.height * .2,
                                          width: MyApp.height * .2,
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color(0xFF4B4B4B),
                                                    blurRadius: 2,
                                                    offset: Offset(0, 2))
                                              ],
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        ///
                        Container(
                          alignment: Alignment.center,
                          child: const Text("Women's Section"),
                        ),

                        ///
                        Container(
                          alignment: Alignment.center,
                          child: const Text("Kid's Section"),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
