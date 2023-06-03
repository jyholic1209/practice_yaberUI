import 'package:flutter_yaber/components/terms_webview_widget.dart';
import 'package:flutter_yaber/controllers/signup_controller.dart';
import 'package:flutter_yaber/pages/signup/signup_page.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TermsAggree extends StatelessWidget {
  const TermsAggree({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupController());

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            const Text('서비스 제공과 관련된 약관에 모두 동의합니다.'),
            const SizedBox(height: 30),
            Terms(term: '개인정보처리방침 동의(필수)', index: 1),
            Terms(term: '위치기반서비스 이용약관(필수)', index: 2),
            Terms(term: '마케팅 정보 수신 전체 동의(필수)', index: 3),
            ElevatedButton(
                onPressed: () => tabKey.currentState?.next(),
                child: const Text('다 음'))
          ],
        ),
      ),
    );
  }
}

class Terms extends GetView<SignupController> {
  int index = 0;
  String term;
  Terms({
    super.key,
    required this.term,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    if (index < 1 || index > 3) {
      return const Center(
        child: Text('index error'),
      );
    }
    return Obx(
      () => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Checkbox(
            value: index == 1
                ? controller.isPrivateCheck.value
                : index == 2
                    ? controller.isLocationCheck.value
                    : controller.isMarketingCheck.value,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onChanged: (value) {
              controller.signupControllerCheck(index, value!);
            },
          ),
          Text(term),
          GestureDetector(
            onTap: () {
              switch (index) {
                case 1:
                  Get.to(TermsWebviewWidget(
                    title: '개인정보처리방침 동의약관',
                    url: 'https://policy.naver.com/policy/service.html',
                  ));
                  break;
                case 2:
                  Get.to(TermsWebviewWidget(
                    title: '위치기반서비스 이용약관',
                    url: 'https://policy.naver.com/policy/service.html',
                  ));
                  break;
                case 3:
                  Get.to(TermsWebviewWidget(
                    title: '마켓팅 정보 수신 전체 동의약관',
                    url: 'https://policy.naver.com/policy/service.html',
                  ));
                  break;
              }
            },
            child: const Text(
              '약관보기',
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          ),
        ],
      ),
    );
  }
}
