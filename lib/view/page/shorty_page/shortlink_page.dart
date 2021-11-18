// ignore_for_file: prefer_const_constructors

import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shortly_challange/controller/short_link_controlller.dart';
import 'package:shortly_challange/core/const/app_color.dart';
import 'package:shortly_challange/view/page/shorty_page/widget/custom_text_input.dart';
import 'package:shortly_challange/view/page/shorty_page/widget/empty_list_error.dart';
import 'package:shortly_challange/view/page/shorty_page/widget/shortlink_copy_button.dart';
import 'package:shortly_challange/view/page/shorty_page/widget/shortliy_main_logo_pageview.dart';
import 'package:shortly_challange/view/page/shorty_page/widget/shorty_link_text_container.dart';

import 'widget/custom_elevated_button.dart';
import 'widget/shortly_list_icon_delete_button.dart';
import 'widget/shorty_link_input_background.dart';
import 'widget/your_link_history_text.dart';

class ShortLinkPage extends StatelessWidget {
  final shortLinkPageController = Get.put(ShortLinkController());

  ShortLinkPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        shortLinkPageController.onTapGestureForm();
      },
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: SizedBox(
            height: Get.height,
            width: Get.width,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    child: PageView(
                      physics: NeverScrollableScrollPhysics(),
                      controller: shortLinkPageController.pageController,
                      scrollDirection: Axis.horizontal,
                      children: [
                        const ShortlyMainLogo(),
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 100),
                              YourLinkHistoryTextWidget(),
                              Expanded(
                                child: Obx(
                                  () =>
                                      shortLinkPageController
                                                  .shorlyResponseModel
                                                  .isBlank ==
                                              true
                                          ? EmptyListError()
                                          : ListView.builder(
                                              itemCount: shortLinkPageController
                                                  .shorlyResponseModel.length,
                                              itemBuilder: (context, index) {
                                                return Center(
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 200,
                                                        width: 350,
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10)),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            SizedBox(
                                                              height: 50,
                                                              width: 300,
                                                              child: Center(
                                                                child: Row(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Obx(
                                                                      () =>
                                                                          ShortLinkTextListContainer(
                                                                        text: shortLinkPageController
                                                                            .shorlyResponseModel[index]
                                                                            .result!
                                                                            .originalLink!,
                                                                        textColor: Colors
                                                                            .black
                                                                            .withOpacity(0.8),
                                                                        index:
                                                                            index,
                                                                      ),
                                                                    ),
                                                                    ShortyListIconDeleteButton(
                                                                      onPressed:
                                                                          () =>
                                                                              {
                                                                        shortLinkPageController
                                                                            .shorlyResponseModel
                                                                            .removeAt(index),
                                                                        shortLinkPageController
                                                                            .selectedIndex
                                                                            .value = 999999
                                                                      },
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              height: 5,
                                                              width: 350,
                                                              color: Colors
                                                                  .grey[200],
                                                            ),
                                                            SizedBox(
                                                              height: 125,
                                                              width: 300,
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  ShortLinkTextListContainer(
                                                                    text: shortLinkPageController
                                                                        .shorlyResponseModel[
                                                                            index]
                                                                        .result!
                                                                        .fullShortLink2!,
                                                                    textColor:
                                                                        AppColors
                                                                            .bluePrint,
                                                                    index:
                                                                        index,
                                                                  ),
                                                                  Obx(
                                                                    () =>
                                                                        ShortLinkCopyButton(
                                                                      buttonColor: shortLinkPageController.selectedIndex ==
                                                                              index
                                                                          ? AppColors
                                                                              .backGroundColor
                                                                          : AppColors
                                                                              .bluePrint,
                                                                      text: shortLinkPageController.selectedIndex ==
                                                                              index
                                                                          ? "COPIED !"
                                                                          : "COPY",
                                                                      onPressed:
                                                                          () async {
                                                                        await FlutterClipboard.controlC(shortLinkPageController
                                                                            .shorlyResponseModel[index]
                                                                            .result!
                                                                            .shortLink2!);
                                                                        shortLinkPageController
                                                                            .selectedIndex
                                                                            .value = index;

                                                                        shortLinkPageController
                                                                            .setColorandText();
                                                                      },
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 20,
                                                      )
                                                    ],
                                                  ),
                                                );
                                              }),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: [
                      ShortlyInputBackground(),
                      SizedBox(
                        width: Get.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              width: Get.width / 1.5,
                              height: Get.height / 17,
                              child: Center(
                                  child: Obx(
                                () => CustomTextInput(
                                  hintTextValue:
                                      shortLinkPageController.hintText,
                                  hintTextColor:
                                      shortLinkPageController.hintTextColor,
                                  textEditingController: shortLinkPageController
                                      .shortenLinkTextController,
                                ),
                              )),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.white),
                              width: Get.width / 1.5,
                              height: Get.height / 17,
                              child: Obx(
                                () => CustomElevatedButton(
                                  isLoading: shortLinkPageController.isLoading,
                                  title: 'SHORTEN IT !',
                                  onPressed: () {
                                    shortLinkPageController.nextPage();
                                    shortLinkPageController
                                                .shortenLinkTextController
                                                .text !=
                                            ""
                                        ? shortLinkPageController.getShortlyLink
                                        : shortLinkPageController
                                            .validatePassword(
                                                shortLinkPageController
                                                    .shortenLinkTextController
                                                    .text);
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
