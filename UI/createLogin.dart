import 'package:flutter/material.dart';


class CreateLogin extends StatefulWidget {

  @override
  State<CreateLogin> createState() => _CreateLoginState();
}

enum auth { login, signup }

class _CreateLoginState extends State<CreateLogin> {
  GlobalKey<FormState> formKey = GlobalKey();
  Map data = {'email': '', 'password': ''};

  auth mode = auth.login;
  var passwordControl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'enter email address', labelText: 'E-mail'),
                      validator: (valu) {
                        if (valu!.isEmpty == true || !valu.contains('@'))
                          return 'Invalid Email';
                        else
                          return null;
                      },
                      onSaved: (val) {
                        data['email'] = val!;
                        print(data['email']);
                      },
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: 'enter Password', labelText: 'Password'),
                      validator: (valu) {
                        if (valu!.isEmpty == true || valu.length < 6)
                          return 'Invalid Password';
                        else
                          return null;
                      },
                      controller: passwordControl,
                      onSaved: (val) {
                        data['password'] = val!;
                        print(data['password']);
                      },
                    ),
                    if (mode == auth.signup)
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Re Enter Password',
                            labelText: 'Password Confirm'),
                        validator: (valu) {
                          if (valu != passwordControl!.text)
                            return "Password Doesn't Match";
                          else
                            return null;
                        },
                        onSaved: (val) {
                          data['password'] = val!;
                          print(data['password']);
                        },
                      ),
                    ElevatedButton(
                      onPressed: () {
                        if (!formKey.currentState!.validate()) return null;
                        formKey.currentState!.save();
                      },
                      child: Text(mode == auth.login ? 'Log In' : 'Sign UP'),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        setState(() {
                          if (mode == auth.login)
                            mode = auth.signup;
                          else
                            mode = auth.login;
                        });
                      },
                      child: Text(
                          'Switch to ${mode == auth.login ? 'Sign UP' : 'Log In'}'),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}