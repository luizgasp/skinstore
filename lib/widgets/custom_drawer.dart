import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lojavirtual/widgets/background_gradient.dart';
import 'package:lojavirtual/widgets/text.dart';

import 'drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  final PageController pageController;

  const CustomDrawer({Key? key, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          buildBodyBack(
            color1: const Color.fromRGBO(23, 22, 31, 1),
            color2: const Color.fromRGBO(13, 17, 23, 1),
          ),
          ListView(
            padding: const EdgeInsets.only(left: 32, top: 16),
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 8),
                padding: const EdgeInsets.fromLTRB(0, 32, 16, 8),
                height: 220,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 16,
                      left: 0,
                      child: buildTitle("Flutter's\nGames", size: 34),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 20,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          buildTitle('Olá,', size: 18),
                          GestureDetector(
                            child: Text(
                              'Entre ou cadastre-se',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onTap: () {},
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DrawerTile(
                icon: Icons.home,
                text: 'Início',
                controller: pageController,
                page: 0,
              ),
              DrawerTile(
                icon: Icons.list,
                text: 'Produtos',
                controller: pageController,
                page: 1,
              ),
              DrawerTile(
                icon: Icons.location_on,
                text: 'Lojas',
                controller: pageController,
                page: 2,
              ),
              DrawerTile(
                icon: Icons.playlist_add_check,
                text: 'Meus pedidos',
                controller: pageController,
                page: 3,
              ),
            ],
          )
        ],
      ),
    );
  }
}