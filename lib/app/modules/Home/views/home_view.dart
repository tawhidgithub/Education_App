import 'package:carousel_slider/carousel_slider.dart';
import 'package:education_app/app/resources/LocalText.dart';
import 'package:education_app/app/resources/color_manager.dart';
import 'package:education_app/app/resources/drawerButton.dart';
import 'package:education_app/app/resources/gridCardBox.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  get callbackFunction => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      drawer: Container(color: Colors.white, width: 300,
      child: ListView.builder(

          itemCount: controller.DrawerFieldNameLisr.length,
          itemBuilder: (context,index){

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: DrawerBtn(btnText: controller.DrawerFieldNameLisr[index]),
        );
      }),),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            /// Herder Image Slider
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                  items:
                      [1, 2, 3, 4, 5].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                            );
                          },
                        );
                      }).toList(),
                ),
              ),
            ),

            /// GritView
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: LocalText(
                        text: "Information",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 600,
                      child: GridView.builder(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10.0, // Space between columns
                          mainAxisSpacing: 10.0, // Space between rows
                          childAspectRatio: 0.8,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return CardBox(onTap: (){}, subtitle: "subtitle", title: "title", imgUrl: "imgUrl");
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: LocalText(
                        text: "Notice",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
