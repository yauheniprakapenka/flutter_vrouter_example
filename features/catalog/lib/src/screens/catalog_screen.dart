import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../models/game_details.dart';

class CatalogScreen extends StatelessWidget {
  static const List<GameDetails> _gameDetailsList = [
    GameDetails(title: 'Apple', price: r'2$'),
    GameDetails(title: 'Tomato', price: r'3$'),
  ];

  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catalog Screen'),
        actions: [
          IconButton(
            onPressed: () {
              context.vRouter.to(SettingsRouter.audioSettingsFirstScreenPath);
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        children: [
          ..._gameDetailsList.map(
            (GameDetails gameItem) {
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  context.vRouter.to(
                    CatalogRouter.detailsScreenPath,
                    queryParameters: {
                      CatalogRouter.detailsScreenTitleParam: gameItem.title,
                      CatalogRouter.detailsScreenPriceParam: gameItem.price,
                    },
                  );
                },
                child: SizedBox(
                  width: double.infinity,
                  // ignore: no-magic-number
                  height: 60,
                  child: Card(
                    child: Center(child: Text('${gameItem.title} ${gameItem.price}')),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
