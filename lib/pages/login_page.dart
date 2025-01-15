import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
            "Welcome",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
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
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    labelText: "Enter Your Password",
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.deepPurpleAccent.shade400,
                  ),
                  onPressed: () {},
                  child: Text(
                    "Login",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
