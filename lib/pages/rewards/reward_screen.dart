import 'package:flutter/material.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key? key}) : super(key: key);

  @override
  State<RewardScreen> createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "REWARDS",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Color(0xff980f0f),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current level: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "(0-500 points)",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Text(
                  "5",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Status Valid Unit: ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Dark",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                )
              ],
            ),
            Spacer(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 16),
                    LinearProgressIndicator(
                      minHeight: 20,
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(5),
                      value:
                          0.5, // Set to a value between 0.0 and 1.0 for progress, or null for an indeterminate (spinning) progress bar.
                      backgroundColor: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Text(
              "Levels",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Recycler",
                style: TextStyle(fontWeight: FontWeight.w700),

              ),

              subtitle: const Text("Unlocked"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Eco Freak",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: const Text("500 points to unlock"),
            ),

            const SizedBox(
              height: 2,
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Change Maker",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: const Text("1000 points to unlock"),
            ),

            const SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
