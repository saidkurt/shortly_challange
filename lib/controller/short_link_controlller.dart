import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly_challange/core/const/app_color.dart';
import 'package:shortly_challange/core/const/service_path.dart';
import 'package:shortly_challange/core/network/network_service.dart';
import 'package:shortly_challange/helper/toast_message.dart';
import 'package:shortly_challange/model/shortly_link_response_model.dart';

class ShortLinkController extends GetxController with ToasTMessage {
  TextEditingController shortenLinkTextController = TextEditingController();
  PageController pageController = PageController();
  late final RxList<ShorlyResponseModel> _shorlyResponseModel =
      <ShorlyResponseModel>[].obs;
  final Rx<String> _hintText = 'Shorten a link here...'.obs;
  final Rx<Color> _hintTextColor = Colors.grey.obs;
  final Rx<Color> buttonSelectedColor = AppColors.bluePrint.obs;
  final Rx<bool> _isLoading = false.obs;
  final Rx<int> selectedIndex = 9999999.obs;

  Future get getShortlyLink => _getShortlyLink();
  Color get hintTextColor => _hintTextColor.value;
  String get hintText => _hintText.value;
  List<ShorlyResponseModel> get shorlyResponseModel => _shorlyResponseModel;
  bool get isLoading => _isLoading.value;

  Future _getShortlyLink() async {
    try {
      _isLoading.value = true;
      _shorlyResponseModel.add(await NetworkService.instance
          .getData<ShorlyResponseModel>(
              ServicePath.SHORT_LINK + shortenLinkTextController.text,
              ShorlyResponseModel()));
    } on TypeError {
      showToast("Entered url is not valid");
    }
    _isLoading.value = false;
  }

  void validatePassword(String value) {
    if (value == "" || value.isBlank!) {
      _hintText.value = "Please a add link here";
      _hintTextColor.value = Colors.red;
    }
  }

  void onTapGestureForm() {
    _hintText.value = "Shorten a link here...";
    _hintTextColor.value = Colors.grey;
  }

  void setColorandText() {
    buttonSelectedColor.value = AppColors.backGroundColor;
  }

  void nextPage() {
    if (pageController.initialPage == 0) {
      pageController.animateToPage(1,
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn);
    }
  }
}
