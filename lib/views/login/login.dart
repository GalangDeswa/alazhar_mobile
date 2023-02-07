import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login/loginController.dart';


class login extends GetView<loginController> {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg_login.png'),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [texfield()],
            ),
          )
        ]),
      ),
    );
  }

  Widget texfield() {
    return SafeArea(
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100),
                  width: 250,
                  height: 230,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/images/logo1.png'))),
                ),
                Text(
                  'Al-Azhar',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 330,
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Form(
                      key: controller.formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                labelText: "Email",
                                labelStyle: TextStyle(
                                  color: Colors.black87,
                                ),
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              textAlign: TextAlign.center,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains("@")) {
                                  return 'Please a valid email';
                                }
                                return null;
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 25),
                            child: TextFormField(
                              obscureText: true,

                              onChanged: ((String pass) {

                              }),
                              decoration: InputDecoration(
                                labelText: "password",
                                labelStyle: TextStyle(
                                  color: Colors.black87,
                                ),
                                border: UnderlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              textAlign: TextAlign.center,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter password';
                                }
                                return null;
                              },
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 300,
                              margin: EdgeInsets.only(top: 30),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  color: Colors.blue),
                              child: ElevatedButton(
                                child: FittedBox(
                                    child: Text(
                                      'login',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                      textAlign: TextAlign.center,
                                    )),
                                onPressed: () {
                                  Get.offAndToNamed('/base_menu');
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 30,
                ),
                RichText(
                    text: TextSpan(
                        text: 'Tidak punya akun? ',
                        style: TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Daftar akun baru',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.toNamed('/register');
                                },
                              style: TextStyle(color: Colors.blue))
                        ]))
              ],
            ),
          )
        ],
      ),
    );
  }
}
