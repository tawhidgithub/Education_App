import 'package:flutter/material.dart';

import 'LocalText.dart';
import 'color_manager.dart';

class CardBox extends StatelessWidget {
  const CardBox({super.key,required this.onTap,required this.subtitle,required this.title ,required this.imgUrl});

  final String title;
  final String subtitle;
  final String imgUrl;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.secondaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 180,

              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                ),
                child: Image.asset(
                  "assets/image/bg.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,vertical: 5
              ),
              child: Column(
                crossAxisAlignment:
                CrossAxisAlignment.start,

                children: [
                  LocalText(
                    text: title,
                    fontWeight: FontWeight.bold,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                    ),
                    child: Row(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,

                      children: [
                        LocalText(
                          text: "Location :-",
                          fontWeight: FontWeight.normal,
                        ),
                        Expanded(
                          child: LocalText(
                            text: subtitle,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
