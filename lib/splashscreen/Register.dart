// ignore_for_file: file_names

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fitlife/firebase_auth_implementation/firebase_auth_services.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  // ignore: unused_field
  final FirebaseAuthService _auth = FirebaseAuthService();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  bool visibiltypass = false;
  bool? isChechked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        // leading: IconButton(
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //     icon: const Icon(Icons.arrow_back_ios, color: Colors.black)),
        //   elevation: 0,
        //   backgroundColor: Colors.transparent,
        //   centerTitle: true,
        //   title: const Text(
        //     "Daftar",
        //     style: TextStyle(
        //         color: Colors.black,
        //         fontFamily: 'Poppins',
        //         fontWeight: FontWeight.bold),
        //   ),
        // ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.person_2_outlined),
                        hintText: 'Nama',
                        hintStyle: const TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: 'Alamat Email',
                        hintStyle: const TextStyle(fontFamily: 'Poppins'),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: !visibiltypass,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock_outlined),
                        hintText: 'Kata Sandi',
                        hintStyle: const TextStyle(fontFamily: 'Poppins'),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visibiltypass = !visibiltypass;
                              });
                            },
                            icon: visibiltypass
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(24))),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 0.75, color: Color(0xFFD3D6DA)),
                            borderRadius: BorderRadius.circular(5)),
                        value: isChechked,
                        activeColor: const Color(0XFF0074FF),
                        tristate: false,
                        onChanged: (newvool) {
                          setState(() {
                            isChechked = newvool;
                          });
                        },
                      ),
                      Container(
                        constraints: const BoxConstraints(
                            maxWidth: 280), // Adjust the maxWidth as needed
                        child: const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'I agree to the medidoc ',
                                style: TextStyle(
                                  color: Color(0xFF3B4353),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms of Service',
                                style: TextStyle(
                                  color: Color(0xFF0047FF),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              TextSpan(
                                text: ' and ',
                                style: TextStyle(
                                  color: Color(0xFF3B4353),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                  color: Color(0xFF0047FF),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                            ],
                          ),
                          maxLines: 2, // Adjust the number of lines as needed
                          overflow: TextOverflow
                              .ellipsis, // Specify how to handle overflow
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                      height: 58,
                      width: 342,
                      child: GestureDetector(
                        onTap: _signUp,
                        child: ElevatedButton(
                          onPressed: _signUp,
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(41))),
                          child: const Text(
                            "Daftar",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Sudah Punya Akun?",
                          style: TextStyle(
                            fontFamily: 'Poppins',
                          )),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        child: const Text(
                          " MASUK",
                          style: TextStyle(
                              color: Color(0XFF0074FF), fontFamily: 'Poppins'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1.50,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: 280,
                    height: 70,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 17,
                                  top: 17,
                                  child: Container(
                                    width: 35,
                                    height: 35,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/google.png'))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 210,
                          top: 0,
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 13,
                                  top: 13,
                                  child: Container(
                                    width: 45,
                                    height: 45,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/fb.png'))),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 105,
                          top: 0,
                          child: SizedBox(
                            width: 70,
                            height: 70,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: ShapeDecoration(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        side: BorderSide(
                                          width: 0.50,
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 8,
                                  top: 8,
                                  child: Container(
                                    width: 54,
                                    height: 54,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('assets/images/wa.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    // Check if any of the fields is empty
    if (username.isEmpty || email.isEmpty || password.isEmpty) {
      // Show a dialog to inform the user to fill in all fields.
      _showFillAllFieldsDialog();
      return; // Return early, don't proceed with registration
    }

    // Validate the email format using a regular expression
    if (!_isValidEmail(email)) {
      // Show a dialog to inform the user of the invalid email format
      _showInvalidEmailDialog();
      return; // Return early, don't proceed with registration
    }

    // Check if the password has at least 6 characters
    if (password.length < 6) {
      // Show a dialog to inform the user to use a longer password
      _showShortPasswordDialog();
      return; // Return early, don't proceed with registration
    }

    if (isChechked == true) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // The user is successfully registered
        User? user = userCredential.user;
        if (user != null) {
          if (kDebugMode) {
            print("User registration successful");
          }
          // ignore: use_build_context_synchronously
          Navigator.pushNamed(context,
              "/main_bottom"); // Navigate to the main screen after successful registration
        } else {
          if (kDebugMode) {
            print("Some error occurred during registration");
          }
        }
      } catch (e) {
        if (kDebugMode) {
          print("Error during registration: $e");
        }
        // Handle and display the error to the user, if needed
      }
    } else {
      // Show a dialog to inform the user to accept the terms and conditions.
      _showTermsAndConditionsDialog();
    }
  }

  void _showShortPasswordDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Perhatian!"),
          content:
              const Text("Kata sandi harus terdiri dari minimal 6 karakter."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  bool _isValidEmail(String email) {
    // Define a regular expression pattern for validating email addresses
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    // Use the regex pattern to match the email
    return emailRegex.hasMatch(email);
  }

  void _showInvalidEmailDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Perhatian!"),
          content: const Text(
              "Format email tidak valid. Harap masukkan email yang valid."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showFillAllFieldsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Perhatian!"),
          content: const Text("Harap isi semua kolom."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showTermsAndConditionsDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Terms and Conditions"),
          content: const Text(
              "Anda harus menceklis syarat dan ketentuan untuk mendaftar."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
