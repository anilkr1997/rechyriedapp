import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:rechyriedapp/Modelclass/AllAssetData/AllAssetData.dart';
import 'package:rechyriedapp/OnlineModule/RdssddujyModule/UploadData/poleActivity.dart';
import '../../Modelclass/Feddernamelist/StAsgeojson.dart';
import '../../Modelclass/Revercgeocode.dart';
import '../../Utility/Utility.dart';

class OtherAssetPoleDtr extends StatefulWidget {
  String? page;

  OtherAssetPoleDtr({String? page}) : super();

  @override
  State<OtherAssetPoleDtr> createState() => _OtherAssetPoleDtrState();
}

class _OtherAssetPoleDtrState extends State<OtherAssetPoleDtr> {
  // final client = ApiService(Dio());
  LocationData? currentlocationdata;
  List<ReverxData>? reverxData;
  List<String>? pssname = [];
  List<StAsgeojson>? fedrdata = [];
  Completer<GoogleMapController> _controller = Completer();

  bool _isLoading = false;
  Set<Marker> _marker = new Set();
  Set<Marker> _marker2 = new Set();
  Set<Polyline> polyline = new Set();
  List<LatLng> listlat = [];
  List<LatLng> listlat2 = [];

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
        title: Text("${widget.page.toString()} Capture"),
      ),
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
                  polylines: Set<Polyline>.of(polyline),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                )),
              ],
            ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            _goToTheLake(context, widget.page);

            // Navigator.push(context, MaterialPageRoute(builder: (context){
            //   return DasBoardRdss();
            // }));
          });
        },
        label: Text('Capture Point'),
      ),
    );
  }

  Future<void> _goToTheLake(BuildContext context, String? page) async {
    debugPrint('location data........... ${widget.page}');
    switch (widget.page) {
      case "":
        Utility.Navigate(
            context,
            poleActivity(
                currentlocationdata: currentlocationdata,
                reverxData: reverxData,
                pssname: pssname));
        break;
      case "":
        //  Utility.Navigate(context, SelecteOptioActivity(currentlocationdata: currentlocationdata, reverxData: reverxData, pssname: pssname));
        break;
    }

    // 9463337319
  }

  void getcurrentlocation() {
    Location location = Location();

    location.getLocation().then((location) {
      currentlocationdata = location;
      print("abni;${currentlocationdata}");
      _getData(currentlocationdata!.latitude, currentlocationdata!.longitude);

    });
  }

  void _getData(double? latitude, double? longitude) async {
    StAsgeojson stAsgeojson;
    ;

    Utility.clienreturn()
        .getRevercgeocode("${latitude}", "${longitude}")
        .then((value) {
      if (value.message!.toLowerCase() == "s") {
        reverxData?.addAll(value.data!);

        Utility.clienreturn()
            .getGetAllAssetdata("anil_nic", value.data!.first.district_name)
            .then((value) {
          if (value.message!.toLowerCase() == "s") {
            addpointinmao(value);
            setState(() {
              _isLoading = false;
            });
            print("start feeder");
            Utility.clienreturn().GetFeederLine("anil_nic").then((value) {
              if (value.message!.toLowerCase() == "s") {
                for (int i = 0; i <= value.data!.length-1; i++) {

                  stAsgeojson = StAsgeojson.fromJson(json.decode(value.data![i].st_asgeojson.toString()));

                  //listlat2.clear();

                  for(int j=0;j<=stAsgeojson.coordinates!.length-1;j++){

                    print("feederline1........... ${stAsgeojson.coordinates![j]}");
                    for(int k=0;k<=stAsgeojson.coordinates![j].length-1;k++){

                      print("feederlineK........... ${stAsgeojson.coordinates![j][k]}");
                      print("feederline2........latong... ${stAsgeojson.coordinates![j][k][0]}");
                      print("feederline2.........latlong.. ${stAsgeojson.coordinates![j][k][1]}");
                      listlat.add(LatLng(stAsgeojson.coordinates![j][k][1], stAsgeojson.coordinates![j][k][0]));

                    }
                    //listlat2.addAll(listlat);
                    polyline.add(Polyline(polylineId:PolylineId(value.data![i].id.toString()),points: listlat ,color: Colors.red,width: 3));

                    //listlat.clear();

                  }

                  //Map<String, dynamic> user = jsonDecode(value.data![i].st_asgeojson!);

                  //

                //  listlat.add(LatLng(latitude, longitude))


                 // print("feederline........... ${stAsgeojson.coordinates}");

                 // print("feederline........... ${stAsgeojson.coordinates}");
                  // fedrdata?.add(stAsgeojson);



                }
                setState(() {
                  polyline;
                });

              } else {}
            }).onError((error, stackTrace) {
              debugPrint("${error}..........................${stackTrace}");
            });
          } else {
            Utility.showToast(context, Utility.error);
          }
        }).onError((error, stackTrace) {});
      } else {
        Utility.showToast(context, Utility.error);
      }
    }).onError((error, stackTrace) {

      debugPrint("${error}..........................${stackTrace}");
    });
  }

  void addpointinmao(AllAssetData value) async {
    pssname?.clear();
    pssname?.add("Select PSS Name");
    if (value.dataPSS!.psstable!.length > 0) {
      for (int i = 0; i < value.dataPSS!.psstable!.length; i++) {
        pssname?.add(value.dataPSS!.psstable![i].ssName!);

        _marker.add(Marker(
            markerId: MarkerId(value.dataPSS!.psstable![i].assetNumber!),
            position: LatLng(value.dataPSS!.psstable![i].lattitude!,
                value.dataPSS!.psstable![i].longitude!),
            icon: BitmapDescriptor.fromBytes(
                await Utility.getBytesFromAsset('images/pss_new.png', 100)),
            infoWindow: InfoWindow(
              title: 'Substation',
            )));
      }
    }
    if (value.dataDTR!.dtrtable!.length > 0) {
      for (int i = 0; i < value.dataDTR!.dtrtable!.length; i++) {
        _marker.add(Marker(
            markerId: MarkerId(value.dataDTR!.dtrtable![i].assetNumber!),
            position: LatLng(value.dataDTR!.dtrtable![i].lattitude!,
                value.dataDTR!.dtrtable![i].longitude!),
            icon: BitmapDescriptor.fromBytes(
                await Utility.getBytesFromAsset('images/dtr_new.png', 100)),
            infoWindow: InfoWindow(
              title: 'DTR',
            )));
      }
    }
    if (value.dataPOLE!.poletable!.length > 0) {
      for (int i = 0; i < value.dataPOLE!.poletable!.length; i++) {
        _marker.add(Marker(
            markerId: MarkerId(value.dataPOLE!.poletable![i].assetNumber!),
            position: LatLng(value.dataPOLE!.poletable![i].lattitude!,
                value.dataPOLE!.poletable![i].longitude!),
            icon: BitmapDescriptor.fromBytes(await Utility.getBytesFromAsset(
                'images/electric_pole.png', 100)),
            infoWindow: InfoWindow(
              title: 'POLE',
            )));
      }
    }

    if (_marker.length > 0) {
      setState(() {
        _marker;
        //_marker2.addAll();
      });
    }
  }
}


