import 'package:http/http.dart' as http;
import 'package:jsondata/models/post.dart';

class RemoteService {
  Future<List<Post>?> getPosts() async {    //  Future<List<Post>?> getPosts()
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');  //http://219.93.8.166:8011/wfrmData.aspx //https://jsonplaceholder.typicode.com/posts
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return postFromJson(json);
    }
  }
}