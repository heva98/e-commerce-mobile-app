import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/constants/routes.dart';
import 'package:test/screens/home/home.dart';
import 'package:test/widgets/primary_button/primary_button.dart';
import 'package:test/widgets/top_titles/top_titles.dart';


class  SignUp extends StatefulWidget {
  const SignUp({super.key });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const TopTitles
           (subtitle: "Welcome Back To The App", title: "Create Account"),
              const SizedBox(
                height: 12.0,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(
                      Icons.person,
                    )
                ),
              ),
              const SizedBox(
                height: 12.0,
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
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    hintText: "Phone",
                    prefixIcon: Icon(
                      Icons.phone_outlined,
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
                height: 24.0,
              ),
              PrimaryButton(
                title: "Create an account",
                onPressed: () {
                  Routes.instance.pushAndRemoveUntil(widget: const Home(), context: context);
                },
                ),
              const SizedBox(
                height: 12.0,
              ),
              const Center(child: Text("I have an account already."),
              ),
              const SizedBox(
                height: 6.0,
              ),
              Center(
                child: CupertinoButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
              child: Text("Login",
              style: TextStyle(color: Theme.of(context).primaryColor),
              ))),
          ],),),
      ),
      
    );
  }
}