import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:label_marker/label_marker.dart';
import 'package:location/location.dart';
import 'package:rechyriedapp/Modelclass/Revercgeocode.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/PssActivity.dart';
import 'package:rechyriedapp/Utility/Utility.dart';

class PssCapture extends StatefulWidget {
  const PssCapture({Key? key}) : super(key: key);

  @override
  State<PssCapture> createState() => _PssCaptureState();
}

class _PssCaptureState extends State<PssCapture> {
  // final client = ApiService(Dio());
  LocationData? currentlocationdata;
  List<ReverxData>? reverxData;

  // List<String>? pssname = [];
  Set<Marker> _marker = new Set();
  Set<LabelMarker> _lablemarker = new Set();
  Completer<GoogleMapController> _controller = Completer();

  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _isLoading = true;
    getcurrentlocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pss Capture"),
      ),
//currentlocationdata == null &&
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  strokeWidth: 1.0,
                  value: 100,
                  semanticsLabel: "Loading Google Map.....",
                  semanticsValue: "Loading Google Map......",
                  color: Colors.blue[300]))
          : Column(
              children: [
                Expanded(
                    child: GoogleMap(
                  mapType: MapType.normal,
                  compassEnabled: true,
                  trafficEnabled: true,
                  zoomControlsEnabled: false,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  initialCameraPosition: CameraPosition(
                      target: LatLng(currentlocationdata!.latitude!,
                          currentlocationdata!.longitude!),
                      zoom: 15.0),
                  circles: Set.from([
                    Circle(
                        circleId: CircleId("circle"),
                        center: LatLng(
                            currentlocationdata!.latitude!.toDouble(),
                            currentlocationdata!.longitude!.toDouble()),
                        radius: 100,
                        strokeWidth: 3,
                        strokeColor: Colors.red)
                  ]),
                  markers: Set<Marker>.of(_marker),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                )),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      "images/pointer.png",
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                    ),
                  ],
                )
              ],
            ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _goToTheLake(context, "Page");

            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return DasBoardRdss();
            // }));
          });
        },
        label: Text('Capture Point'),
      ),
    );
  }

  Future<void> _goToTheLake(BuildContext context, String page) async {
    debugPrint('location data ${currentlocationdata}');
    Utility.Navigate(context, PssActiviy(currentlocationdata, reverxData));
//    Utility.Navigate(context, SelecteOptioActivity(currentlocationdata: currentlocationdata, reverxData: reverxData, pssname: pssname));

    // 9463337319
  }

  void getcurrentlocation() {
    Location location = Location();

    location.getLocation().then((location) {
      currentlocationdata = location;
      print("abni;${currentlocationdata}");

      setState(() {
        _getData(currentlocationdata!.latitude, currentlocationdata!.longitude);
      });
    });
  }

  void _getData(double? latitude, double? longitude) async {
    Utility.clienreturn()
        .getRevercgeocode("${latitude}", "${longitude}")
        .then((value) {
      if (value.message!.toLowerCase() == "s") {
        setState(() {
          reverxData?.addAll(value.data!);
        });
        Utility.clienreturn()
            .GetPssAccordingDistric(value.data!.first.district_name)
            .then((value) async {
          if (value.message!.toLowerCase() == "s") {
            if (value.data != null) {
              // pssname?.clear();
              // pssname?.add("Select PSS Name");

              for (int i = 0; i < value.data!.length; i++) {
                _marker.add(Marker(
                    markerId: MarkerId(value.data![i].assetNumber!),
                    position: LatLng(
                        value.data![i].lattitude!, value.data![i].longitude!),
                    icon: BitmapDescriptor.fromBytes(
                        await Utility.getBytesFromAsset(
                            'images/pss_new.png', 100)),
                    infoWindow: InfoWindow(
                      title: 'My Position',
                    )));
              }

              setState(() {
                _marker;
              });
            } else {
              Utility.showToast(context, Utility.error);
            }
          }
        }).onError((error, stackTrace) {
          debugPrint("error is .......${error}");
          debugPrint("error is .......${stackTrace}");
        });
      } else {
        Utility.showToast(context, Utility.error);
      }
    });

    //   print("responce${response.toJson()}");
    // if (response.message!.toLowerCase() == "s") {
    //   reverxData?.addAll(response.data!);
    //   final rsp = await Utility.clienreturn()
    //       .getGetAllAssetdata("test_15", response.data!.first.district_name);
    //
    //   if (rsp.message!.toLowerCase() == "s") {
    //     if (rsp.dataPSS?.psstable != null) {
    //       pssname?.clear();
    //       pssname?.add("Select PSS Name");
    //       for (int i = 0; i < rsp.dataPSS!.psstable!.length; i++) {
    //         pssname?.add(rsp.dataPSS!.psstable![i].ssName!);
    //         // print("responce ${rsp.dataPSS!.psstable![i].ssName!}");
    //
    //       }
    //     } else {
    //       Utility.showToast(context, Utility.error);
    //     }
    //   }
    // } else {
    //   Utility.showToast(context, Utility.error);
    // }
    setState(() {
      _isLoading = false;
    });
  }

}
