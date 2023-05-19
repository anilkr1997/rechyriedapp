import 'dart:io';
import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:location_platform_interface/location_platform_interface.dart';
import 'package:rechyriedapp/Modelclass/PostData/PostPole.dart';
import 'package:rechyriedapp/Modelclass/Revercgeocode.dart';
import 'package:rechyriedapp/Utility/Utility.dart';
import 'package:rechyriedapp/packageCamera/CameraPage.dart';

class poleActivity extends StatefulWidget {
  String? picture;

  poleActivity({this.picture, LocationData? currentlocationdata, List<ReverxData>? reverxData, List<String>? pssname}) : super();

  @override
  State<poleActivity> createState() => _poleActivityState();
}

class _poleActivityState extends State<poleActivity> {
  TextEditingController tovalue = TextEditingController();
  TextEditingController fromvalue = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pole Data Insert"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                controller: fromvalue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'From Asset No'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                controller: tovalue,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'To Assets No'),

              ),
            ),
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[200],
              ),
              child: TextButton(
                  child: Text(
                    "Submit",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      if (validation()) {
                        Uploaddata();
                      } else {

                      }
                    });
                  },
                  style: ButtonStyle()),
            ),
            Container(
              height: 50,
              width: 200,
              margin: EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue[200],
              ),
              child: TextButton(
                  child: Text(
                    "Capture Photo",
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    setState(() async {
                      await availableCameras().then((value) =>
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CameraPage(cameras: value))));
                    });
                  },
                  style: ButtonStyle()),
            ),
            Container(
                height: 50,
                width: 200,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[200],
                ),
                // child:
                child: widget.picture == null
                    ? Image(
                    image: AssetImage('images/logo.png'),
                    height: 100.0,
                    alignment: Alignment.center)
                    : Image.file(File(widget.picture!),
                    height: 100.0, alignment: Alignment.center))
          ],
        ),
      ),
    );
  }


  bool validation() {
    if (tovalue.text.isEmpty) {
      Utility.showToast(context, " To asset number is Null");
      return false;
    } else if (fromvalue.text.isEmpty) {
      Utility.showToast(context, "From asset number is Null");

      return false;
    }
    return true;
  }

  void Uploaddata() {
    var responce = Utility.clienreturn().Post_Pole(new PostPole(plan: "",
        state: "",
        stateCode: "",
        district: "",
        discomCode: "",
        discom: "",
        districtCode: "",
        poleVillageName: "",
        poleVillageCode: "",
        assetNumber: tovalue.value.toString(),
        fromAssetNumber: fromvalue.value.toString(),
        lattitude: "",
        longitude: "",
        createdBy: "",
        imagePath: "",
        feeder_name: ""))
        .onError((error, stackTrace) =>  Future.error(StackTrace.current));
  }


}


