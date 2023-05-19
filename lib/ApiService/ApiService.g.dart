// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ApiService.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://indiapowermap.gov.in/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UserDetail> getUserLogin(
    username,
    Password,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userName': username,
      r'password': Password,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserDetail>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Login',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserDetail.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserDetail> getUserLogout(username) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userName': username};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserDetail>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'pssrecmobile/Logout',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserDetail.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Revercgeocode> getRevercgeocode(
    lattitude,
    longitude,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'lattitude': lattitude,
      r'longitude': longitude,
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Revercgeocode>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'reverse_gocode/Get_Location',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Revercgeocode.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AllAssetData> getGetAllAssetdata(
    name,
    districtname,
  ) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'userName': name,
      r'DistrictName': districtname,
    };
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AllAssetData>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Get_UserData',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AllAssetData.fromJson(_result.data!);
    return value;
  }

  @override
  Future<Feedername> getFeedername(pssname) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'PssName': pssname};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<Feedername>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Get_feederName',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = Feedername.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AllinoneResponce> PostPss(post_pss) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(post_pss.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AllinoneResponce>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Insert_Pss',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AllinoneResponce.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AllinoneResponce> Post_Dtr(post_dtr) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(post_dtr.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AllinoneResponce>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Insert_Dtr',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AllinoneResponce.fromJson(_result.data!);
    return value;
  }

  @override
  Future<AllinoneResponce> Post_Pole(post_pole) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(post_pole.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<AllinoneResponce>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Insert_Pole',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = AllinoneResponce.fromJson(_result.data!);
    return value;
  }

  @override
  Future<PSSmaster> GetPssAccordingDistric(distric) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'DistrictName': distric};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<PSSmaster>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Get_PssMaster',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = PSSmaster.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserFeederline> GetFeederLine(url) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'userName': url};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserFeederline>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              'recmobile/Get_FeederLine',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserFeederline.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
