import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:seaesplore/models/authModel.dart';

class LoginScreenUser extends StatefulWidget {
  const LoginScreenUser({super.key});

  @override
  State<LoginScreenUser> createState() => _LoginScreenUserState();
}

class _LoginScreenUserState extends State<LoginScreenUser> {
  @override
  Widget build(BuildContext context) {
    final loginAuth = Provider.of<AuthModel>(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              const Color(0xFFA5C4D4).withOpacity(0.5),
              BlendMode.srcATop,
            ),
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  const Text(
                    "SeaEsplore",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Scopri le migliori  destinazioni \n estive e avventure sul mare.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 35, bottom: 8, top: 45),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(
                                color: Color.fromRGBO(27, 38, 59, 1),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 340,
                          height: 51,
                          child: TextField(
                            onChanged: (value) => loginAuth.setEmail(value),
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              focusColor: const Color.fromRGBO(27, 38, 59, 1),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              border: InputBorder.none,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                  color: Color.fromRGBO(27, 38, 59, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 30, bottom: 10, top: 60),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: Color.fromRGBO(27, 38, 59, 1),
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 340,
                          height: 51,
                          child: TextField(
                            onChanged: (value) => loginAuth.setPassword(value),
                            textAlign: TextAlign.left,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              fillColor: Colors.white,
                              filled: true,
                              focusColor: const Color.fromRGBO(27, 38, 59, 1),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              border: InputBorder.none,
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(27, 38, 59, 1)),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 30, top: 10),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: InkWell(
                              onTap: () => {},
                              child: const Text(
                                "Password Dimenticata?",
                                style: TextStyle(
                                  color: Color.fromRGBO(27, 38, 59, 1),
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 95, left: 40, right: 40),
                        child: ElevatedButton(
                          onPressed: (){ 
                           loginAuth.login();
                            if (loginAuth.message == 'Accesso eseguito') {
                              Get.toNamed('/HomeScreenUser');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(370, 51),
                            backgroundColor: const Color(0xFF1B263B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Accedi",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 21),
                      Container(
                        padding: const EdgeInsets.only(),
                        child: const Text(
                          "Oppure",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      const SizedBox(height: 21),
                      Padding(
                        padding: const EdgeInsets.only(left: 40, right: 40),
                        child: ElevatedButton(
                          onPressed: () => {
                            Get.toNamed('/RegistrationScreenUser')
                          },
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(370, 51),
                            backgroundColor: const Color(0xFF1B263B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            "Registrati",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                    ],
                  ),
                   Text(
              loginAuth.message,
              style: const TextStyle(color: Colors.red),
            ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
