import 'dart:io';
import 'package:amazon_clone/common/widgets/custom_button.dart';
import 'package:amazon_clone/common/widgets/custom_textfield.dart';
import 'package:amazon_clone/constants/global_variables.dart';
import 'package:amazon_clone/constants/utils.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AddProductView extends StatefulWidget {
  static const String routeName = '/add-product';
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController productDescriptionController =
      TextEditingController();
  final TextEditingController productPriceController = TextEditingController();
  final TextEditingController productQuantityController =
      TextEditingController();

  @override
  void dispose() {
    productNameController.dispose();
    productDescriptionController.dispose();
    productPriceController.dispose();
    productQuantityController.dispose();
    super.dispose();
  }

  String category = 'Mobiles';
  List<File> images = [];

  List<String> productCategories = [
    'Mobiles',
    'Essentials',
    'Electronics',
    'Appliances',
    'Books',
    'Fashion',
  ];

  void selectImages() async {
    var res = await pickImages();
    setState(() {
      images = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.AppBarGradient,
            ),
          ),
          title: const Text(
            'Add Product',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              //fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 20),
                images.isNotEmpty
                    ? CarouselSlider(
                        items: images.map(
                          (img) {
                            return Builder(
                              builder: (BuildContext context) => Image.file(
                                img,
                                fit: BoxFit.cover,
                                height: 200,
                              ),
                            );
                          },
                        ).toList(),
                        options: CarouselOptions(
                          viewportFraction: 1,
                          height: 160,
                        ),
                      )
                    : GestureDetector(
                        onTap: selectImages,
                        child: DottedBorder(
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          dashPattern: const [10, 4],
                          strokeCap: StrokeCap.round,
                          child: Container(
                            width: double.infinity,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.folder_open,
                                  size: 40,
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  'Select Product Images',
                                  style: TextStyle(
                                    color: Colors.grey.shade400,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                const SizedBox(height: 30),
                CustomTextField(
                  controller: productNameController,
                  hintText: 'Product Name',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: productDescriptionController,
                  hintText: 'Description',
                  maxLines: 4,
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: productPriceController,
                  hintText: 'Price',
                ),
                const SizedBox(height: 10),
                CustomTextField(
                  controller: productQuantityController,
                  hintText: 'Quantity',
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: DropdownButton(
                    value: category,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: productCategories.map((String item) {
                      return DropdownMenuItem(
                        value: item,
                        child: Text(item),
                      );
                    }).toList(),
                    onChanged: (String? setItem) {
                      setState(() {
                        category = setItem!;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 10),
                CustomButton(
                  text: 'Sell',
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
