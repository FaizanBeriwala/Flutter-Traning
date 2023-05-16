import 'package:flutter/material.dart';

import '../common/button.dart';

class RegisterField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegisterWidget();
}

class _RegisterWidget extends State<RegisterField> {
  var passwordToggle = false;
  var confirmPasswordToggle = false;
  var _email = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                    labelText: "First Name",
                    hintText: "Enter your First Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "Last Name",
                    hintText: "Enter your Last Name",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.datetime,
                decoration: const InputDecoration(
                    labelText: "Date of Birth",
                    hintText: "Enter your Date of Birth",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                obscureText: !passwordToggle,
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordToggle = !passwordToggle;
                          });
                        },
                        icon: Icon(passwordToggle
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              // decoration: BoxDecoration(
              //     border: Border(bottom: BorderSide(color: Colors.grey.shade200))),
              child: TextField(
                obscureText: !confirmPasswordToggle,
                onChanged: (value) {
                  setState(() {
                    _email = value;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: "Confirm Password",
                    hintText: "Enter your confirm password",
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            confirmPasswordToggle = !confirmPasswordToggle;
                          });
                        },
                        icon: Icon(confirmPasswordToggle
                            ? Icons.visibility
                            : Icons.visibility_off))),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Button(
              buttonName: "SignUp",
            ),
          ],
        ),
      ),
    );
  }
}
