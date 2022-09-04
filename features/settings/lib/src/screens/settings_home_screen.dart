import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';

import '../models/setting_tab.dart';

class SettingsHomeScreen extends StatefulWidget {
  final Widget child;

  const SettingsHomeScreen({
    super.key,
    required this.child,
  });

  @override
  State<SettingsHomeScreen> createState() => _SettingsHomeScreenState();
}

class _SettingsHomeScreenState extends State<SettingsHomeScreen> {
  static const List<SettingTab> _tabs = [
    SettingTab(title: 'Audio', path: SettingsRouter.audioSettingsFirstScreenPath, icon: Icon(Icons.audio_file)),
    SettingTab(title: 'Video', path: SettingsRouter.videoSettingsFirstScreenPath, icon: Icon(Icons.settings)),
  ];

  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings screen')),
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabIndex,
        onTap: (int tappedIndex) {
          _tabIndex = tappedIndex;
          context.vRouter.to(_tabs[_tabIndex].path);
        },
        items: [
          ..._tabs.map(
            (SettingTab tab) {
              return BottomNavigationBarItem(icon: tab.icon, label: tab.title);
            },
          ),
        ],
      ),
    );
  }
}
