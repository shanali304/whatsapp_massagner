import 'package:flutter/material.dart';
import 'package:whatsapp_massagner/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_massagner/common/ultis/colors.dart';

import '../../../common/widgets/Custom_Elevated_Button.dart';
import '../widgets/Privacy_And_Terms.dart';
import '../widgets/language_button.dart';
 class WelcomePage extends StatelessWidget {
   const WelcomePage({super.key});
 
   @override
   Widget build(BuildContext context) {
     return Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50 , vertical: 10),
                  child: Image.asset(
                    'assets/images/circle.png',
                    color:context.theme.circleImageColor,
                    ),
                ),
              )
              ),
              const SizedBox(height: 40,),
              Expanded(
                child: Column(
                  children:  [
                     const Text(
                      "Welcome to WhatsApp",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    const PrivacyAndTerms(),
                     CustomElevatedButton(onPressed: (){},text: 'AGREE AND CONTINUE',),
                    const SizedBox(height: 50,),
                  const  languageButoon()
                  ],
                )
                )
          ],
        )
     );
   }
 }
