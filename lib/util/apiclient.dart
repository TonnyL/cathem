import 'dart:async';
import 'dart:convert';
import 'dart:io';

class ApiClient {
  static final _client = ApiClient._internal();
  final _http = HttpClient();

  ApiClient._internal();

  final String baseUrl = "news-at.zhihu.com";

  factory ApiClient() => _client;

  Future<dynamic> _getJson(Uri uri) async {
    var response = await (await _http.getUrl(uri)).close();
    var transformedResponse = await response.transform(utf8.decoder).join();
    return json.decode(transformedResponse);
  }

  Future<dynamic> fetchBefore(String date) async {
    var url = Uri.https(baseUrl, '/api/4/news/before/$date');
    return _getJson(url);
  }
}
