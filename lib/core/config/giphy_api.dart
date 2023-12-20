import 'package:giphy_app/core/config/environment.dart';
import 'package:giphy_app/core/domain/managers/http_manager.dart';
import 'package:giphy_app/integrations/http_data_manager.dart';

mixin GiphyApi {
  HttpManager get http => HttpDataManager();
  String get baseUrl => Environment.baseUrl;
}
