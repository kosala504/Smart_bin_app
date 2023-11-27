import 'package:flutter/material.dart';

class RedeemScreen extends StatefulWidget {
  const RedeemScreen({Key? key}) : super(key: key);

  @override
  State<RedeemScreen> createState() => _RedeemScreenState();
}

class _RedeemScreenState extends State<RedeemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "REDEEM",
          style: TextStyle(
              fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: const Color(0xff980f0f),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
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
                      "Points available to Redeem: ",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                Text(
                  "100 Points",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Colors.amber),
                )
              ],
            ),
            const SizedBox(height: 30),
            const Divider(),
            const SizedBox(height: 30),
            ListTile(
              leading: Icon(Icons.wallet_giftcard),
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Gift Box",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text("500 Points"),
              trailing: ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff980f0f),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: Text(
                  'Redeem',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard_sharp),
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Gift Card",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text("500 Points"),
              trailing: ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff980f0f),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Redeem',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ), ListTile(
              leading: Icon(Icons.card_giftcard_sharp),
              tileColor: Colors.red.withOpacity(0.1),
              title: const Text(
                "Cash Amount",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text("1000 Points"),
              trailing: ElevatedButton(
                onPressed: () {
                  // Add your button click logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff980f0f),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                child: const Text(
                  'Redeem',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
