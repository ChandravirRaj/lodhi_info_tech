import 'dart:developer';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lodhi_info_tech/utils/constants.dart';
import 'package:lodhi_info_tech/utils/util.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput({super.key});

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  var emailInputController = TextEditingController();
  var passwordInputController = TextEditingController();

  bool _obscureText = true;
  var emailErrorText;
  var emailErrorMessage = "";

  void toggleEye() {
    setState(() {
      if (_obscureText) {
        _obscureText = false;
      } else {
        _obscureText = true;
      }
    });
  }

  void setErrorMessage(){
    setState(() {
      emailErrorText = emailErrorMessage;
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void activate() {
    super.activate();
  }

  @override
  void deactivate() {
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.lightGreen.shade100,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                cursorColor: Colors.deepPurple,
                textAlign: TextAlign.start,
                controller: emailInputController,
                style: Theme.of(context).textTheme.headline4,
                textCapitalization: TextCapitalization.characters,
                autofocus: true,
                textInputAction: TextInputAction.next,
                onChanged: (textString) {
                  print("---------textString---------$textString-");
                },
                decoration: InputDecoration(
                    hintText: Constants.hintEnterEmailAddress,
                    hintStyle: Util.regularTextStyle(
                        textColor: Colors.blueGrey, fontSize: 25),
                    labelText: Constants.lebelEmailAddress,
                    labelStyle: Util.regularTextStyle(
                        textColor: Colors.deepPurple, fontSize: 25),
                    fillColor: Colors.lightGreenAccent,
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    errorText: emailErrorText,
                    errorStyle: Util.regularTextStyle(textColor: Colors.red),
                    errorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        borderSide: BorderSide(color: Colors.red, width: 2)),

                    focusedErrorBorder:  const OutlineInputBorder(
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
              const SizedBox(
                height: 30,
              ),
              TextField(
                cursorColor: Colors.deepPurple,
                textAlign: TextAlign.start,
                controller: passwordInputController,
                style: Theme.of(context).textTheme.headline4,
                obscureText: _obscureText,
                obscuringCharacter: "#",
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                    hintText: Constants.hintEnterPassword,
                    hintStyle: Util.regularTextStyle(
                        textColor: Colors.blueGrey, fontSize: 25),
                    fillColor: Colors.lightGreenAccent,
                    labelText: Constants.lebelPassword,
                    labelStyle: Util.regularTextStyle(
                        textColor: Colors.deepPurple, fontSize: 25),
                    prefixIcon: const Icon(
                      Icons.password_outlined,
                      color: Colors.deepPurple,
                      size: 30,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        toggleEye();
                      },
                      icon: const Icon(
                        Icons.remove_red_eye,
                        size: 30,
                        color: Colors.deepPurple,
                      ),
                      style: const ButtonStyle(),
                    ),
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
                        Constants.textSubmit,
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

  @override
  void dispose() {
    emailInputController.dispose();
    passwordInputController.dispose();
    super.dispose();
  }

  void _handleSubmitButtonClick(String email, String password) {


    if (email.isEmpty) {
      emailErrorMessage = Constants.errorMessageEnterEmail;
      setErrorMessage();
    } else {
      var isEmailValid = EmailValidator.validate(email);

      if (isEmailValid) {
      } else {
        emailErrorMessage = Constants.errorMessageEnterValidEmail;
        setErrorMessage();
      }
    }

    var isValidPassword = Util.validateStructure(password);
    if (isValidPassword) {
    } else {
      var error = Util.validatePassword(password);
    }
  }
}
