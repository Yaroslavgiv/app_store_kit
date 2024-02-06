import 'package:flutter/material.dart';
import 'package:store_app_e_com/utils/constants/colors.dart';
import 'package:store_app_e_com/utils/constants/text_strings.dart';
import 'package:store_app_e_com/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/sizes.dart';

class TTermsConditionCheckbox extends StatelessWidget {
  const TTermsConditionCheckbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 24,
            height: 24,
            child: Checkbox(value: true, onChanged: (value) {})),
        const SizedBox(height: TSizes.md),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                  text: '${TTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.primary,
                    ),
              ),
              TextSpan(
                  text: ' ${TTexts.and} ',
                  style: Theme.of(context).textTheme.bodySmall),
              TextSpan(
                text: TTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: THelperFunctions.isDarkMode(context)
                          ? TColors.white
                          : TColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
