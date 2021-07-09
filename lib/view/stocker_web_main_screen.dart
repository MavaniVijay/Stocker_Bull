import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:stocker_bull_web/const/color.dart';
import 'package:stocker_bull_web/view/intrady_screen.dart';

class StockAdminPanel extends StatefulWidget {
  StockAdminPanel({Key key}) : super(key: key);

  @override
  _StockAdminPanelState createState() => _StockAdminPanelState();
}

class _StockAdminPanelState extends State<StockAdminPanel> {
  Map<String, String> map = {};

  TextEditingController shareNameController = TextEditingController();

  TextEditingController target1Controller = TextEditingController();

  TextEditingController target2Controller = TextEditingController();

  TextEditingController target3Controller = TextEditingController();

  TextEditingController target4Controller = TextEditingController();

  @override
  void initState() {
    // SharedPreferences.setMockInitialValues();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        centerTitle: true,
        leadingWidth: 50,
        leading: Image.asset(
          'assets/images/logo.png',
        ),
        title: Text('Stocker Bull'),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'Global Market Pannel',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    height: 400,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          commonFiled(
                              controller: shareNameController,
                              text: "SHARE NAME : ",
                              hintText: "Share name"),
                          SizedBox(
                            height: 10,
                          ),
                          commonFiled(
                              controller: target1Controller,
                              text: "TARGET 1 : ",
                              hintText: "Enter Target"),
                          SizedBox(
                            height: 10,
                          ),
                          commonFiled(
                              controller: target2Controller,
                              text: "TARGET 2 : ",
                              hintText: "Enter Target"),
                          SizedBox(
                            height: 10,
                          ),
                          commonFiled(
                              controller: target3Controller,
                              text: "TARGET 3 : ",
                              hintText: "Enter Target"),
                          SizedBox(
                            height: 10,
                          ),
                          commonFiled(
                              controller: target4Controller,
                              text: "TARGET 4 : ",
                              hintText: "Enter Target"),
                          SizedBox(
                            height: 20,
                          ),
                          RaisedButton(
                            onPressed: () {
                              print('Check Submit Button');
                              map.addAll(
                                  {'shareName': shareNameController.text});
                              map.addAll({'target1': target1Controller.text});
                              map.addAll({'target2': target2Controller.text});
                              map.addAll({'target3': target3Controller.text});
                              map.addAll({'target4': target4Controller.text});
                              print('Map ----> ${map}');
                              Get.to(IntraDayCallScreen(
                                mapData: [map],
                              ));
                            },
                            child: Text('Submit'),
                            color: subContainerColor,
                            elevation: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget commonFiled({
    String text,
    String hintText,
    TextEditingController controller,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )),
        Expanded(
          child: TextField(
            controller: controller,
            enableSuggestions: true,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              fillColor: Colors.blueGrey,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: hintText,
            ),
          ),
        ),
      ],
    );
  }
}
