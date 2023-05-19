// import 'package:http/http.dart' as http;

import 'package:rechyriedapp/Modelclass/AllAssetData/AllAssetData.dart';
import 'package:rechyriedapp/Modelclass/AllinoneResponce.dart';
import 'package:rechyriedapp/Modelclass/Feddernamelist/Feedername.dart';
import 'package:rechyriedapp/Modelclass/PostData/PostDtr.dart';
import 'package:rechyriedapp/Modelclass/PostData/PostPSS.dart';
import 'package:rechyriedapp/Modelclass/PostData/PostPole.dart';
import 'package:rechyriedapp/Modelclass/ReverxeData.dart';
import 'package:rechyriedapp/Modelclass/UserModel.dart';
import 'package:rechyriedapp/ApiService/ApiConstants.dart';
import 'package:rechyriedapp/Modelclass/Revercgeocode.dart';
import 'package:rechyriedapp/Modelclass/Userdetail/UserDetail.dart';
import 'package:rechyriedapp/Modelclass/userfeederline/UserFeederline.dart';
import 'package:retrofit/http.dart';
import 'package:dio/dio.dart';

import '../Modelclass/PSSmastere/PSSmaster.dart';

part 'ApiService.g.dart';


@RestApi(baseUrl: "")
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(receiveTimeout: 60000, connectTimeout: 60000);

    return _ApiService(dio, baseUrl: baseUrl);
  }

  @POST("recmobile/Login")
  Future<UserDetail> getUserLogin(@Query("userName") String username, @Query("password") String Password);

  @POST("pssrecmobile/Logout")
  Future<UserDetail> getUserLogout(@Query("userName") String username);

  @GET("reverse_gocode/Get_Location")
  Future<Revercgeocode> getRevercgeocode(@Query("lattitude") String lattitude,
      @Query("longitude") String longitude) ;
  @POST("recmobile/Get_UserData")
  Future<AllAssetData> getGetAllAssetdata(@Query("userName") String? name,
      @Query("DistrictName") String? districtname);

  @POST("recmobile/Get_feederName")
  Future<Feedername> getFeedername(@Query("PssName") String pssname);


  @POST("recmobile/Insert_Pss")
  Future<AllinoneResponce> PostPss(@Body() PostPSS post_pss);

  @POST("recmobile/Insert_Dtr")
  Future<AllinoneResponce> Post_Dtr(@Body()  PostDtr post_dtr);

  @POST("recmobile/Insert_Pole")
  Future<AllinoneResponce> Post_Pole(@Body()  PostPole post_pole);


  @POST("recmobile/Get_PssMaster")
  Future<PSSmaster> GetPssAccordingDistric(@Query("DistrictName") String? distric);



  @POST("recmobile/Get_FeederLine")
  Future<UserFeederline> GetFeederLine(@Query("userName") String url);

}
