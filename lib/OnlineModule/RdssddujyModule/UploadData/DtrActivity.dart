import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../../packageCamera/CameraPage.dart';

class DtrActivity extends StatefulWidget {
  const DtrActivity({Key? key}) : super(key: key);

  @override
  State<DtrActivity> createState() => _DtrActivityState();
}

class _DtrActivityState extends State<DtrActivity> {
  TextEditingController et_assetDTR=TextEditingController();
  TextEditingController et_assetFromDTR=TextEditingController();

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
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_6kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0))),
                    labelText: 'Dtr_10kva'),
              ),
            ),

            // Container(
            //     height: 50,
            //     width: 300,
            //     margin: const EdgeInsets.all(15.0),
            //     padding: const EdgeInsets.all(10.0),
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(10),
            //         border: Border.all(color: Colors.blueAccent),
            //         shape: BoxShape.rectangle),
            //     child: Center(
            //       child: DropdownButton(
            //         isExpanded: true,
            //         icon: Icon(
            //           Icons.arrow_downward_sharp,
            //           size: 20,
            //           color: Colors.black,
            //         ),
            //         hint: Text("Select PSS Name"),
            //         value: "pssnamselete",
            //         dropdownColor: Colors.white,
            //         items: widget.pssname!.map((String items) {
            //           return DropdownMenuItem(
            //             value: items,
            //             child: Text(items),
            //             onTap: () {},
            //           );
            //         }).toList(),
            //         onChanged: (String? a) {
            //           setState(() {
            //
            //           });
            //         },
            //       ),
            //     )),


            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_16kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_12kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_63kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_100kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_200kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_250kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_400kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_500kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Dtr_11kva'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'From Asset Number'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.number,
                controller: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    labelText: 'Current Asset Number'),
              ),
            ),
          ],
        )),
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

                  child: Text("Submit"
                    ,style: TextStyle(fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,),)
                  ,onPressed: (){
                setState(() {

                  if(validation()){


                        }else{

                  }
                });
              },
                  style: ButtonStyle()
              ),


            ),
      ])),
    );
  }

  bool validation() {
    return false;


  }
}
