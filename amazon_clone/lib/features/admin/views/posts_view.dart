import 'package:amazon_clone/features/admin/views/add_product_view.dart';
import 'package:flutter/material.dart';

class PostsView extends StatefulWidget {
  const PostsView({super.key});

  @override
  State<PostsView> createState() => _PostsViewState();
}

class _PostsViewState extends State<PostsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Products'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, AddProductView.routeName);
        },
        tooltip: 'Add a Product',
        backgroundColor: const Color.fromARGB(255, 29, 201, 192),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
