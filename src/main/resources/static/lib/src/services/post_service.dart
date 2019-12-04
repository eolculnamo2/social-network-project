import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:angular/core.dart';

@Injectable()
class PostService {
  void savePost() {
    http.post('/posts/add-post',
      body: json.encode({
          'username': 'test',
        }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      });
  }
}