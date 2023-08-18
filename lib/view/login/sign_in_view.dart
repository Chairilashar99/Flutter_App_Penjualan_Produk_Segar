import 'package:flutter/material.dart';
import 'package:flutter_shop_project/common/color_extension.dart';
import 'package:flutter_shop_project/common_widget/round_button.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                "assets/img/bottom_bg.png",
                width: media.width,
                height: media.height,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Image.asset(
            "assets/img/sign_in_top.png",
            width: media.width,
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: media.width * 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Get your groceries\nwith nectar',
                          style: TextStyle(
                            color: TColor.primaryText,
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Or connect with social media',
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundIconButton(
                      title: "Continue with Google",
                      icon: "assets/img/google_logo.png",
                      bgColor: Color(0xff5383EC),
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RoundIconButton(
                      title: "Continue with Facebook",
                      icon: "assets/img/fb_logo.png",
                      bgColor: const Color(0xff4A66AC),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
