import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:keep_user_login/pages/game/game_page.dart';
import 'package:keep_user_login/pages/home/rules.dart';
import 'package:keep_user_login/pages/home/profile.dart';
import 'package:keep_user_login/widgets/circle_widget.dart';
import 'package:keep_user_login/widgets/cross_widget.dart';


part 'game_title_widget.dart';
part 'game_mode_selection_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Spacer(flex: 2),
          GameTitleWidget(),
          Spacer(),
          GameModeSelectionWidget(),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}
