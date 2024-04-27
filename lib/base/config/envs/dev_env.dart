import 'package:maya_maya_architecture/base/config/env.dart';
import 'package:maya_maya_architecture/base/const/api_const.dart';

class DevEnv extends EnvVars {
  @override
  String get apiToken => '';

  @override
  String get baseURL => devBaseUri;

  @override
  String get title => 'Maya Maya Dev';

  @override
  String get bearerToken => devBearerToken;

  @override
  String get authBaseURL => devAuthUri;

  @override
  String get fleetBaseURL => devFleetUri;

  @override
  String get graphBaseURL => devGraphUri;
  
  @override
  String get chatURL => devChatUri;
  
  @override
  String get contactURL => devContactUri;
}
