import 'package:flutter/material.dart';

import '../../../../common/styles/spacing_styles.dart';
import '../../../../helpers/helper_functions.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context){
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// logo, title, sub-title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  )
                  Text(TTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// form
              Form(child: Column(
                children:[
                  /// email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right), labelText: TTexts.email,),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields,),

                  /// password
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2,),

                  /// remember me & forget password
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value){}),
          const Text(TTexts.rememberMe),
                    ],
                  )
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}