import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/utils/assets_manager.dart';

class HomePageController extends GetxController
    with GetTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  var shakeSelected = true.obs;
  var coffeeSelected = false.obs;
  var cocktailsSelected = false.obs;
  var softSelected = false.obs;
  List<String> imagesListTile = [
    ImageAssets.fa5fa,
    ImageAssets.fa5fa1,
    ImageAssets.fa5fa2,
    ImageAssets.fa5fa3,
    ImageAssets.fa5fa4,
  ];
  @override
  Future<void> onInit() async {
    super.onInit();
    imagesListTile.shuffle();
    animationController =
        AnimationController(duration: const Duration(seconds: 5), vsync: this)
          ..addListener(() {});
    animation = Tween(begin: -200.0, end: 200.0).animate(animationController);
    animationController.forward();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    animationController.dispose();
  }
}
