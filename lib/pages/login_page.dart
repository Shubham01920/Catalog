import 'package:catalog/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/sign_up.png",
            fit: BoxFit.cover,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Name", labelText: "Username"),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    }),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter Your Password",
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoutes);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      // shape:
                      //     changeButton ? BoxShape.circle : BoxShape.rectangle
                      borderRadius:
                          BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                    child: changeButton
                        ? Icon(
                            Icons.done,
                            color: Colors.white,
                          )
                        : Text(
                            "Login",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                color: Colors.white),
                          ),
                  ),
                ),
                // ElevatedButton(
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     backgroundColor: Colors.deepPurpleAccent.shade400,
                //     minimumSize: Size(120, 40),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
                //   },
                //   child: Text(
                //     "Login",
                //   ),
                // ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
