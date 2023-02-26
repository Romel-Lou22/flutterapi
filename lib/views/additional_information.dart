// ignore_for_file: non_constant_identifier_names

import 'package:flutter/cupertino.dart';

TextStyle titleFont =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);

TextStyle infoFont =
    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18.0);

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
              children: [
                Text(
                  "Wind",
                  style: titleFont,
                ),
                const SizedBox(height: 18.0),
                Text(
                  "Pressure",
                  style: titleFont,
                ),
              ],
            ),
            //====================INICIO================
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  wind,
                  style: infoFont,
                ),
                const SizedBox(height: 18.0),
                Text(
                  pressure,
                  style: infoFont,
                ),
              ],
            ),
            //============================INICIO==============
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Humidity",
                  style: titleFont,
                ),
                const SizedBox(height: 18.0),
                Text(
                  "Feel Like",
                  style: titleFont,
                ),
              ],
            ),
            //===============INICIO--------------
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  humidity,
                  style: infoFont,
                ),
                const SizedBox(height: 18.0),
                Text(
                  feels_like,
                  style: infoFont,
                ),
              ],
            ),
          ],
        )
      ],
    ),
  );
}
