import 'package:e_commerce/utils/helpers/network_manager.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class Ubindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NetworkManager());
  }
}
