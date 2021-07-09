import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stocker_bull_web/const/color.dart';
import 'package:stocker_bull_web/const/const_class.dart';

class IntraDayCallScreen extends StatelessWidget {
  final List<Map<String, String>> mapData;

  const IntraDayCallScreen({Key key, this.mapData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        title: Text(
          "CALLS",
          style: TextStyle(
            color: mainTextColor,
          ),
        ),
        centerTitle: true,
        backgroundColor: backGroundColor,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "INTRADAY CALL",
                  style: TextStyle(color: whiteColor, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Text(
                  "Today",
                  style: TextStyle(color: whiteColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {
                  print('Check Submit Button');
                  Get.back();
                },
                child: Text('Re Load'),
                color: subContainerColor,
                elevation: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  children: mapData
                      .map<Widget>((e) => cardList(context, mapData: e))
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardList(BuildContext context, {Map<String, String> mapData}) {
    var index;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: Get.height * 0.14,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: mainContainerColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    mapData['shareName'],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  IntraDayContainer(
                    text: index == 1 || index == 4 || index == 7 || index == 10
                        ? "IntraDay \n Sell"
                        : "IntraDay \n Buy",
                    color: index == 1 || index == 4 || index == 7 || index == 10
                        ? Color(0xffE6815A)
                        : subContainerColor,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonContainer(
                    text: mapData['target1'],
                  ),
                  index == 0
                      ? WithoutCheckContainer(
                          text: mapData['target1'],
                        )
                      : CommonContainer(
                          text: mapData['target2'],
                        ),
                  index == 0
                      ? WithoutCheckContainer(
                          text: mapData['target1'],
                        )
                      : CommonContainer(
                          text: mapData['target3'],
                        ),
                  index == 0
                      ? WithoutCheckContainer(
                          text: mapData['target1'],
                        )
                      : CommonContainer(
                          text: mapData['target4'],
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Expanded(
// child: ListView.builder(
// itemCount: 10,
// physics: BouncingScrollPhysics(),
// itemBuilder: (BuildContext context, index) {
// return Padding(
// padding: const EdgeInsets.only(bottom: 10),
// child: Container(
// height: size.height * 0.14,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: mainContainerColor,
// ),
// child: Padding(
// padding: const EdgeInsets.symmetric(
// vertical: 5, horizontal: 12),
// child: Column(
// mainAxisAlignment: MainAxisAlignment.start,
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Row(
// children: [
// Text(
// "ADANIPORTS Above - 750",
// style: TextStyle(
// color: Colors.white,
// ),
// ),
// Spacer(),
// IntraDayContainer(
// text: index == 1 ||
// index == 4 ||
// index == 7 ||
// index == 10
// ? "IntraDay \n Sell"
//     : "IntraDay \n Buy",
// color: index == 1 ||
// index == 4 ||
// index == 7 ||
// index == 10
// ? Color(0xffE6815A)
//     : subContainerColor,
// ),
// ],
// ),
// SizedBox(
// height: 10,
// ),
// Row(
// mainAxisAlignment:
// MainAxisAlignment.spaceBetween,
// children: [
// CommonContainer(
// text: "Intra Day \n 754",
// ),
// index == 0
// ? WithoutCheckContainer(
// text: "Intra Day \n 754",
// )
//     : CommonContainer(
// text: "Intra Day \n 754",
// ),
// index == 0
// ? WithoutCheckContainer(
// text: "Intra Day \n 754",
// )
//     : CommonContainer(
// text: "Intra Day \n 754",
// ),
// index == 0
// ? WithoutCheckContainer(
// text: "Intra Day \n 754",
// )
//     : CommonContainer(
// text: "Intra Day \n 754",
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// );
// },
// ),
// ),
