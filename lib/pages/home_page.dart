import 'package:flutter/material.dart';
import 'package:hello_app/components/item_note.dart';SSS
import 'package:hello_app/model/note.dart';

class HomePage extends StatelessWidget {
  HomePage ({super.key});

final List<Tea> teas = <Tea>[
  Tea(name: 'Черная смородина',
      image: 'https://main-cdn.sbermegamarket.ru/big2/hlr-system/-53/187/341/930/623/100059988726b0.jpg',
      description: 'Смесь цейлонского и индийского чёрного чая с добавлением листа и ягод чёрной смородины',
      price: 'Цена: 450 руб/100 г'),
  Tea(name: 'Молочный улун',
      image: 'https://cdn1.ozone.ru/s3/multimedia-1-h/7025810489.jpg',
      description: 'Китайский улун с карамельным ароматом и сливочными оттенками во вкусе',
      price: 'Цена: 420 руб/100 г'),
  Tea(name: 'Цейлон рухуна',
      image: 'https://cdn.100sp.ru/pictures/103638444',
      description: 'Чай из южной части Шри-Ланки с цветочным ароматом и насыщенным вкусом с нотами ириса, дерева и мёда',
      price: 'Цена: 360 руб/100 г'),
  Tea(name: 'Ганпаудер',
      image: 'https://bergamotik.ru/upload/iblock/b26/b26418c08e1aa21075f2dfcee2a87dc2.jpg',
      description: 'Классический насыщенный зелёный чай из Китая, скрученный в шарики',
      price: 'Цена: 270 руб/100 г'),
  Tea(name: 'Тегуаньинь',
      image: 'https://avatars.mds.yandex.net/get-mpic/11764182/2a0000018afe58653142943baef9c142fa4c/orig',
      description: 'Популярный китайский улун со свежим цветочным ароматом и насыщенным глубоким вкусом с нотами орхидеи и ириса',
      price: 'Цена: 450 руб/100 г'),
  Tea(name: 'Гречишный',
      image: 'https://8gramm.ru/wa-data/public/shop/products/28/31/3128/images/4683/4683.970.jpg',
      description: 'Тизан с лёгким сладковатым ароматом, с оттенками ореха и овсяного печенья',
      price: 'Цена: 380 руб/100 г'),
  Tea(name: 'Липовый',
      image: 'https://xn--e1aaalojbdrrfdi7p.xn--p1ai/upload/iblock/55f/55fa7b9b088ce9312c74e428319c5814.JPG',
      description: 'Китайская сенча с лимонной травой, листьями липы, цедрой лимона, ромашкой и вербеной',
      price: 'Цена: 400 руб/100 г'),
  Tea(name: 'Вишневый',
      image: 'https://cdn1.ozone.ru/multimedia/1037475173.jpg',
      description: 'Индийский чёрный чай с кусочками вишни, корицей и вишнёвым листом',
      price: 'Цена: 500 руб/100 г'),
  Tea(name: 'Барбарисовый',
      image: 'https://avatars.mds.yandex.net/get-mpic/5290046/img_id1883767293663323622.jpeg/orig',
      description: 'Смесь цейлонского и индийского чёрного чая с ягодами барбариса и клубники, кусочками ананаса и папайи, лепестками розы, календулы и василька',
      price: 'Цена: 420 руб/100 г'),
  Tea(name: 'Маласа',
      image: 'https://lavka.demomax.ru/upload/iblock/204/2042b818e0969b0ee95e563f250b0955.jpg',
      description: 'Смесь чёрного цейлонского и индийского чая с корицей, анисом, фенхелем, имбирём, гвоздикой и чёрным перцем',
      price: 'Цена: 400 руб/100 г'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Магазин чая'),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: teas.length,
        itemBuilder: (context, index) {
        final tea = teas[index];
        return ItemNote(tea: tea);
    }),
    ),

    );
  }
}