import 'package:amazon_clone/common/widgets/stars_bar.dart';
import 'package:amazon_clone/features/productdetails/views/product_details_view.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:flutter/material.dart';

class SearchedProduct extends StatelessWidget {
  final Product product;
  const SearchedProduct({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    double totalRating = 0;
    for (int i = 0; i < product.rating!.length; i++) {
      totalRating += product.rating![i].rating;
    }
    double avgRating = 0;
    if (totalRating != 0) {
      avgRating = totalRating / product.rating!.length;
    }

    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductDetailsView.routeName,
          arguments: product,
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5, top: 10, right: 5),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black12,
              width: 1.5,
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.network(
                      product.images[0],
                      fit: BoxFit.contain,
                      height: 130,
                      width: 130,
                    ),
                    Column(
                      children: [
                        Container(
                          width: 200,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          width: 200,
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: StarsBar(
                            rating: avgRating,
                          ),
                        ),
                        Container(
                          width: 200,
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: Text(
                            '\u20B9 ${product.price}',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                          ),
                        ),
                        Container(
                          width: 200,
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            'Eligible for FREE Shipping',
                            style: TextStyle(
                              color: Color.fromARGB(255, 18, 129, 22),
                            ),
                          ),
                        ),
                        Container(
                          width: 200,
                          padding: const EdgeInsets.only(left: 10, top: 5),
                          child: const Text(
                            'In stock',
                            // style: TextStyle(
                            //   color: Colors.teal,
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
