import 'package:get/get.dart';
import 'package:style_stitch/service/network/network_handler.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

class LaandingPageController extends GetxController {
  RxString? token;
  RxBool loggedIn = false.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkLogin();
  }

  void checkLogin() async {
    var scopedToken = await NetworkHandler.getToken();
    if (scopedToken != null) {
      token?.value = scopedToken;
      loggedIn.value = true;
      Map<String, dynamic> decodedToken = JwtDecoder.decode(scopedToken);
      print('==========object===========');
      print(decodedToken["phone"]);
      var response = await NetworkHandler.get(
          'user/user-details?phone=${decodedToken["phone"]}', scopedToken);
      print('------------object----------');
      print(response);
    }
  }
}
