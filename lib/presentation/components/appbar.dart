import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  static const List<String> tabText = [
    'Opening Stock',
    'Take Stock',
    'Give Stock',
    'Sale',
    'Load In',
    'Load Out',
    'Receipt',
    'Day End'
  ];
  static final length = tabText.length;

  List<Widget> buildTabs() {
    return tabText
        .map((e) => Tab(
              height: 30,
              text: e,
            ))
        .toList();
  }

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(12),
        child: AppBar(
          title: Text("INVENTO",
              style: GoogleFonts.questrial(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  letterSpacing: 1.5)),
          actions: [
            IconButton(
              icon: const Image(
                image: AssetImage('images/profile.png'),
                width: 22,
                height: 22,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
                excludeFromSemantics: true,
              ),
              tooltip: 'Profile',
              onPressed: () {},
            ),
          ],
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Column(
              children: [
                TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorPadding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                  labelPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey.shade500,
                  isScrollable: true,
                  tabs: buildTabs(),
                ),
                const SizedBox(height: 45),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
