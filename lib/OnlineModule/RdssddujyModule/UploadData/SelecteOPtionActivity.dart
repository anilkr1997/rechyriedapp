import 'dart:math';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:logger/logger.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/DtrActivity.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/poleActivity.dart';
import 'package:rechyriedapp/Utility/Utility.dart';
import '../../../ApiService/ApiService.dart';
import '../../../Modelclass/Revercgeocode.dart';

class SelecteOptioActivity extends StatefulWidget {
  List<ReverxData>? reverxData;
  LocationData? currentlocationdata;
  List<String>? pssname;

  SelecteOptioActivity(
      {this.currentlocationdata, this.reverxData, this.pssname})
      : super();

  @override
  State<SelecteOptioActivity> createState() => _SelecteOptioActivityState();
}

class _SelecteOptioActivityState extends State<SelecteOptioActivity> {
  final client = ApiService(Dio());

  // Initial Selected Value
  String? pssnamselete = 'Select PSS Name';
  String? asettype = 'Select Assets Type';
  String? plan = 'Select Plan Type';
  String? feedernsme = 'Select Feeder Name';

  // List of items in our dropdown menu
  var items = [
    'Select Plan Type',
    'Pole',
    'Pss',
    'DTR',
    'RDSS',
    'DDUJY',
  ];
  var Assets = ['Select Assets Type', 'Pole', 'DTR'];
  var Plantype = ['Select Plan Type', 'RDSS', 'DDUJY'];
  bool loader = false;
  List<String>? dropdownItems = [];
  int selectid = 0;

  @override
  void initState() {
    super.initState();

    print("responce fail ${widget.pssname}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Capture other assets")),
      body: Center(
        child: loader
            ? CircularProgressIndicator(
                strokeWidth: 1.0,
                value: 100,
                semanticsLabel: "Loading Google Map.....",
                semanticsValue: "Loading Google Map......",
                color: Colors.blue[300])
            : Column(
                children: [
                  // select Pss Name dropdown
                  Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent),
                          shape: BoxShape.rectangle),
                      child: Center(
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_downward_sharp,
                            size: 20,
                            color: Colors.black,
                          ),
                          hint: Text("Select PSS Name"),
                          value: pssnamselete,
                          dropdownColor: Colors.white,
                          items: widget.pssname!.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                              onTap: () {},
                            );
                          }).toList(),
                          onChanged: (String? a) {
                            setState(() {
                              pssnamselete = a;
                              loader = true;

                              getfeedername(a);
                            });
                          },
                        ),
                      )),
                  // select feeder name dropdown
                  Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent),
                          shape: BoxShape.rectangle),
                      child: Center(
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_downward_sharp,
                            size: 20,
                            color: Colors.black,
                          ),
                          value: feedernsme,
                          hint: Text("Select Feeder Name"),
                          dropdownColor: Colors.white,
                          items: dropdownItems!.map((e) {
                            return DropdownMenuItem<String>(
                                alignment: Alignment.centerLeft,
                                value: e,
                                child: Text(e));
                          }).toList(),
                          onChanged: (String? value) {
                            setState(() {
                              feedernsme = value;
                            });
                          },
                        ),
                      )),
                  // select Asset Type dropdown
                  Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent),
                          shape: BoxShape.rectangle),
                      child: Center(
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_downward_sharp,
                            size: 20,
                            color: Colors.black,
                          ),
                          value: asettype,
                          hint: Text("Select Item"),
                          dropdownColor: Colors.white,
                          items: Assets.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? a) {
                            setState(() {
                              asettype = a;
                              print("print drop value " + a!);
                            });
                          },
                        ),
                      )),
                  //Select plan type dropdown
                  Container(
                      height: 50,
                      width: 300,
                      margin: const EdgeInsets.all(15.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.blueAccent),
                          shape: BoxShape.rectangle),
                      child: Center(
                        child: DropdownButton(
                          isExpanded: true,
                          icon: Icon(
                            Icons.arrow_downward_sharp,
                            size: 20,
                            color: Colors.black,
                          ),
                          value: plan,
                          hint: Text("Select Item"),
                          dropdownColor: Colors.white,
                          items: Plantype.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? a) {
                            setState(() {
                              plan = a;
                              print("print drop value " + a!);
                            });
                          },
                        ),
                      )),
                  // buttion
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
                            if(validation()){
                              switch(asettype){
                                case "Pole":
                                  Utility.Navigate(context,poleActivity());
                                  break;
                                case "DTR":
                                  Utility.Navigate(context,DtrActivity());                                  break;
                              }

                            }


                          });
                        },
                        style: ButtonStyle()),
                  )
                ],
              ),
      ),
    );
  }

  void getfeedername(String? a) async {

    final responsefeeder = await client.getFeedername(a!);
    if (responsefeeder.message!.toLowerCase() == "s") {
      print("responce $responsefeeder");
      dropdownItems!.clear();
      dropdownItems!.add("Select Feeder Name");
      for (int i = 0; i <= responsefeeder.data!.length - 1; i++) {
        dropdownItems!.add(responsefeeder.data![i].feederName!);
      }
    } else {
      // print("responce fail $responsefeeder")  ;
      Utility.showToast(context, Utility.error);
    }
    setState(() {
      loader = false;
    });
  }

  bool validation() {
    if(pssnamselete==widget.pssname![0]){
      Utility.showToast(context, "Please Selects PSS Name");
      return false;
    }
    else if(feedernsme==dropdownItems![0]){
      Utility.showToast(context, "Please Selects Feeder Name");
      return false;
    } else if(plan==Plantype![0]){
      Utility.showToast(context, "Please Selects Plan Type");
      return false;
    }else if(asettype==Assets![0]){
      Utility.showToast(context, "Please Selects Assets Type");
      return false;
    }
    return true;
  }
}


