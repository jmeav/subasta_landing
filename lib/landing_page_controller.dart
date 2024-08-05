import 'package:get/get.dart';

class LandingPageController extends GetxController {
  var selectedSection = 'Acerca de Nosotros'.obs;

  void updateSection(String section) {
    selectedSection.value = section;
  }
}
