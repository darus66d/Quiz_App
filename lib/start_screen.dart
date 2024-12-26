import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/Screenshot_2.png",width:300,),
            const SizedBox(height: 60,),
            const Text("Learn Flutter the fun way",
              style: TextStyle(color: Colors.white,
                  fontSize: 24),
            ),
            const SizedBox(height: 20,),


          ],
        ),
    );
  }
}
