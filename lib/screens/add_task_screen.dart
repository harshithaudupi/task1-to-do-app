//
//
// class AddTaskScreen extends StatelessWidget {
//   final TextEditingController _taskController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Task'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextField(
//               controller: _taskController,
//               decoration: InputDecoration(labelText: 'Task'),
//             ),
//             SizedBox(height: 20.0),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pop(context, _taskController.text);
//               },
//               child: Text('Add Task'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
