// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:shrine/theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool emailerrors = false;
  bool passworderrors = false;
  bool validform = false;
  String emailmessage = '';
  String passwordmessage = '';

  // login function
  void _loginUser() {
    // ready login from
    if (_userNameController.text.isEmpty) {
      setState(() {
        emailerrors = true;
        emailmessage = 'Empty Email';
        validform = false;
      });
    } else {
      setState(() {
        emailerrors = false;
        emailmessage = '';
        validform = true;
      });
    }
    if (_passwordController.text.isEmpty) {
      setState(() {
        passworderrors = true;
        passwordmessage = 'Password Empty';
        validform = false;
      });
    } else {
      setState(() {
          passworderrors = false;
          passwordmessage = '';
          validform = true;
      });
    
    }
    if (validform) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text("Successfully Logged In,Welcome Back"),
        backgroundColor: Colors.green.shade600,
      ));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            const SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                const SizedBox(height: 16.0),
                Text(
                  'Kipbz Collections',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ],
            ),
            const SizedBox(height: 120.0),
            TextField(
              controller: _userNameController,
              decoration: const InputDecoration(labelText: "UserName"),
            ),
            emailerrors
                ? Text(
                    emailmessage,
                    style: const TextStyle(color: Colors.red),
                  )
                : const Text(''),
            const SizedBox(height: 12.0),
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: "Password"),
              obscureText: true,
            ),
            passworderrors
                ? Text(
                    passwordmessage,
                    style: const TextStyle(color: Colors.red),
                  )
                : const Text(''),
            const SizedBox(height: 12.0),
            OverflowBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      _userNameController.clear();
                      _passwordController.clear();
                    },
                    style: TextButton.styleFrom(
                        primary: Theme.of(context).colorScheme.secondary),
                    child: const Text("Clear")),
                ElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);

                    _loginUser();
                  },
                  child: const Text("Next"),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: kKipbzCollectionsBrown900,
                      backgroundColor: kKipbzCollectionsPink100,
                      elevation: 8.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
