import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_strings.dart';
import '../core/constants/app_text_styles.dart';
import '../core/constants/app_routes.dart';
import '../core/utils/image_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _showLoginModal = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        setState(() {
          _showLoginModal = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primaryBlue,
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: screenHeight * 0.40,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageAssets.scubeLogo,
                    height: 98,
                    width: 96,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        height: 98,
                        width: 96,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(
                          Icons.business,
                          size: 48,
                          color: AppColors.primaryBlue,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppStrings.appTitle,
                    style: AppTextStyles.appTitle,
                  ),
                  Text(
                    AppStrings.appSubtitle,
                    style: AppTextStyles.appSubtitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            AnimatedPositioned(
              duration: const Duration(seconds: 2),
              curve: Curves.linear,
              bottom: _showLoginModal ? 0 : -screenHeight,
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.55,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        AppStrings.login,
                        style: AppTextStyles.loginTitle,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                    
                      TextField(
                        decoration: InputDecoration(
                          hintText: AppStrings.username,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: AppStrings.password,
                          suffixIcon: const Icon(Icons.visibility_off_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                        ),
                      ),
                      
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            AppStrings.forgetPassword,
                            style: AppTextStyles.forgetPassword,
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                  
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(context, AppRoutes.screen1);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primaryBlue,
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          AppStrings.login,
                          style: AppTextStyles.loginButton,
                        ),
                      ),
                      
                      const SizedBox(height: 16),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            AppStrings.dontHaveAccount,
                            style: AppTextStyles.footerText,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushReplacementNamed(context, AppRoutes.screen1);
                            },
                            child: Text(
                              AppStrings.registerNow,
                              style: AppTextStyles.registerLink,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}