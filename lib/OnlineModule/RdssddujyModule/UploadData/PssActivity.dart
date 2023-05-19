import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:location_platform_interface/location_platform_interface.dart';
import 'package:rechyriedapp/Modelclass/PostData/PostPSS.dart';
import 'package:rechyriedapp/Utility/Utility.dart';

import '../../../Modelclass/Revercgeocode.dart';
import '../../../packageCamera/CameraPage.dart';

class PssActiviy extends StatefulWidget {
  LocationData? currentlocationdata;
  List<ReverxData>? reverxData;

  PssActiviy([LocationData? currentlocationdata, List<ReverxData>? reverxData])
      : super();

  @override
  State<PssActiviy> createState() => _PssActiviyState();
}

class _PssActiviyState extends State<PssActiviy> {
  TextEditingController capecity = TextEditingController();
  TextEditingController Pssname = TextEditingController();
  TextEditingController incomeingfeeder = TextEditingController();
  TextEditingController outgoingfeeder = TextEditingController();
  TextEditingController lengthinkva = TextEditingController();
  TextEditingController assetnumber = TextEditingController();
  TextEditingController feedername = TextEditingController();

  String? plan = 'Select Plan Type';
  String? SStp = 'Select SS Type';

  var Plantype = ['Select Plan Type', 'RDSS', 'DDUJY'];
  var SStype = ['Select SS Type', 'New', 'AUG'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DTR Data"),
      ),

      body: SingleChildScrollView(
          child: Stack(children: [
        Center(
            child: Column(
          children: [
            // Select PlanType
            Container(
                height: 50,
                width: (MediaQuery.of(context).size.width),
                margin: EdgeInsets.symmetric(vertical: 5.5, horizontal: 10.0),
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
            //Select SS Type
            Container(
                height: 50,
                width: (MediaQuery.of(context).size.width),
                margin: EdgeInsets.symmetric(vertical: 5.5, horizontal: 10.0),
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
                    value: SStp,
                    hint: Text("Select SS type"),
                    dropdownColor: Colors.white,
                    items: SStype.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? a) {
                      setState(() {
                        SStp = a;
                        print("print drop value " + a!);
                      });
                    },
                  ),
                )),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: Pssname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Enter PSS Name'),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: capecity,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Enter Capacity in KVA '),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: incomeingfeeder,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'No of incoming Feeder'),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: outgoingfeeder,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'No of Outgoing feeder'),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: lengthinkva,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Length in km'),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                controller: feedername,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Add Feeder name'),
              ),
            ),
            Container(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
              // margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: assetnumber,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Asset Number'),
              ),
            ),

            Center(
              child: Container(
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
                        await availableCameras().then((value) => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CameraPage(cameras: value))));
                      });
                    },
                    style: ButtonStyle()),
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
                        datapost();
                      }
                    });
                  },
                  style: ButtonStyle()),
            ),
          ],
        )),
      ])),
    );
  }

  bool validation() {
    if (Pssname.value.text.isEmpty) {
      Pssname.notifyListeners();

      Utility.showToast(context, "Please Enter PSS Name");
      return false;
    }
    if (incomeingfeeder.value.text.isEmpty) {
      incomeingfeeder.notifyListeners();

      Utility.showToast(context, "Please Enter In Coming Feeder ");
      return false;
    }
    if (outgoingfeeder.value.text.isEmpty) {
      outgoingfeeder.notifyListeners();

      Utility.showToast(context, "Please Enter Out Going Feeder");
      return false;
    }
    if (lengthinkva.value.text.isEmpty) {
      lengthinkva.notifyListeners();
      Utility.showToast(context, "Please Enter Length");
      return false;
    }
    if (capecity.value.text.isEmpty) {
      capecity.notifyListeners();
      Utility.showToast(context, "Please Enter Capacity");
      return false;
    }
    if (feedername.value.text.isEmpty) {
      feedername.notifyListeners();
      Utility.showToast(context, "Please Enter Feeder Name");
      return false;
    }
    if (assetnumber.value.text.isEmpty) {
      assetnumber.notifyListeners();
      Utility.showToast(context, "Please Enter Asset number");
      return false;
    }
    return true;
  }

  void datapost() async {


    PostPSS post_pss = new PostPSS(
        "RDSS",
        widget.reverxData![0].state_name,
        widget.reverxData![0].state_code.toString(),
        widget.reverxData![0].district_name,
        widget.reverxData![0].discom_code,
        widget.reverxData![0].discom_name,
        widget.reverxData![0].discom_code,
        widget.reverxData![0].village_name,
        widget.reverxData![0].vil_code,
        Pssname.value.text,
        "sstype",
        incomeingfeeder.value.text,
        outgoingfeeder.value.text,
        capecity.value.text,
        lengthinkva.value.text,
        widget.currentlocationdata?.latitude.toString(),
        widget.currentlocationdata?.longitude.toString(),
        "anilkumar",
        "imagepath",
        assetnumber.value.text,
        assetnumber.value.text,
       feedername.value.text);

    Utility.clienreturn()
        .PostPss(post_pss)
        .onError((error, stackTrace) => Future.error(StackTrace.current))
        .then((value) {
      if (value.message?.toLowerCase() == "s") {
        setState(() {
          Utility.showToast(context, "Data Uploaded Successfully");

        });

      }
    });
  }
}
