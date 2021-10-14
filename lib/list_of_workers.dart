import 'package:flutter/material.dart';

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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            GestureDetector(
              child: const Text(
                "More",
                style: TextStyle(color: Colors.grey),
              ),
              onTap: () {},
            ),
          ],
        )
      ],
    );
  }
}
