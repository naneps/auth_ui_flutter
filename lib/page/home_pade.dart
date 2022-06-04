import 'package:auth_ui_flutter/data/dumy.dart';
import 'package:auth_ui_flutter/page/constant.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int? selectedKategori;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBackground,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: LineIcon(LineIcons.bars),
            centerTitle: true,
            title: const Text(
              'Guitar Shop',
              style: TextStyle(color: Colors.black),
            ),
            actions: [
              IconButton(
                icon: LineIcon(LineIcons.shoppingBag),
                onPressed: () {},
              ),
            ]),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const WidgetCourel();
                      },
                    ),
                    Positioned(
                        bottom: 0,
                        left: 10,
                        child: Row(
                          children: [
                            IconButton(
                              icon: LineIcon(LineIcons.dotCircleAlt,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: LineIcon(LineIcons.dotCircleAlt,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: LineIcon(LineIcons.dotCircleAlt,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                // color: kMainColor,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataKategori.length,
                  itemBuilder: (context, index) {
                    return ButtonCategory(
                      onPressed: () {
                        setState(() {
                          selectedKategori = index;
                        });
                      },
                      isActive: selectedKategori == index ? true : false,
                      kategori: dataKategori[index]['kategori'],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Seller',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kFontColor),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(color: kFontColor),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 180,
                width: MediaQuery.of(context).size.width,
                child: GridView.builder(
                    itemCount: dataProduk.length,
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 1 / 1.5,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        // /
                        decoration: BoxDecoration(
                          color: kMainColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        dataProduk[index]['gambar']!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      dataProduk[index]['nama']!,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      dataProduk[index]['harga']!,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}

class ButtonCategory extends StatelessWidget {
  ButtonCategory(
      {Key? key, this.kategori, this.isActive = false, this.onPressed})
      : super(key: key);
  String? kategori;
  bool? isActive;
  VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: isActive! ? kMainColor : Colors.white,
          // padding: EdgeInsets.all(),
          side: BorderSide(
            color: kMainColor.withOpacity(0.3),
            width: 1,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: SizedBox(
          width: 80,
          // height: ,
          child: Text(
            kategori!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: isActive! ? Colors.white : kFontColor,
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}

class WidgetCourel extends StatefulWidget {
  const WidgetCourel({
    Key? key,
  }) : super(key: key);

  @override
  State<WidgetCourel> createState() => _WidgetCourelState();
}

class _WidgetCourelState extends State<WidgetCourel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      height: 200,
      width: MediaQuery.of(context).size.width / 1.12,
      child: Container(
        padding: const EdgeInsets.all(15),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          // color: Colors.amber,
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.darken),
              fit: BoxFit.cover,
              image: const NetworkImage(
                  'https://media.istockphoto.com/photos/close-up-of-electric-guitars-in-a-row-in-huge-instrument-shop-music-picture-id1214897889?s=612x612')),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              // width: ,
              width: 200,
              child: Text(
                'PRS SLIVER SKY',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              // height: 10,
              width: 200,
              child: Text(
                'lorem ipsum dolor sit amet lorem ipsum dolor sit amet',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
