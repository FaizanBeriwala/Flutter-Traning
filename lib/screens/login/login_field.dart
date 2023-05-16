import 'package:flutter/material.dart';

class LoginField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputFieldWidget();
}

class _InputFieldWidget extends State<LoginField> {
  var _passwordVisible = false;
  var _email = "";
  var _password = "";

  @override
  Widget build(BuildContext context) {
    return Column(
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
            obscureText: !_passwordVisible,
            //This will obscure text dynamically,
            onChanged: (text) {
              setState(() {
                _password = text;
              });
            },
            decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                hintStyle: const TextStyle(color: Colors.grey),
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                    icon: Icon(_passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off))),
          ),
        )
      ],
    );
  }
}