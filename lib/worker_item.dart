import 'package:flutter/material.dart';

class WorkerItem extends StatelessWidget {
  final List<String> workerInfo;
  const WorkerItem(this.workerInfo);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black54, width: 3),
        borderRadius: BorderRadius.circular(44),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),

        // color: Colors.white,
        child: SizedBox(
            width: 250,
            height: 250,
            child: Column(
              children: [
                Container(
                  height: 125,
                  width: 125,
                  color: Colors.blue,
                  child: Image.asset(
                    'images/smilingWorker.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 125,
                  color: Colors.white,
                  width: 125,
                  child: Column(
                    children: [
                      Text(workerInfo[0]),
                      Text(workerInfo[1]),
                      Text(workerInfo[2]),
                    ],
                  ),
                ),
              ],
            )

            // Stack(
            //   children: [
            //     Positioned.fill(
            //       child: ClipRRect(
            //         borderRadius: BorderRadius.circular(40),
            //         child: Image.asset(
            //           'images/smilingWorker.jpg',
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //     Positioned(
            //       top: 100,
            //       left: 15,
            //       width: 500,
            //       height: 125,
            //       child: Container(
            //         color: Colors.red,
            //         width: double.infinity,
            //         child: Center(
            //           child: Column(
            //             children: [
            //               Text(workerInfo[0]),
            //               Text(workerInfo[1]),
            //               Text(workerInfo[2]),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            ),
      ),
    );
  }
}
