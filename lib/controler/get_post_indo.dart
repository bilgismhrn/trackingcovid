import 'dart:convert';
import 'package:http/http.dart';
import '../model/get_post_modelindo.dart';

class GetPost {
  final String getposturl = "https://api.kawalcorona.com/indonesia";

  //mengambil data
  Future<List<Post>> ngambilPostData() async {
    Response res = await get(getposturl);
    //mengubah json ke stirng
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      //data ditampung ke dalam list dimodel post dan dirubah ke format json
      List<Post> postData =
          body.map((dynamic item) => Post.fromJson(item)).toList();
      return postData;
    } else {
      throw "Data Tidak Ada";
    }
  }

  manggilPostData() {}
}
