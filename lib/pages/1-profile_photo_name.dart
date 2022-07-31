import 'package:flutter/material.dart';

import '../utils/style_page.dart';

Column profilePhotoAndName(context) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Row(
              children: [
                const CircleAvatar(
                  maxRadius: 70,
                  backgroundImage: AssetImage(
                    "images/me.png",
                  ),
                ),
                Expanded(
                  child: ListTile(
                    title: SelectableText(
                      "Filipe Cardoso Oliveira",
                      style: baseFontStyle(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    subtitle: SelectableText(
                      "Developer",
                      style: baseFontStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                marginPage(context) < 100
                    ? const SizedBox()
                    : Expanded(child: infoContato())
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      marginPage(context) < 100 ? infoContato() : const SizedBox()
    ],
  );
}

Column infoContato() {
  return Column(
    children: [
      ListTile(
        leading: Icon(
          Icons.phone,
          color: baseColorBackgroundAndFont,
        ),
        title: SelectableText(
          '(86) 9 8134-6155',
          style: baseFontStyle(fontSize: 18),
        ),
      ),
      ListTile(
        leading: Icon(
          Icons.email,
          color: baseColorBackgroundAndFont,
        ),
        title: SelectableText(
          'filipecardosooliveira@hotmail.com',
          style: baseFontStyle(fontSize: 18),
        ),
      ),
      ListTile(
        leading: Image.asset(
          "images/icon-linkedin.png",
          scale: 18,
          color: baseColorBackgroundAndFont,
        ),
        title: SelectableText(
          'www.linkedin.com/in/filipecarolidev/',
          style: baseFontStyle(fontSize: 18),
        ),
      ),
    ],
  );
}
