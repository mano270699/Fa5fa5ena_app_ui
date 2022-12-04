import 'package:animate_do/animate_do.dart';
import 'package:fa5fa5ena/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    Key? key,
    required this.shakes,
    required this.shakesImg,
    required this.price,
  }) : super(key: key);

  final String shakes;
  final String shakesImg;
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 20.h, right: 10.w),
        child: Stack(
          children: [
            Center(
              child: SlideInRight(
                duration: const Duration(milliseconds: 100),
                child: Container(
                  height: 210.h,
                  width: 180.w,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(300),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.secondary.withOpacity(.4),
                          blurRadius: 10,
                          spreadRadius: 10,
                          offset: Offset(3, 5)),
                    ],
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 187.h,
                      width: 100.w,
                      child: ZoomIn(
                        delay: const Duration(milliseconds: 100),
                        child: Image.asset(
                          shakesImg,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.w, right: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Align(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              Icons.favorite_outline,
                              color: Colors.brown,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              shakes,
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            width: 80,
                            child: Text(
                              "\$${price}",
                              maxLines: 2,
                              style: TextStyle(
                                  color: Colors.brown,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
