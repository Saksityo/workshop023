import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  Future whensubmit() async {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 232, 24, 24),
        title: Text("Create you accounts"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Password",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "fullname",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "email",
                      style: TextStyle(fontSize: 20),
                    ),
                    TextFormField(),
                    SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 40, 242, 63)),
                          onPressed: () => whensubmit(),
                          child: Text(
                            "Register",
                            style: TextStyle(fontSize: 20),
                          )),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
