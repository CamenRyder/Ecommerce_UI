// ignore_for_file: use_build_context_synchronously

import 'package:ecommerce_brand/core/utils/helper.dart';
import 'package:ecommerce_brand/core/utils/theme/assets.gen.dart';
import 'package:ecommerce_brand/core/utils/theme/typograhpy.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomSheetSharingWidget extends StatelessWidget {
  BottomSheetSharingWidget({super.key});
  final double radius = 15;
  final _url = Uri.parse('https://www.facebook.com/seanz018');
  final List<dynamic> items = [
    {"images": Assets.iconsFacebook.image(), "name": "Facebook"},
    {"images": Assets.iconsMessenger.image(), "name": "Messager"},
    {"images": Assets.iconsGmail.image(), "name": "Gmail"},
    {"images": Assets.iconsLine.image(), "name": "Lines"},
    {"images": Assets.iconsTelegram.image(), "name": "Telegram"},
    {"images": Assets.iconsTwitter.image(), "name": "Twitter"},
    {"images": Assets.iconsWhatsapp.image(), "name": "WhatApp"},
    {"images": Assets.iconsInstagram.image(), "name": "Instagram"},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: radius, right: radius, top: radius),
      height: MediaQuery.sizeOf(context).height / 6,
      color: Colors.white,
      width: MediaQuery.sizeOf(context).width,
      child: SafeArea(
          child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Share to your friend!",
                  style: AppTypography.bodyLarge22B),
              GestureDetector(
                  onTap: () => Get.back(),
                  child: const Icon(
                    Icons.close,
                  ))
            ],
          ),
          Expanded(
              child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () async {
                  if (index == 0) {
                    animationToastLoadingFail(
                      context: context,
                      isAwait: false,
                      title: "Hii there:D",
                      message:
                          "Contact me for any question or working. Many thanks!",
                      // isAwait: false
                    );
                    if (!await launchUrl(_url)) {
                      throw Exception('Could not launch $_url');
                    }
                  } else {
                    animationToastLoadingFail(context: context);
                  }
                },
                child: Container(
                  width: 70,
                  margin: const EdgeInsets.only(top: 12, right: 12),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 3),
                        height: 40,
                        width: 40,
                        child: items[index]['images'],
                      ),
                      Text(
                        items[index]['name'],
                        style: AppTypography.bodyNormal,
                      )
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      )),
    );
  }
}
