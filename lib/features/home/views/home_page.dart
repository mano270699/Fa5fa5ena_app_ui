import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:fa5fa5ena/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import '../../../core/utils/app_colors.dart';
import '../controller/home_controller.dart';
import 'widgets/item_tile.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.only(top: 70.h, left: 15.w, right: 15.w),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              AppColors.primary,
              AppColors.primaryLight,
              AppColors.primary,
            ])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70.h,
              ),
              Stack(children: [
                Positioned(
                  top: 10.h,
                  left: 10.w,
                  child: Transform.translate(
                    offset: Offset(
                      controller.animation.value,
                      controller.animation.value,
                    ),
                    child: BlurryContainer(
                      height: 150.h,
                      width: 150.w,
                      borderRadius: BorderRadius.circular(100),
                      color: AppColors.secondary.withOpacity(0.2),
                      blur: 2,
                      child: Container(),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 60.h,
                  left: 150.w,
                  child: Bounce(
                    child: Transform.translate(
                      offset: Offset(controller.animation.value * -1,
                          controller.animation.value * -1),
                      child: BlurryContainer(
                        height: 150.h,
                        width: 150.w,
                        borderRadius: BorderRadius.circular(100),
                        color: AppColors.secondary.withOpacity(0.2),
                        blur: 2,
                        child: Container(),
                      ),
                    ),
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Welcome, Ahmed!",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 40.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(.3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ]),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            AppStrings.appName,
                            style: TextStyle(
                                color: Colors.white.withOpacity(.8),
                                fontSize: 25,
                                fontFamily: AppStrings.fontFamilyLetters,
                                letterSpacing: 5,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                fillColor: Colors.white,
                                border: InputBorder.none,
                                hintText: "Search",
                                contentPadding: EdgeInsets.only(left: 10),
                                icon: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.search,
                                    color: Colors.brown,
                                    size: 30,
                                  ),
                                )),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // * side navBar
                            Align(
                              alignment: Alignment.topLeft,
                              child: Column(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        .67.h,
                                    // color: Colors.black,
                                    width: 310.w,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Positioned(
                                              right: 40.w,
                                              top: 220.h,
                                              child: Transform.rotate(
                                                angle: pi * 1.5,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(0),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Row(
                                                      children: [
                                                        // * soft juice
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .softSelected
                                                                .value = true;
                                                            controller
                                                                .coffeeSelected
                                                                .value = false;
                                                            controller
                                                                .shakeSelected
                                                                .value = false;
                                                            controller
                                                                .cocktailsSelected
                                                                .value = false;
                                                          },
                                                          child: Bounce(
                                                            delay:
                                                                const Duration(
                                                                    milliseconds:
                                                                        1000),
                                                            child: Obx(
                                                              () =>
                                                                  AnimatedContainer(
                                                                duration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500),
                                                                height: 70,
                                                                width: 110,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  color: controller
                                                                          .softSelected
                                                                          .value
                                                                      ? AppColors
                                                                          .secondary
                                                                          .withOpacity(
                                                                              .5)
                                                                      : Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .1),
                                                                ),
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5),
                                                                child:
                                                                    const Center(
                                                                  child: Text(
                                                                    "Soft",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .visible,
                                                                        fontSize:
                                                                            21,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10.h,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .softSelected
                                                                .value = false;
                                                            controller
                                                                .coffeeSelected
                                                                .value = true;
                                                            controller
                                                                .shakeSelected
                                                                .value = false;
                                                            controller
                                                                .cocktailsSelected
                                                                .value = false;
                                                          },
                                                          child: Bounce(
                                                            delay:
                                                                const Duration(
                                                                    milliseconds:
                                                                        800),
                                                            child: Obx(
                                                              () =>
                                                                  AnimatedContainer(
                                                                duration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500),
                                                                height: 70,
                                                                width: 100,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(2),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  color: controller
                                                                          .coffeeSelected
                                                                          .value
                                                                      ? AppColors
                                                                          .secondary
                                                                          .withOpacity(
                                                                              .5)
                                                                      : Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .1),
                                                                ),
                                                                child:
                                                                    const Center(
                                                                  child: Text(
                                                                    "Coffees",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .visible,
                                                                        fontSize:
                                                                            21,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10.h,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .softSelected
                                                                .value = false;
                                                            controller
                                                                .coffeeSelected
                                                                .value = false;
                                                            controller
                                                                .shakeSelected
                                                                .value = false;
                                                            controller
                                                                .cocktailsSelected
                                                                .value = true;
                                                          },
                                                          child: Bounce(
                                                            delay:
                                                                const Duration(
                                                                    milliseconds:
                                                                        600),
                                                            child: Obx(
                                                              () =>
                                                                  AnimatedContainer(
                                                                duration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500),
                                                                height: 70,
                                                                width: 100,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(2),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  color: controller
                                                                          .cocktailsSelected
                                                                          .value
                                                                      ? AppColors
                                                                          .secondary
                                                                          .withOpacity(
                                                                              .5)
                                                                      : Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .1),
                                                                ),
                                                                child:
                                                                    const Center(
                                                                  child: Text(
                                                                    "Cocktails",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .visible,
                                                                        fontSize:
                                                                            21,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: 10.h,
                                                        ),
                                                        GestureDetector(
                                                          onTap: () {
                                                            controller
                                                                .softSelected
                                                                .value = false;
                                                            controller
                                                                .coffeeSelected
                                                                .value = false;
                                                            controller
                                                                .shakeSelected
                                                                .value = true;
                                                            controller
                                                                .cocktailsSelected
                                                                .value = false;
                                                          },
                                                          child: Bounce(
                                                            delay:
                                                                const Duration(
                                                                    milliseconds:
                                                                        400),
                                                            child: Obx(
                                                              () =>
                                                                  AnimatedContainer(
                                                                duration:
                                                                    const Duration(
                                                                        milliseconds:
                                                                            500),
                                                                height: 70,
                                                                width: 100,
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(2),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20),
                                                                  color: controller
                                                                          .shakeSelected
                                                                          .value
                                                                      ? AppColors
                                                                          .secondary
                                                                          .withOpacity(
                                                                              .5)
                                                                      : Colors
                                                                          .white
                                                                          .withOpacity(
                                                                              .1),
                                                                ),
                                                                child:
                                                                    const Center(
                                                                  child: Text(
                                                                    "Shake",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .white,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .visible,
                                                                        fontSize:
                                                                            21,
                                                                        fontWeight:
                                                                            FontWeight.w600),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )),

                                          // * vertical divider
                                          Positioned(
                                            left: 110.w,
                                            top: 50.h,
                                            // bottom: 10,
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 500,
                                                  width: 1,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ),

                                          // * shakes list
                                          Positioned(
                                            left: 110.w,
                                            top: 10.h,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                // Container(
                                                //   height: 200,
                                                //   width: 200,
                                                //   color: Colors.white,
                                                // ),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: SizedBox(
                                                        height: 600.h,
                                                        width: 200.w,
                                                        child:
                                                            ListWheelScrollView(
                                                          onSelectedItemChanged:
                                                              (a) {
                                                            //_itemNumber = a;
                                                          },
                                                          itemExtent: 250,
                                                          children: [
                                                            GestureDetector(
                                                              onTap: () {
                                                                print("Hel");
                                                              },
                                                              child: ItemWidget(
                                                                shakes:
                                                                    "Mix shake",
                                                                shakesImg:
                                                                    controller
                                                                        .imagesListTile[0],
                                                                price: "543",
                                                              ),
                                                            ),
                                                            ItemWidget(
                                                              shakes:
                                                                  "Soft shake",
                                                              shakesImg: controller
                                                                  .imagesListTile[1],
                                                              price: "342",
                                                            ),
                                                            ItemWidget(
                                                              shakes:
                                                                  "Mech Shake",
                                                              shakesImg: controller
                                                                  .imagesListTile[2],
                                                              price: "234",
                                                            ),
                                                            ItemWidget(
                                                              shakes:
                                                                  "Berry Juice",
                                                              shakesImg: controller
                                                                  .imagesListTile[3],
                                                              price: "542",
                                                            ),
                                                            ItemWidget(
                                                              shakes:
                                                                  "Milk Juice",
                                                              shakesImg: controller
                                                                  .imagesListTile[4],
                                                              price: "542",
                                                            ),
                                                          ],
                                                        )))
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // * items list
                          ],
                        ),
                      )
                    ]),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
