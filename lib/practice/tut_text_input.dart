import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key});

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  var emailInputController = TextEditingController();
  var passwordInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                cursorColor: Colors.deepPurple,
                textAlign: TextAlign.start,
                controller: emailInputController,
                style: Theme.of(context).textTheme.headline4,
                textCapitalization: TextCapitalization.characters,
                onChanged: (textString) {
                  print("------------------$textString-");
                },
                decoration: InputDecoration(
                    hintText: "Enter your emailId here",
                    hintStyle: Util.regularTextStyle(
                        textColor: Colors.blueGrey, fontSize: 25),
                    labelText: "Email Address",
                    labelStyle: Util.regularTextStyle(
                        textColor: Colors.deepPurple, fontSize: 25),
                    fillColor: Colors.lightGreenAccent,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    errorStyle: Util.regularTextStyle(textColor: Colors.red),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                    focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2)),
                    disabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                    enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2))),
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                cursorColor: Colors.deepPurple,
                textAlign: TextAlign.start,
                controller: passwordInputController,
                style: Theme.of(context).textTheme.headline4,
                obscureText: true,
                obscuringCharacter: "#",
                decoration: InputDecoration(
                    hintText: "Enter your password here",
                    hintStyle: Util.regularTextStyle(
                        textColor: Colors.blueGrey, fontSize: 25),
                    fillColor: Colors.lightGreenAccent,
                    labelText: "Password",
                    labelStyle: Util.regularTextStyle(
                        textColor: Colors.deepPurple, fontSize: 25),
                    prefixIcon: Icon(
                      Icons.password_outlined,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove_red_eye,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                      style: ButtonStyle(),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.deepPurple, width: 2)),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.grey, width: 2)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide:
                            BorderSide(color: Colors.black87, width: 2))),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      String email = emailInputController.text.toString();
                      String password = passwordInputController.text.toString();
                      _handleSubmitButtonClick(email, password);
                    },
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.deepPurple),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18, bottom: 18),
                      child: Text(
                        "Submit",
                        style: Util.headerTitleTextStyle(
                            textColor: Colors.white, fontSize: 25),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _handleSubmitButtonClick(String email, String password) {
    print("email : $email   password : $password");
  }
}
