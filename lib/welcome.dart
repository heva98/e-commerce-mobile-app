import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/constants/asset_images.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          // start on axis
          padding: const EdgeInsets.all(12.0),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //drop downthe height from top
            const SizedBox(
              height: kToolbarHeight + 12,
            ),
            const Text("Welcome", style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold,
            )),
            const SizedBox(
              height: 12,
            ),
            const Text("Buy from my app", style: TextStyle(
              fontSize: 18.0,
            )),
            Center(
            child: Image.asset(AssetsImages.instance.welcomeImage),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
            CupertinoButton(
              onPressed: (){},
              padding: EdgeInsets.zero,
              child: const Icon(Icons.facebook,
              size: 35,
              color: Colors.blue,),
            ),
            const SizedBox(
              width: 12.0,
            ),
            CupertinoButton(
              onPressed: (){},
              padding: EdgeInsets.zero,
              child: Image.asset(
                AssetsImages.instance.googleLogo,
                scale: 5.0,
              ),
            ),
              ],
            ),
            const SizedBox(height:18.0),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Login"),
              ),

            )
            ],
          ),
    ));
  }
}

