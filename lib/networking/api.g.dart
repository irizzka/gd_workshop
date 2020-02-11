// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
  }

  final Dio _dio;

  String baseUrl = 'http://api.themoviedb.org/3/';

  @override
  getTasks(theMovieDBApiKey, page) async {
    ArgumentError.checkNotNull(theMovieDBApiKey, 'theMovieDBApiKey');
    ArgumentError.checkNotNull(page, 'page');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'api_key': theMovieDBApiKey,
      'page': page
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'movie/popular',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieListResponce.fromJson(_result.data);
    return Future.value(value);
  }

  @override
  getTasksBySearch(theMovieDBApiKey, page, query) async {
    ArgumentError.checkNotNull(theMovieDBApiKey, 'theMovieDBApiKey');
    ArgumentError.checkNotNull(page, 'page');
    ArgumentError.checkNotNull(query, 'query');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      'api_key': theMovieDBApiKey,
      'page': page,
      'query': query
    };
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        'movie/popular',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = MovieListResponce.fromJson(_result.data);
    return Future.value(value);
  }
}
