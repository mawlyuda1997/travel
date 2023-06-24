import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
void main() async {
  await Hive.initFlutter();
  await Hive.openBox('themedata');
  runApp(DarkLite());
}
class DarkLite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box('themedata').listenable(),
        builder: (context,box,widget){
          var darkMode = box.get('darkmode',defaultValue:false);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,
            darkTheme: ThemeData.dark(),
            home: Scaffold(
              body: Center(
                child: Switch(
                  value: darkMode,
                  onChanged: (value){
                    Hive.openBox('darkmode');
                    box.put('darkmode',value);
                  },
                ),
              ),
              floatingActionButton: FloatingActionButton.extended(
                  onPressed: () {}, label: Text('Change Theme')),
            ),
          );
        }
    );
  }
}
// flutter run --no-sound-null-safety