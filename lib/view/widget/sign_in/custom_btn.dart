import 'package:books_gallery/core/constant/appcolors.dart';
import 'package:flutter/material.dart';

class RegisterBtn extends StatelessWidget {
  final void Function()? onPress;
  final Color btnColor;
  final String btnTitle;
  final String? btnIcon;
  const RegisterBtn({
    super.key,
    this.onPress,
    required this.btnColor,
     required this.btnTitle, this.btnIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: btnColor,
      borderRadius: BorderRadius.circular(20),
      elevation: 5,
      child: SizedBox(
        width: 250,
        child: MaterialButton(
          height: 55,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btnTitle,
                style: const TextStyle(fontSize: 18, color: AppColors.white),
              ),
             btnIcon == null ? const SizedBox() : Padding(
               padding: const EdgeInsets.all(8.0),
               child: Image.asset(btnIcon!, height: 20,),
             )
            ],
          ),
        ),
      ),
    );
  }
}
