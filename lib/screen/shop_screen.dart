import 'package:flutter/material.dart';
import 'package:shop_app/components//list_contain.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shop_app/components/round_icon_button.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BY GLAMD'),
        actions: <Widget>[
          Icon(Icons.search),
          SizedBox(
            width: 39,
          ),
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text(
                'BY GLAMD',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,
                ),
              ),
              accountEmail: Text('BE YOURSELF'),
              decoration: BoxDecoration(
                color: Color(0xFF8D8E98),
                borderRadius: BorderRadius.circular(10.0),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'),
                radius: 50.0,
              ),
            ),
            ListContain(
              title: 'Perfil',
              icon: Icons.assignment,
            ),
            ListContain(
              title: 'Productos',
              icon: Icons.add_shopping_cart,
            ),
            ListContain(
              title: 'Categorias',
              icon: Icons.apps,
            ),
            ListContain(
              title: 'Contacto',
              icon: Icons.call,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CarouselSlider(
              items: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://tuapppara.com/wp-content/uploads/2016/10/ropa.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://tuapppara.com/wp-content/uploads/2015/04/combinarropa.jpg'),
                      ),
                    ),
                  ),
                ),
              ],
              autoPlay: true,
              aspectRatio: 2.0,
              height: 160,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  RoundIconButton(
                    icon: Icons.attach_money,
                    action: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RoundIconButton(
                    icon: Icons.wc,
                    action: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RoundIconButton(
                    icon: Icons.burst_mode,
                    action: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RoundIconButton(
                    icon: Icons.build,
                    action: () {},
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  RoundIconButton(
                    icon: Icons.close,
                    action: () {},
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Container(
                  height: 300,
                  color: Colors.white70,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.imgur.com/28kU1bo.png%E2%80%99;',
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        child: Text(
                          'Playera Personalizable',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
