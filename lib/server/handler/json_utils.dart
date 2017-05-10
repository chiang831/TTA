import 'dart:async';
import 'dart:convert';
import 'dart:io';

Future sendJSONResponse(HttpRequest request, json) {
  request.response
    ..headers.contentType = ContentType.JSON
    ..headers.set("Cache-Control", "no-cache")
    ..add(UTF8.encode(JSON.encode(json)));

  return request.response.close();
}
