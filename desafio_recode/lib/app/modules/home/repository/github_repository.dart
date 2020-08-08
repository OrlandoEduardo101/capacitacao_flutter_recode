import 'package:desafio_recode/app/modules/home/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class GithubRepository extends Disposable {
  final Dio client;

  GithubRepository(this.client);

  Future fetchPost() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts/1');
    return response.data;
  }

  Future<UserModel> getUser(String username) async {
    var response = await client.get(username);
    print(username);
    UserModel user = UserModel(
        avatar_url: response.data['avatar_url'],
        bio: response.data['bio'],
        company: response.data['company'],
        follow: response.data['followers'],
        location: response.data['location'],
        name: response.data['name'],
        repos: response.data['public_repos'],
        username: response.data['login']);
    return user;
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
