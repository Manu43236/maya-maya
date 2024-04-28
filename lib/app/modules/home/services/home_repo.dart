import 'package:either_dart/either.dart';
import 'package:maya_maya_architecture/app/modules/home/models/home_model.dart';

abstract class HomeRepo {
Future<Either<HomeModel,Exception>> doSignup({params});
}
