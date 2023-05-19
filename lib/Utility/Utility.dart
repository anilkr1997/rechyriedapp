import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rechyriedapp/ApiService/ApiService.dart';

class Utility {
  static String error = "Something Want Wrong";

  // static void showAlert(BuildContext context, String text) {
  //   var alert = new AlertDialog(
  //     content: Container(
  //       child: Row(
  //         children: <Widget>[Text(text)],
  //       ),
  //     ),
  //     actions: <Widget>[
  //       new FlatButton(
  //           onPressed: () => Navigator.pop(context),
  //           child: Text(
  //             "OK",
  //             style: TextStyle(color: Colors.white),
  //           ))
  //     ],
  //   );
  //
  //   showDialog(
  //       context: context,
  //       builder: (_) {
  //         return alert;
  //       });
  // }
  static void showToast(BuildContext context, String? a) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(content: Text(a!)),
    );
  }

  static void Navigate(BuildContext context, StatefulWidget we) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return we;
    }));
  }

  static Future<BitmapDescriptor> addMarkers(String imagename) async {
    BitmapDescriptor markerbitmap =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), imagename);
    return markerbitmap;
  }

  static Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
        .buffer
        .asUint8List();
  }

  static ApiService clienreturn() {
    final client = ApiService(Dio());
    return client;
  }

  // static Future<bool> perm(BuildContext context) async {
  //   var readPermission = await Permission.storage.status;
  //   var writePermission = await Permission.storage.status;
  //   var CameraPermission = await Permission.camera.status;
  //   var locationPermission = await Permission.location.status;
  //   var medialocationPermission = await Permission.accessMediaLocation.status;
  //
  //
  //
  //   if (!readPermission.isGranted) {
  //
  //      readPermission = await Permission.storage.request();
  //      return false;
  //   } else if (!writePermission.isGranted) {
  //
  //     writePermission= await Permission.storage.request();
  //     return false;
  //   } else if (!CameraPermission.isGranted) {
  //
  //     CameraPermission= await Permission.camera.request();
  //     return false;
  //   } else if (!locationPermission.isGranted) {
  //
  //     locationPermission= await Permission.location.request();
  //     return false;
  //   } else if (!medialocationPermission.isGranted) {
  //     medialocationPermission= await Permission.accessMediaLocation.request();
  //     return false;
  //   }else{
  //     return true;
  //   }
  //
  //
  // }
}
