import 'package:flutter/material.dart';
import 'package:flutter_api_methods/riverpod/riverpod_managment.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginState();
}

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login page"),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: ref.read(loginRiverpod).username,
            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                hintText: "username", border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: ref.read(loginRiverpod).password,
            obscureText: true,

            // ignore: prefer_const_constructors
            decoration: InputDecoration(
                hintText: "password", border: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 20.0,
          ),
          SizedBox(
              width: 200.0,
              child: ElevatedButton(
                  onPressed: () {
                    ref.read(loginRiverpod).fetch();
                  },
                  child: Text("login".toUpperCase())))
        ],
      )),
    );
  }
}
