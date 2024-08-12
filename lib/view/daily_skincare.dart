import 'package:flutter/material.dart';
import 'package:urbar_culture/view/colors/app_color.dart';

class Skincarepage extends StatefulWidget {
  const Skincarepage({super.key});

  @override
  State<Skincarepage> createState() => _SkincarepageState();
}

class _SkincarepageState extends State<Skincarepage> {
  // List of titles and subtitles for each item
  final List<String> titles = [
    'Cleanser',
    'Toner',
    'Moisturizer',
    'Sunscreen',
    'Lip Balm',
  ];
  final List<String> subtitles = [
    'Cetaphil Gentle Skin Cleanser',
    'Thayers Witch Hazel Toner',
    'Kiehl s Ultra Facial Cream',
    'Supergoop Unseen Sunscreen',
    'Glossier Birthday Balm Dotcom',
  ];
  final List<String> times = [
    '8:00 PM',
    '8:02 PM',
    '8:04 PM',
    '8:06 PM',
    '8:08 PM',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.bagroundtheme,
        centerTitle: true,
        title: const Text(
          'Daily Skin Care',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: AppColor.bagroundtheme,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: titles.length, // Use the length of the titles list
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10), // Gap between items
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColor.softcolor,
                    ),
                    height: 65,
                    width: 55,
                    child: const Center(
                      child: Icon(Icons.check),
                    ),
                  ),
                  title: Text(
                    titles[index],
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    subtitles[index],
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColor.subtitilcolor, // Apply the custom color
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.camera_alt_outlined,
                        size: 16,
                      ), // End icon
                      SizedBox(width: 8), // Spacing between icon and text
                      Text(
                        times[index],
                        style: TextStyle(color: AppColor.subtitilcolor),
                      ), // End text
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
