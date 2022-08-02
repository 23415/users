import 'package:api_inti/person.dart';
import 'package:dio/dio.dart';

class ApiManager{
  final Dio dio= Dio();
  Future<List<Person>> getUser ()async{
    final res = await dio.get('https://jsonplaceholder.typicode.com/users');
    List<Person> response =[];
    for(var item in res.data) {
      response.add(Person.fromJson(item));
    }
    print(response);
    return response;
  }
}