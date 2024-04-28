
import 'package:either_dart/src/either.dart';
import 'package:maya_maya_architecture/app/modules/home/models/home_model.dart';
import 'package:maya_maya_architecture/app/modules/home/services/home_repo.dart';
import 'package:maya_maya_architecture/base/network/dio_client.dart';
import 'package:maya_maya_architecture/base/network/network_check_service.dart';

class HomeRepoImpl extends HomeRepo with NetworkCheckService {

  final DioClient _dioClient;

  HomeRepoImpl(this._dioClient);

  @override
  Future<Either<HomeModel, Exception>> doSignup({params}) {
    // TODO: implement doSignup
    throw UnimplementedError();
  }

}
