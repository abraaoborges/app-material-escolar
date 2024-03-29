import 'package:app_material_escolar/tabs/home_tab.dart';
import 'package:app_material_escolar/tabs/orders_tab.dart';
import 'package:app_material_escolar/tabs/places_tab.dart';
import 'package:app_material_escolar/tabs/products_tab.dart';
import 'package:app_material_escolar/widgets/cart_button.dart';
import 'package:app_material_escolar/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _pageController,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          body: HomeTab(),
          drawer: CustomDrawer(_pageController),
          floatingActionButton: CartButton(),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Produtos"),
            centerTitle: true,
          ),
          drawer: CustomDrawer(_pageController),
          body: ProductsTab(),
          floatingActionButton: CartButton(),
        ),

        Scaffold(
          appBar: AppBar(
            title: Text("Lojas"),
            centerTitle: true,

          ),
          body: PlacesTab(),
          drawer: CustomDrawer(_pageController),
        ),
        Scaffold(
          appBar: AppBar(
            title: Text("Meus pedidos"),
            centerTitle: true,
          ),
          body: OrdersTab(),
          drawer: CustomDrawer(_pageController),
        )
        ],
    );
  }
}
