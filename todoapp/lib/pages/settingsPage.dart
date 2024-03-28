// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:todoapp/theme/themeProvider.dart';

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         foregroundColor: Theme.of(context).colorScheme.inversePrimary,
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             color: Theme.of(context).colorScheme.primary,
//             borderRadius: BorderRadius.circular(20)),
//         padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
//         margin: const EdgeInsets.only(left: 20, right: 25),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               "Dark Mode",
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).colorScheme.inversePrimary,
//               ),
//             ),
//             CupertinoSwitch(
//               value:
//                   Provider.of<ThemeProvider>(context, listen: false).isDarkMode,
//               onChanged: (value) =>
//                   Provider.of<ThemeProvider>(context, listen: false)
//                       .toggleTheme(),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
