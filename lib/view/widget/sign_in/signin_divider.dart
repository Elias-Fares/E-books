import 'package:flutter/material.dart';

class SigninDivider extends StatelessWidget {
  const SigninDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          flex: 1,
          child: Divider(
            endIndent: 5,
          ),
        ),
        Text(
          "OR",
          style: TextStyle(color: Colors.grey),
        ),
        Expanded(
          flex: 1,
          child: Divider(
            indent: 5,
          ),
        )
      ],
    );
  }
}
