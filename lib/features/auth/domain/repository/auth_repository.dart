import 'package:charity/features/auth/domain/entity/user_entity.dart';
import 'package:charity/core/model/either.dart';
import 'package:charity/core/model/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signInWithGoogle();
}
