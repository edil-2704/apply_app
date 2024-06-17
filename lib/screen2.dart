import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
        subtitle: 'SHANTU /Бульдозер/ Ходовка',
        amount: 1,
        offers: 3,
        subtitleAmount: 'Количество (шт ):',
        subtitleOffers: 'Предложения: ',
        subtitleActual: 'Актуальность (дни):',
        subtitleMessage: 'Папка 1',
        titleMessafe: 'Сообщения',
        message: 6,
        actualDay: 3,
      ),
    ];
    List<ProductOfferModel> productOfferModelList = [
      ProductOfferModel(
        applyText: 'Заявка',
        requestNum: '№412651',
        date: '25.10.2021',
        imageUrl: 'assets/images/pic1.png',
        title: 'Гусеница в сборе',
        subtitle: 'SHANTU /Бульдозер/ Ходовка',
        amount: 1,
        offers: 3,
        subtitleAmount: 'Количество (шт ):',
        subtitleOffers: 'Предложения: ',
        subtitleActual: 'Актуальность (дни):',
        subtitleMessage: 'Папка 1',
        titleMessafe: 'Сообщения',
        message: 6,
        actualDay: 3,
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff27AE60),
        title: Text(
          'Предложения',
          style: TextStyle(fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
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
          return Column(
            children: [
              CommonProductCard(
                productModel: productModelList[index],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Предложение продавцов',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(width: 15),
                    TextButton(
                      style: TextButton.styleFrom(
                        minimumSize: const Size(20, 20),
                        backgroundColor: Color(0xff27AE60),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                      child: Text('10'),
                    ),
               
                  ],
                ),
              ),
         
            ],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 20);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productModel.subtitleMessage,
                    style: TextStyle(
                      color: Color(0xff27AE60),
                    ),
                  ),
                  Spacer(flex: 7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productModel.subtitleActual,
                      ),
                      SizedBox(height: 10),
                      Text(
                        productModel.subtitleAmount,
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(productModel.actualDay.toString()),
                      SizedBox(height: 10),
                      Text(
                        productModel.amount.toString(),
                      ),
                    ],
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

class ProductOfferModel {
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

  ProductOfferModel({
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

class CommonProductOfferCard extends StatelessWidget {
  final ProductOfferModel productOfferModel;

  const CommonProductOfferCard({
    super.key,
    required this.productOfferModel,
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
                      productOfferModel.applyText,
                      style: TextStyle(
                        color: Color(0xff27AE60),
                      ),
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: productOfferModel.requestNum,
                          style: TextStyle(
                            color: Color(0xff828282),
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 25),
                        ),
                        TextSpan(
                          text: productOfferModel.date,
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
                    productOfferModel.imageUrl,
                    height: 56,
                    width: 56,
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 10),
                      Text(
                        productOfferModel.title,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        productOfferModel.subtitle,
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
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    productOfferModel.subtitleMessage,
                    style: TextStyle(
                      color: Color(0xff27AE60),
                    ),
                  ),
                  Spacer(flex: 7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        productOfferModel.subtitleActual,
                      ),
                      SizedBox(height: 10),
                      Text(
                        productOfferModel.subtitleAmount,
                      ),
                    ],
                  ),
                  Spacer(flex: 2),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(productOfferModel.actualDay.toString()),
                      SizedBox(height: 10),
                      Text(
                        productOfferModel.amount.toString(),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(productOfferModel.titleMessafe),
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
