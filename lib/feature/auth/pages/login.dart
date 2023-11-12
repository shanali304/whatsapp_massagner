import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_massagner/common/extension/custom_theme_extension.dart';
import 'package:whatsapp_massagner/common/ultis/colors.dart';
import 'package:whatsapp_massagner/common/widgets/Custom_Elevated_Button.dart';
import '../wedget/custom_text_filed.dart';

class LoginPages extends StatefulWidget {
  const LoginPages({super.key});

  @override
  State<LoginPages> createState() => _LoginPagesState();
}

class _LoginPagesState extends State<LoginPages> {
  late TextEditingController countryNameController;
  late TextEditingController countryCodeController;
  late TextEditingController phoneNumberController;

  showCoutryCodePicker(){
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      favorite: ['ET'],
      countryListTheme: CountryListThemeData(
        bottomSheetHeight: 600,
        backgroundColor: Theme.of(context).backgroundColor,
        flagSize: 22,
        borderRadius: BorderRadius.circular(20),
        textStyle: TextStyle(color: context.theme.greyColor),
        inputDecoration: InputDecoration(
          labelStyle: TextStyle(color: context.theme.greyColor),
          prefix: const Icon(
            Icons.language,
            color: Coloors.grenDark,
          ),
        hintText: 'Search country code or name',
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: context.theme.greyColor!.withOpacity(0.2)
          )
        ),
         focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Coloors.grenDark,
          )
        )
        )
      ),
       onSelect: (country){
        countryNameController.text = country.name;
        countryCodeController.text = country.countryCode;

       }
       );
  }
@override
  void initState() {
    countryNameController = TextEditingController(text:  'Pakistan');
    countryCodeController = TextEditingController(text: '92 ');
    phoneNumberController = TextEditingController();
    super.initState();
  }

    @override
  void dispose() {
    countryNameController.dispose();
    countryCodeController.dispose();
    phoneNumberController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        title: Text(
          "Enter your phone number",
          style: TextStyle(color: context.theme.authAppbarTextColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            splashColor: Colors.transparent,
            splashRadius: 22,
            iconSize: 22,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(minWidth: 40),
            icon: Icon(
              Icons.more_vert,
              color: context.theme.greyColor,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: RichText(
                  textAlign: TextAlign.center,
              text: TextSpan(
                text: "whatsapp will need to verify your number. ",
                style: TextStyle(
                  color: context.theme.greyColor,
                  height: 1.5
                ),
                children: [
                  TextSpan(
                    text: "what's my number?",
                    style: TextStyle(
                      color: context.theme.blueColor,
                    )
                  )
                ]
              ) 
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: CustomTextField(
              onTap:  showCoutryCodePicker,
              controller: countryNameController,
              readOnly: true,
              suffixIcon: const Icon(Icons.arrow_drop_down,color: Coloors.grenDark,),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              children: [
                SizedBox(
                  width: 70,
                  child: CustomTextField(
                    onTap: showCoutryCodePicker,
                    controller: countryCodeController,
                    prefixText:' +',
                    readOnly: true,
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: CustomTextField(
                    controller: phoneNumberController,
                    hintText: " phone number",
                    textAlign: TextAlign.left,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            'Carrier charges may apply',
            style: TextStyle(
              color: context.theme.greyColor
            ),
          )

        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomElevatedButton(onPressed: (){}, text: 'NEXT',buttonWidth: 90,),
    );
  }
}
