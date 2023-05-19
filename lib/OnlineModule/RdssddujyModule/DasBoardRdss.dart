import 'package:flutter/material.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/OtherAssetPoleDtr.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/PssCapture.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/PssActivity.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/SelecteOPtionActivity.dart';
import 'package:rechyriedapp/Utility/Utility.dart';

class DasBoardRdss extends StatefulWidget {
  const DasBoardRdss() : super();

  @override
  State<DasBoardRdss> createState() => _DasBoardRdssState();
}

class _DasBoardRdssState extends State<DasBoardRdss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DasBoard"),
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              Expanded(child:
              Container(
                height: 50,
                width: 150,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green,
                ),
                child: TextButton(
                    child: Text(
                      "Online",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,

                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Container(
                              child: SimpleDialog(

                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),

                                backgroundColor: Colors.white,
                            title: const Text('Please Choose Option',style: TextStyle(color:Colors.black,fontSize: 20,fontWeight: FontWeight.bold)),
                            children: <Widget>[
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Utility.Navigate(context, PssCapture());

                                  deactivate();
                             // Navigator.pop(context);

                                },
                                child: const Text('PSS'),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                 // Navigator.of(context,rootNavigator: true).pop(context);
                                     Navigator.pop(context,"DTR");
                                  Utility.Navigate(context, OtherAssetPoleDtr(page: "DTR"));

                                  deactivate();
                                },
                                child: const Text(
                                    'DTR'),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                //  Navigator.pop(context);
                                  Navigator.of(context,rootNavigator: true).pop(context);

                                  Utility.Navigate(context, OtherAssetPoleDtr(page: 'POLE'));


                                  deactivate();
                                },
                                child: const Text(
                                    'POLE'),
                              ),
                            ],
                          ));
                        }));
                      });
                    },
                    style: ButtonStyle()),
              )),
              Expanded(child:
              Container(
                height: 50,
                width: 150,
                margin: EdgeInsets.all(20),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
                child: TextButton(
                    child: Text(
                      "Offline",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {
                      setState(() {});
                    },
                    style: ButtonStyle()),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
