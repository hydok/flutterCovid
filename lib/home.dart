import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid/controller/covid_controller.dart';
import 'package:get/get.dart';

import 'canvas/arrow_clip_path.dart';

class Home extends GetView<CovidController> {
  Home({Key? key}) : super(key: key);

  double headerTopZone = 0;

  @override
  Widget build(BuildContext context) {
    headerTopZone = Get.mediaQuery.padding.top + AppBar().preferredSize.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          '코로나 일별 현황',
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          )
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            //background
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    colors: [Color(0xff3c727c), Colors.blueGrey])),
          ),
          Positioned(
            top: headerTopZone,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: const Text(
                    '07.24  기준',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Positioned(
            top: headerTopZone + 60,
              right: 50,
              child: Column(
            children: [
              const Text(
                '확진자',
                style: TextStyle(color: Colors.white,fontSize: 20),
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  ClipPath(
                    clipper:ArrowClipPath(),
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  const SizedBox(width: 5,),
                  Text(
                    '1234',
                    style: TextStyle(color: Colors.pinkAccent,fontSize: 50,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(controller.covidData.value.decideCnt ?? '', style: TextStyle(color: Colors.white,fontSize: 20),),
            ],
          )),

          //하단 박스...
          Positioned(
            bottom: 0,
            child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
              child: Container(
                color: Colors.white,
                height:MediaQuery.of(context).size.height/1.6,
                width: MediaQuery.of(context).size.width,

              ),
            ),
          )


        ],
      ),
    );

  }



}
