import 'package:charity/features/auth/domain/entity/user_entity.dart';
import 'package:dio/dio.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource({required this.dio});

  Future<UserEntity> signInWithGoogle(String token) async {
    var request = await dio.post('auth/verigy', data: {'token': token});

    return UserEntity.fromJson(request.data);
  }
}
