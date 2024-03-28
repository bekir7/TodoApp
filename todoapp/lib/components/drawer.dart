// import 'package:flutter/material.dart';
// import 'package:todoapp/components/drawerTile.dart';
// import 'package:todoapp/pages/settingsPage.dart';

// class MyDrawer extends StatelessWidget {
//   const MyDrawer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       child: Column(
//         children: [
//           const DrawerHeader(child: Icon(Icons.edit)),
//           DrawerTile(
//             title: "Notlarım",
//             leading: const Icon(Icons.home),
//             onTap: () => Navigator.pop(context),
//           ),
//           DrawerTile(
//               title: "Ayarlar",
//               leading: const Icon(Icons.settings),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SettingsPage(),
//                     ));
//               }),
//         ],
//       ),
//     );
//   }
// }
