library pusher_chatkit_flutter;

import 'package:http/http.dart' as http;

class PusherChatKit {
  /// API Requests should be sent to
  static String _apiEndPoint =
      "https://us1.pusherplatform.io/services/chatkit/v2/:instance_id";

  /// This endpoint requires a super-user token,
  /// more information on tokens can be found here.
  /// https://docs.pusher.com/chatkit/authentication#generating-your-own-tokens
  static final String _usersEndPoint = "/users";

  /// Your instance_id is available from your application dashboard.
  /// Your instance_id is the third component of your instanceLocator,
  /// for example "v1:us1:instance_id".
  String _instanceId;

  /// Just Indicator So We Mustn't Enable any Function to run
  /// unless the [apiEndPoint] Set
  bool _isInit = false;

  /// Init The EndPoint [apiEndPoint]
  PusherChatKit.init(this._instanceId) {
    _apiEndPoint.replaceAll(":instance_id", this._instanceId);
    _isInit = true;
  }

  Future createUserWithEmail({
    String name,
    String email,
    String username,
    String avatarUrl = "https://gravatar.com/img/2124",
//    var customData, // TODO: Understand this later
  }) async {
    var uri = Uri.parse("$_apiEndPoint$_usersEndPoint");
    var request = new http.MultipartRequest("POST", uri);
    request.fields['name'] = '$name';
    request.fields['id'] = '$username';
    request.fields['avatar_url'] = '$avatarUrl';
    request.fields['custom_data'] = '{"email": "$email"}';
    request.send().then((response) {
      print(response.statusCode);
    });
  }
}
