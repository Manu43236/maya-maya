import 'package:maya_maya_architecture/base/config/env.dart';
import 'package:maya_maya_architecture/base/const/api_const.dart';

class ProdEnv extends EnvVars {
  @override
  String get apiToken => '';

  @override
  String get baseURL => prodBaseUri;

  @override
  String get title => 'Maya Maya';

  @override
  String get bearerToken => prodBearerToken;

  @override
  String get authBaseURL => prodAuthUri;

  @override
  String get fleetBaseURL => prodFleetUri;

  @override
  String get graphBaseURL => prodGraphUri;

  @override
  String get chatURL => prodChatUri;

  @override
  String get contactURL => prodContactUri;
}
