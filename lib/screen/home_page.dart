import 'package:coffe_ui/shared/theme.dart';
import 'package:flutter/material.dart';

import '../widget/button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 21,
                  height: 16,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/Back.png'),
                    ),
                  ),
                ),
              ),
              Container(
                width: 21,
                height: 16,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Menu.png'),
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Image.asset(
              'assets/3.png',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            'Caramel Macchiato',
            style: primaryTextStyle.copyWith(fontSize: 26, fontWeight: black),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free',
            style: subTextStyle.copyWith(fontSize: 13),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'SIZE',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizeButton(
                size: 'S',
                isSelected: true,
              ),
              SizeButton(
                size: 'M',
              ),
              SizeButton(
                size: 'L',
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'COMBO',
            style: blackTextStyle.copyWith(fontWeight: semiBold, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          const ComboBox(),
          const SizedBox(
            height: 42,
          ),
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: [
                  Container(
                    width: 67,
                    height: 67,
                  ),
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            'assets/bag.png',
                          ),
                        ),
                        border: Border.all(color: primaryColor),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Positioned(
                    bottom: 35,
                    left: 35,
                    child: Container(
                      width: 29,
                      height: 29,
                      decoration: BoxDecoration(
                          color: backgroundColor, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    bottom: 39,
                    left: 39,
                    child: Container(
                      child: Center(child: Text('3')),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          shape: BoxShape.circle,
                          border: Border.all(color: primaryColor, width: 1)),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 13,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 17),
                margin: const EdgeInsets.only(top: 10),
                height: 55,
                width: 252,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: primaryColor,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ADD TO BAG',
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                      ),
                      Image.asset('assets/line.png'),
                      Text(
                        '\$ 5.99',
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                      )
                    ]),
              ),
            ],
          ),
        ],
      )),
    );
  }
}

class ComboBox extends StatelessWidget {
  const ComboBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 26),
      width: 300,
      height: 88,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(children: [
        Image.asset('assets/2.png'),
        const SizedBox(
          width: 15.16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'CROISSANT',
              style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 14),
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 10,
                  height: 10,
                  child: Image.asset('assets/starhidup.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 10,
                  height: 10,
                  child: Image.asset('assets/starhidup.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 10,
                  height: 10,
                  child: Image.asset('assets/starhidup.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 5),
                  width: 10,
                  height: 10,
                  child: Image.asset('assets/starhidup.png'),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 10,
                  height: 10,
                  child: Image.asset('assets/starmati.png'),
                ),
                Text(
                  '4.8',
                  style: subTextStyle.copyWith(fontSize: 10, fontWeight: bold),
                ),
              ],
            ),
          ],
        ),
        const Spacer(),
        Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/add.png'))),
        ),
      ]),
    );
  }
}
