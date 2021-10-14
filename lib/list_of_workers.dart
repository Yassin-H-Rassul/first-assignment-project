import 'package:flutter/material.dart';
import 'package:wasstaapp/worker_item.dart';

class ListOfWorkers extends StatelessWidget {
  final String title;
  const ListOfWorkers(this.title);

  final List<String> workerDescription = const [
    'موستەفا احمەد حاجی',
    '٠٧٥٠٣٣٣٣٣٣٣',
    'پیشە: ',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 200,
      height: 300,
      child: ListView(
        shrinkWrap: true,
        children: [
          WorkerItem(workerDescription),
          WorkerItem(workerDescription),
          WorkerItem(workerDescription),
          WorkerItem(workerDescription),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
