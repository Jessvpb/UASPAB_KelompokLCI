
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_uas/common/widgets/icons/circular_icon.dart';
import 'package:project_uas/utils/constants/colors.dart';
import 'package:project_uas/utils/constants/sized.dart';
import 'package:project_uas/utils/helpers/helper_function.dart';

class BBottomAddToCart extends StatelessWidget {
  const BBottomAddToCart({
    super. key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = BHelperFunctions. isDarkMode(context);

    return Container(
      padding: const EdgeInsets. symmetric(horizontal: BSize.defaultSpace, vertical: BSize.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? BColors.darkerGrey : BColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(BSize.cardRadiusLg),
          topRight: Radius.circular(BSize.cardRadiusLg)
      )),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row (
            children: [
              const BCircularIcon(
                icon: Iconsax.minus,
                backgroundcolor: BColors.darkGrey,
                width: 40,
                height: 40,
                color: BColors.white,
              ),
              const SizedBox(width: BSize.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: BSize.spaceBtwItems),
              const BCircularIcon(
                icon: Iconsax.add,
                backgroundcolor: BColors.black,
                width: 40,
                height: 40,
                color: BColors. white,
              ),
            ]
          ),  
          ElevatedButton (
            onPressed: () {},
            style: ElevatedButton. styleFrom(
            padding: const EdgeInsets.all(BSize.md),
            backgroundColor: BColors.black,
            side: const BorderSide(color: BColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ]
      )
    );
  }
}
