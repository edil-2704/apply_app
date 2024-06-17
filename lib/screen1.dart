
import 'package:apply_app/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;
    // final double width = MediaQuery.of(context).size.width;

    List<ProductModel> productModelList = [
      ProductModel(
        applyText: 'Заявка',
        requestNum: '№412651',
        date: '25.10.2021',
        imageUrl: 'assets/images/pic1.png',
        title: 'Гусеница в сборе',
        subtitle: 'Howo/ Самосвал/ Ходовка',
        amount: 1,
        offers: 3,
        subtitleAmount: 'Количество (шт ):',
        subtitleOffers: 'Предложения: ',
        subtitleActual: 'Актуальность (дни):',
        subtitleMessage: 'Сообщения:',
        titleMessafe: 'Сообщения',
        message: 6,
        actualDay: 3,
      ),
      ProductModel(
        applyText: 'Заявка',
        requestNum: '№412651',
        date: '25.10.2021',
        imageUrl: 'assets/images/pic1.png',
        title: 'Форсунка Bosch ',
        subtitle: 'Toyota/Land Cruiser Prado/\nТопливная система',
        amount: 1,
        offers: 3,
        subtitleAmount: 'Количество (шт ):',
        subtitleOffers: 'Предложения: ',
        subtitleActual: 'Актуальность (дни):',
        subtitleMessage: 'Сообщения:',
        titleMessafe: 'Сообщения',
        message: 6,
        actualDay: 3,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        title: Text(
          'Папка 2',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/sort.png',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/notification.png',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/icons/cart.png',
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: productModelList.length,
        itemBuilder: (context, index) {
          return CommonProductCard(
            productModel: productModelList[index],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 20);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen2(),
                  ),
                );
        },
        child: Icon(
          Icons.add,
        ),
        shape: OvalBorder(),
        backgroundColor: Color(0xff219653),
        foregroundColor: Colors.white,
      ),
    );
  }
}

class CommonProductCard extends StatelessWidget {
  final ProductModel productModel;

  const CommonProductCard({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 12),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      productModel.applyText,
                      style: TextStyle(
                        color: Color(0xff27AE60),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: productModel.requestNum,
                          style: TextStyle(
                            color: Color(0xff828282),
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 25),
                        ),
                        TextSpan(
                          text: productModel.date,
                          style: TextStyle(
                            color: Color(0xff828282),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_sharp,
                      size: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Image.asset(
                    productModel.imageUrl,
                    height: 56,
                    width: 56,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        productModel.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        productModel.subtitle,
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff27AE60),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productModel.subtitleAmount),
                  Text(
                    productModel.amount.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    productModel.subtitleOffers,
                    maxLines: 1,
                  ),
                  Text(
                    productModel.actualDay.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productModel.subtitleActual,
                  ),
                  Text(
                    productModel.actualDay.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    productModel.subtitleMessage,
                  ),
                  Text(
                    productModel.message.toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(productModel.titleMessafe),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff27AE60),
                  foregroundColor: Colors.white,
                  fixedSize: const Size(360, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductModel {
  final String applyText;
  final String requestNum;
  final String date;
  final String imageUrl;
  final String title;
  final String subtitle;
  final String subtitleAmount;
  final String subtitleOffers;
  final String subtitleActual;
  final String subtitleMessage;
  final String titleMessafe;
  final int amount;
  final int offers;
  final int message;
  final int actualDay;

  ProductModel({
    required this.subtitleActual,
    required this.subtitleMessage,
    required this.titleMessafe,
    required this.applyText,
    required this.requestNum,
    required this.date,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.subtitleAmount,
    required this.subtitleOffers,
    required this.amount,
    required this.offers,
    required this.message,
    required this.actualDay,
  });
}
