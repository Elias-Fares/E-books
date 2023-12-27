import 'dart:ui';
import 'package:books_gallery/controller/sign_in_controller.dart';
import 'package:books_gallery/core/extenstion/appfunction.dart';
import 'package:books_gallery/view/widget/sign_in/custom_btn.dart';
import 'package:books_gallery/view/widget/sign_in/sign-in-image.dart';
import 'package:books_gallery/view/widget/sign_in/signin_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../core/constant/appcolors.dart';
import '../widget/sign_in/custom_textfield.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController controller = Get.put(SignInController());
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.12,
                    ),
                    const Text(
                      "Sign In to E-BOOK!",
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColors.primaryBlue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    const SigninImage(),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    RegisterTextfield(
                      hintText: 'Enter your Email',
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                      ),
                      controller: controller.email,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    RegisterTextfield(
                      hintText: 'Enter your Password',
                      isPassword: true,
                      prefixIcon: const Icon(
                        Icons.lock_open_outlined,
                      ),
                      controller: controller.password,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    RegisterBtn(
                      btnColor: AppColors.primaryBlue,
                      onPress: () {
                        controller.signIn();
                      }, btnTitle: "Sign In",
                    ),
                    15.h.ph,
                    const SigninDivider(),
                    15.h.ph,
                    RegisterBtn(
                      btnColor: AppColors.secondaryBlue,
                      btnTitle: "Sign In with Google",
                      btnIcon: 'assets/images/google.png',
                      onPress: () {
                        controller.signInWithGoogle();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<SignInController>(
            builder: (controller) => controller.state == "loading"
                ? BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: const CircularProgressIndicator(
                      color: AppColors.primaryBlue,
                    ),
                  )
                : const SizedBox(),
          ),
        ],
      ),
    );
  }
}


