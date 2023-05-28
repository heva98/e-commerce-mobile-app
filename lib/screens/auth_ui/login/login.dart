import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/screens/auth_ui/sign_up/signup.dart';
import 'package:test/widgets/primary_button/primary_button.dart';
import 'package:test/widgets/top_titles/top_titles.dart';

import '../../../constants/routes.dart';


class  Login extends StatefulWidget {
  const Login({super.key });

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const TopTitles
         (subtitle: "Welcome Back To The App", title: "Login"),
            const SizedBox(
              height: 46.0,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  hintText: "E-mail",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  )
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            TextFormField(
              obscureText: isShowPassword,
              decoration: InputDecoration(
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.password,
                  ),
                  suffixIcon: CupertinoButton(
                    onPressed: (){
                      setState(() {
                        isShowPassword =! isShowPassword;
                      });
                    },
                    padding: EdgeInsets.zero,
                    child: const Icon(Icons.visibility,
                    color: Colors.grey)),
              ),
            ),
            const SizedBox(
              height: 36.0, 
            ),
            PrimaryButton(
              title: "Login",
              onPressed: () {},
              ),
            const SizedBox(
              height: 24.0,
            ),
            const Center(child: Text("Don't have an account?"),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Center(child: CupertinoButton(
            onPressed: () {
              Routes.instance.push(widget: SignUp(), context: context);
            },
            child: Text("Create an account",
            style: TextStyle(color: Theme.of(context).primaryColor),
            ))),
        ],),),
      
    );
  }
}