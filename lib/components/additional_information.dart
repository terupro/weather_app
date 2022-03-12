import 'package:flutter/material.dart';

const titleTextStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
const infoTextStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400);

Widget additionalInformation(
    String wind, String humidity, String pressure, String feels_like) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Wind", style: titleTextStyle),
                SizedBox(height: 18.0),
                Text("Humidity", style: titleTextStyle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$wind", style: infoTextStyle),
                const SizedBox(height: 25.0),
                Text("$pressure", style: infoTextStyle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Pressure", style: titleTextStyle),
                SizedBox(height: 18.0),
                Text("Feels like", style: titleTextStyle),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("$humidity", style: infoTextStyle),
                SizedBox(height: 25.0),
                Text("$feels_like", style: infoTextStyle),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
