import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> queryParameters = context.vRouter.queryParameters;
    final String title = queryParameters[CatalogRouter.detailsScreenTitleParam] ?? '';
    final String price = queryParameters[CatalogRouter.detailsScreenPriceParam] ?? '';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Text('$title $price'),
      ),
    );
  }
}
