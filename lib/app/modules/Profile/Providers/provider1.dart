import 'package:dio/dio.dart';
import 'package:racemose/app/modules/models/postModel.dart';

class DioClient {
  final Dio _dio = Dio(
    BaseOptions(
      // baseUrl: 'https://reqres.in/api',
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ),
  );

  final _baseUrl = 'http://192.168.225.63:3000';

  Future<List<Welcome>> getphotos() async {
    // photoModel? photomodel;
    // AlbumsCollection? albumsCollection;
    Welcome? welcome;
    List<Welcome> welcomelst = <Welcome>[];

    try {
      Response userData = await _dio
          .get("https://jsonplaceholder.typicode.com/albums/1/photos");

      print(userData.data.length);

      //     userData.data[0]

      // userData.data.foreach((Welcome) {
      //   // welcome = Welcome.fromJson(userData.data[i]);
      //   welcomelst.add(welcome);
      // });
      // numbers.forEach((number) {
      //   print(number);
      // });

      for (int i = 0; i < userData.data.length; i++) {
        welcome = Welcome.fromJson(userData.data[i]);

        welcomelst.add(welcome);
        // print(welcomelst[i].id);

        // print(welcomelst[i].url);
        // print(welcomelst.runtimeType);
      }

      // print(list1);

      // print("${welcome.runtimeType}");

      // user = User.fromJson(userData.data);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return welcomelst;
  }

  // Future<User?> getUser({required String id}) async {
  //   User? user;
  //   try {
  //     Response userData = await _dio.get(_baseUrl + '/users/$id');
  //     print('User Info: ${userData.data}');
  //     user = User.fromJson(userData.data);
  //   } on DioError catch (e) {
  //     // The request was made and the server responded with a status code
  //     // that falls out of the range of 2xx and is also not 304.
  //     if (e.response != null) {
  //       print('Dio error!');
  //       print('STATUS: ${e.response?.statusCode}');
  //       print('DATA: ${e.response?.data}');
  //       print('HEADERS: ${e.response?.headers}');
  //     } else {
  //       // Error due to setting up or sending the request
  //       print('Error sending request!');
  //       print(e.message);
  //     }
  //   }
  //   return user;
  // }
}
