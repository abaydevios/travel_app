// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_element, library_private_types_in_public_api, unused_local_variable, prefer_const_declarations, unnecessary_const, unused_import, avoid_init_to_null, prefer_const_constructors_in_immutables

import 'package:astana_city/Theme/app_button_style.dart';
import 'package:astana_city/widgets/main_screen/main_screen_widget.dart';
import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({Key? key}) : super(key: key);

  @override
  _AuthWidgetState createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login to your account')),
      body: ListView(children: [
        _HeaderWidget(),
      ]),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(fontSize: 16, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 25),
          Text('NOMAD',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 187, 138, 31),
              )),
          SizedBox(height: 25),
          Text(
            'Welcome to Kazakhstan! We are happy that you came to us! For convenient use of the application, we recommend registering',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: Text('Registration')),
          SizedBox(height: 25),
          Text(
            'If you are already registered, please authorization',
            style: textStyle,
          ),
          SizedBox(height: 5),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: Text('Authorization')),
          SizedBox(height: 50),
          _FormWidget()
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  _FormWidget({Key? key}) : super(key: key);

  @override
  _FormWidgetState createState() => _FormWidgetState();
}

class _FormWidgetState extends State<_FormWidget> {
  final _loginTextController = TextEditingController(text:'admin');
  final _passwordTextController = TextEditingController(text:'admin');
  String? errorText = null;
  void _auth() {
    final login = _loginTextController.text;
    final password = _passwordTextController.text;
    if (login == 'admin' && password == 'admin') {
      errorText = null;
      Navigator.of(context).pushReplacementNamed('/main_screen');
    } else {
      errorText = 'Wrong login or password';
    }
    setState(() {});
  }

  void _resetPassword() {
    print('reset password');
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(
        fontSize: 16, color: Color.fromARGB(255, 108, 108, 108));
    final color = Color.fromARGB(255, 234, 198, 57);

    final textFieldDecorator = const InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      isCollapsed: true,
    );
    final errorText = this.errorText;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (errorText != null) ...[
          Text(errorText,
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
              )),
          SizedBox(height: 20)
        ],
        Text('Username', style: textStyle),
        SizedBox(height: 5),
        TextField(
            controller: _loginTextController, decoration: textFieldDecorator),
        SizedBox(height: 20),
        Text('password', style: textStyle),
        SizedBox(height: 5),
        TextField(
          controller: _passwordTextController,
          decoration: textFieldDecorator,
          obscureText: true,
        ),
        SizedBox(height: 30),
        Row(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(color),
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 16, fontWeight: FontWeight.w800)),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 8,
                    ),
                  )),
              onPressed: _auth,
              child: Text('Login'),
            ),
            SizedBox(
              width: 30,
            ),
            TextButton(
              onPressed: _resetPassword,
              style: AppButtonStyle.linkButton,
              child: Text('Reset password'),
            ),
          ],
        )
      ],
    );
  }
}
