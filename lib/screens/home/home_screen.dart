import 'package:alko_shop/components/categories.dart';
import 'package:alko_shop/components/new_arrival_products.dart';
import 'package:alko_shop/components/search_form.dart';
import 'package:alko_shop/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/icons/menu.svg"),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/Location.svg"),
            const SizedBox(width: defaultPadding / 2),
            Text(
              "г.Смоленск, ул.Гагарина, д.56",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/Notification.svg"),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "sJean's",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500, color: Colors.deepOrangeAccent),
            ),
            const Text(
              "лучшая одежда в городе!",
              style: TextStyle(fontSize: 18),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultPadding),
              child: SearchForm(),
            ),
            const Categories(),
            const NewArrivalProducts(),


          ],
        ),
      ),
    );
  }
}
