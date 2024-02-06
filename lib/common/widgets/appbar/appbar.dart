import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:store_app_e_com/utils/device/device_utility.dart';
import 'package:store_app_e_com/utils/helpers/helper_functions.dart';
import '../../../utils/constants/sizes.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// Custom appbar to achieve desired design goal.
  /// Bool type [showBackArrowIcon] to hide or show leading Icon with a default back Icon.
  /// For Custom Leading Icon, pass icon to [leadingIcon] property.
  /// [title] used to set custom title of the appbar.
  /// [actions] you can pass any list of desired actions List<Widgets>
  /// You can customize Horizontal Padding of Appbar inside this Widget.
  const TAppBar({
    super.key,
    this.showBackArrowIcon = true,
    this.leandingIcon,
    this.title,
    this.actions,
    this.leandingIconOnPressed,
  });

  final bool showBackArrowIcon;
  final IconData? leandingIcon;
  final Widget? title;
  final List<Widget>? actions;
  final VoidCallback? leandingIconOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrowIcon
            ? IconButton(
                onPressed: leandingIconOnPressed ??
                    (showBackArrowIcon ? () => Get.back() : null),
                icon: Icon(
                  leandingIcon ??
                      (showBackArrowIcon ? Iconsax.arrow_left : null),
                  color: THelperFunctions.isDarkMode(context)
                      ? kDefaultIconLightColor
                      : kDefaultIconDarkColor,
                ),
              )
            : null,
            title: title,
            actions: actions,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());

}
