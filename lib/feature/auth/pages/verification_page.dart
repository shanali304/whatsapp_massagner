import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:whatsapp_massagner/common/extension/custom_theme_extension.dart';

class VerificataionPage extends StatefulWidget {
  const VerificataionPage({super.key});

  @override
  State<VerificataionPage> createState() => _VerificataionPageState();
}

class _VerificataionPageState extends State<VerificataionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        title: Text
        ('Verify your number',
        style: TextStyle(color: context.theme.authAppbarTextColor),
        
        ),
        centerTitle: true,
        actions: [
          CustomIconButton(onPressed: (){},
           icon: Icons.more_vert
           )

          
        ],
      ),
    );
  }
  
  CustomIconButton({required Null Function() onPressed, required IconData icon}) {}
}