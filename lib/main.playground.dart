// import 'package:flutter/material.dart';
// import 'package:mobile/app.dart'
//     show setArgs, addCrossDependency, startApp, startSystem;
// import 'package:mobile/services/example_platform_channel.dart';
// import 'package:mobile/stores/app_store.dart';
// import 'package:mobile/stores/counter_store.dart';
// import 'package:mobile/systems/main_system.dart';
// import 'package:mobile/views/main_app.dart';

// final channel = ExamplePlatformChannel();
// main() {
//   setArgs({});
//   addStores();
//   startApp(
//     () => MainApp(
//       home: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             RaisedButton(
//               child: Text("Debug Battery"),
//               onPressed: () async {
//                 var batteryLevel = await channel.batteryLevel;
//                 print(batteryLevel);
//               },
//             ),
//             SizedBox(height: 10),
//             RaisedButton(
//               child: Text("Open Native View"),
//               onPressed: () async {
//                 await channel.openNativeView();
//               },
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
//   startSystem(() => MainSystem());
// }

// void addStores() {
//   // Add stores belows
//   addCrossDependency(AppStore());
//   addCrossDependency(CounterStore()); // This is a sample store.
// }
