import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:project_uas/common/widgets/texts/section_heading.dart';
import 'package:project_uas/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:project_uas/features/shop/screens/product_details/widgets/product_atributtes.dart';
import 'package:project_uas/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:project_uas/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:project_uas/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:project_uas/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:project_uas/utils/constants/sized.dart';
import 'package:readmore/readmore.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BBottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Product Image Slider
            const BProductImageSlider(),

            // Image Product Detaill
            Padding(
              padding: const EdgeInsets.only(right: BSize. defaultSpace, left: BSize. defaultSpace, bottom: BSize.defaultSpace),
              child: Column(
                children: [
                  /// Rating & Share Button
                  const BRatingAndShare(),

                  // Produk Detail
                  const BProductMetaData(),

                  // Atribut
                  const BProductAttributes(),
                  const SizedBox(height: BSize.spaceBtwSections),

                  // check out buton
                  SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Checkout'))),
                  const SizedBox(height: BSize.spaceBtwSections),

                  // descripton
                  const BSectionHeading(title: 'Description', showActionButton: false),
                  const SizedBox(height:  BSize.spaceBtwItems),
                  const ReadMoreText(
                    '''● Brand: AMARON GO
● Type: Maintenance Free / MF
● Battery Size/Code: NS40ZL / 38B20L
● Spec: 12V 35Ah CCA 265A
● Condition: NEW

Introducing the Amaron AGS Battery – your ultimate power source for an uncompromised driving experience, now fortified with the innovative Dura Frame technology. With a legacy of excellence and innovation, Amaron AGS is engineered to deliver unrivalled performance and unwavering reliability.

Suitable for;
● PERODUA: Myvi, Axia, Alza, Bezza, Viva, Kancil, Kenari, Rusa, Kembara
● PROTON: Ertiga
● HONDA: City, Jazz, CRZ, Freed, BRV
● KIA: Picanto
● TOYOTA: Rush''',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show More',
                    trimExpandedText: ' Less',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),

                  // review 
                  const Divider(),
                  const SizedBox(height: BSize.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BSectionHeading(title: 'Review (0)',),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                    ],
                  ),
                  const SizedBox(height: BSize.spaceBtwSections),
                ]
              ),
            ),
          ]
        ),
      ),
    );
  }
}



