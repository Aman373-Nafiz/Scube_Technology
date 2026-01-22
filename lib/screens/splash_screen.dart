import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // State variable to trigger the animation
  bool _showLoginModal = false;

  @override
  void initState() {
    super.initState();
    // Wait for 2 seconds, then trigger the animation
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
    // Get screen height to calculate positioning
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF0096FC),
        // Stack allows us to layer the logo behind the sliding modal
        body: Stack(
          children: [
            // ---------------------------------------------
            // 1. TOP SECTION: LOGO & TEXT
            // ---------------------------------------------
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              // We restrict the height to the top part so it doesn't overlap weirdly
              height: screenHeight * 0.40, 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/scube_logo.png', height: 98, width: 96),
                  const SizedBox(height: 10),
                  Text(
                    "SCUBE",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Control and Monitoring System",
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20, // Adjusted slightly to fit better
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // ---------------------------------------------
            // 2. BOTTOM SECTION: ANIMATED LOGIN MODAL
            // ---------------------------------------------
            AnimatedPositioned(
              duration: const Duration(seconds: 3), // Animation speed
              curve: Curves.linear, // Smooth curve like the video
              
              // If _showLoginModal is true, dock to bottom (0).
              // If false, hide below screen (-screenHeight).
              bottom: _showLoginModal ? 0 : -screenHeight, 
              left: 0,
              right: 0,
              child: Container(
                height: screenHeight * 0.55, // Occupy bottom 55% of screen
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
                        "Login",
                        style: GoogleFonts.inter(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30),
                      
                      // Example Input Field: Username
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
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

                      // Example Input Field: Password
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
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
                            "Forget password?",
                            style: GoogleFonts.inter(
                                color: Colors.grey, fontSize: 12),
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 10),
                      
                      // Login Button
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0096FC),
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: GoogleFonts.inter(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 16),
                      
                      // Footer Text
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have any account? ",
                            style: GoogleFonts.inter(color: Colors.grey),
                          ),
                          GestureDetector(
                            onTap: (){},
                            child: Text(
                              "Register Now",
                              style: GoogleFonts.inter(
                                color: const Color(0xFF0096FC),
                                fontWeight: FontWeight.bold,
                              ),
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