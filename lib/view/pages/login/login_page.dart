import 'package:flutter/material.dart';
import 'package:flutter_app_demo/view/widget_layout.dart';

// Color constants derived from the image for consistency and easy updates.
const Color gcbAccentColor = Color(0xFF00A99D);
const Color gcbAvatarBgColor = Color(0xFFFBC02D);
const Color gcbChatFabColor = Color(0xFF495D69);
const Color gcbChatIconColor = Color(0xFFF39C12);

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Using a Stack to allow the chat button to float over the content.
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(24.0, 20.0, 24.0, 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // "Switch User?" button at the top right.
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/switch.png",
                              width: 25,
                              height: 25,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Switch User?',
                              style: TextStyle(
                                color: gcbAccentColor,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // GCB Logo in the center.
                    Center(
                      child: Image.asset(
                        'assets/images/GCB_brandmark.png',
                        height: 70,
                      ),
                    ),
                    const SizedBox(height: 40),

                    // Welcome message section.
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 28,
                            backgroundColor: gcbAvatarBgColor,
                            child: Icon(
                              Icons.person,
                              size: 40,
                              color: Colors.grey.shade800,
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Welcome Back,',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                ),
                              ),
                              Text(
                                'Abdul Wahab Fuseini',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 60),

                    // "Login" section header.
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black54,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Password input field.
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image.asset(
                            "assets/images/mobile.png",
                            width: 24,
                            height: 24,
                          ),
                        ),
                        prefixIconConstraints:
                        const BoxConstraints(minWidth: 24, minHeight: 24),
                      ),
                    ),

                    // "Forgot Password?" link.
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password?',
                          style: TextStyle(color: gcbAccentColor, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 60),

                    // Main "Login" button.
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const WidgetLayout(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade400,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          elevation: 0,
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),

                    // "OR" divider.
                    Row(
                      children: [
                        const Expanded(child: Divider(thickness: 1)),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('OR',
                              style: TextStyle(color: Colors.grey.shade600)),
                        ),
                        const Expanded(child: Divider(thickness: 1)),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // "Use Face ID Instead?" button.
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/facial-recog.png",
                              width: 35,
                              height: 35,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'Use Face ID Instead?',
                              style: TextStyle(
                                color: gcbAccentColor,
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 80),

                    // Version number at the bottom right.
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text('Version: 2.4',
                          style: TextStyle(color: Colors.black)),
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
            ),
          ),

          // Positioned floating action button for chat/help.
          Positioned(
            bottom: 350, // Positioned to overlap the login button area.
            right: 0,
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: gcbChatFabColor,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.question_answer,
                color: gcbChatIconColor,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}