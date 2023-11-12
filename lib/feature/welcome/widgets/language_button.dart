import 'package:flutter/material.dart';
import 'package:whatsapp_massagner/common/extension/custom_theme_extension.dart';

import '../../../common/ultis/colors.dart';

class languageButoon extends StatelessWidget {
  const languageButoon({
    Key? key,
  }) : super(key: key);

    showBottomSheet(context){
      return showModalBottomSheet(
        context: context,
         builder: (context){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4,
                  width: 30,
                  decoration: BoxDecoration(
                    color: context.theme.greyColor!.withOpacity(0.4)
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    const SizedBox(width: 20,),
                    IconButton(
                      onPressed: ()=>Navigator.of(context).pop(),
                      splashColor: Colors.transparent,
                      splashRadius: 22,
                      iconSize: 22,
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(minWidth: 40),
                       icon: const Icon(
                        Icons.close_outlined,
                        color: Coloors.greyDark,
                        ),
                    ),
                    const SizedBox(width: 10,),
                    const Text(
                      "App Lanuage",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      )
                  ],
                ),
                 const SizedBox(height: 20),
                 Divider( 
                  color: context.theme.greyColor!.withOpacity(0.3),
                  thickness: .5,
                 ),
                 RadioListTile(
                  value: true, 
                  groupValue: true, 
                  onChanged: (value){},
                  title:  const Text("English"),
                  subtitle: Text(
                    "(US state)",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                    ),
                  ),
                   RadioListTile(
                  value: true, 
                  groupValue: false, 
                  onChanged: (value){},
                  title:  const Text("Urdu"),
                  subtitle: Text(
                    "(Pakistan)",
                    style: TextStyle(
                      color: context.theme.greyColor,
                    ),
                    ),
                  ),

              ],
            ),
          );
          }
         );

    }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBtnBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langBtnHighlightColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(
                Icons.language,
                color: Coloors.grenDark,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "English",
                style: TextStyle(color: Coloors.grenDark),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Coloors.grenDark,
              )
            ],
          ),
        ),
      ),
    );
  }
}
