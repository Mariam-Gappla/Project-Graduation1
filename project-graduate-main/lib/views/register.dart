import 'package:diabetes/helper/show-snack-bar.dart';
import 'package:diabetes/views/glucose_measurement.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? password;
  String? confirmPassword;
  bool isPassword = true;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: ModalProgressHUD(
        inAsyncCall: isLoading,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Center(
                    child: Text(
                  'انشاء حساب',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                )),
                const SizedBox(
                  height: 32,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Text(
                    'الاسم',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomTextField(
                    hint: 'ادخل الاسم ثنائي علي الاقل',
                    prefixIcon: Icons.person,
                    onChange: (data) {
                      name = data;
                    },
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Text(
                    'رقم التلفون /او الايميل',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomTextField(
                    hint: 'ادخل رقم التلفون او الايميل ',
                    prefixIcon: Icons.mail,
                    onChange: (data) {
                      email = data;
                    },
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Text(
                    'كلمه السر',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomTextField(
                    hint: 'ادخل الرقم السري الخاص بيك',
                    prefixIcon:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    onChange: (data) {
                      password = data;
                    },
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Text(
                    'تاكيد كلمه السر',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                const SizedBox(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomTextField(
                    hint: 'ادخل الرقم السري الخاص بيك',
                    prefixIcon:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    suffixPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    type: TextInputType.visiblePassword,
                    isPassword: isPassword,
                    onChange: (data) {
                      confirmPassword = data;
                    },
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 18),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'هل نسيت كلمه السر ؟',
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomButton(
                    text: 'تسجيل الدخول',
                    color: Colors.black,
                    textcolor: Colors.white,
                    onTap: () async {
                      if (_formKey.currentState?.validate() ?? false) {
                        isLoading = true;
                        setState(() {});
                        try {
                          registerUser();
                          Navigator.pop(context);
                        } 
                        on FirebaseAuthException catch (ex) {
                          if (ex.code == 'weak-password') {
                            showSnakBar(context, 'Weak PassWord');
                          } else if (ex.code == 'email-already-in-use') {
                            showSnakBar(context, 'Email Already Exist');
                          }
                          showSnakBar(context, "Succes");
                          // print(ex);
                          // ScaffoldMessenger.of(context).showSnackBar(
                          //   SnackBar(
                          //     content: Text(ex.toString()),
                          //   ),
                          // );
                        } catch (ex) {
                          showSnakBar(context, "Error");
                        }
                      isLoading = false;
                        setState(() {});
                      } else {}
                    },
                  ),
                ),
                const SizedBox(
                  height: 13,
                ),
                const Center(child: Text('او')),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: CustomButton(
                    text: 'تسجيل عن طريق',
                    icon: FontAwesomeIcons.google,
                    textcolor: const Color(0xff4B5768),
                    color: const Color(0xffE4E7EB),
                  ),
                ),
                const SizedBox(
                  height: 68,
                ),
                Center(
                    child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GlucoseMeasurement()),
                    );
                  },
                  child: const Text(
                    'هل لديك حساب بالفعل ؟ تسجيل دخول',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future<void> registerUser() async {
    UserCredential user = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email!, password: password!);
  }
}
