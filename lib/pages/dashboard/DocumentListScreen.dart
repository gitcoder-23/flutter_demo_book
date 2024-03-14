import 'package:flutter/material.dart';
import 'package:flutter_demo_book/utils/customWidget.dart';

class DocumentListScreen extends StatelessWidget {
  const DocumentListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> documents = [
      {
        'id': '1',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter One',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
      {
        'id': '2',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter Two',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
      {
        'id': '3',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter Three',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
      {
        'id': '4',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter Four',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
      {
        'id': '5',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter Five',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
      {
        'id': '6',
        'image': "images/bengali_book.jpeg",
        'title': 'Bengali Chapter Six',
        'subtitle': 'Multiple Text',
        'update_date': '12/07/2024',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Document List'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: ListView.builder(
          physics: const BouncingScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: documents.length,
          itemBuilder: (context, index) {
            final documentData = documents[index];
            return Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(
                left: 8,
                top: 15,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0.0),
                border: Border.all(width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(left: 4),
                        child: Image(
                          image: AssetImage(documentData['image']),
                          height: 120,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Container(
                        padding: const EdgeInsets.only(right: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            appText(title: documentData['title'], fontSize: 20),
                            const SizedBox(height: 8),
                            appText(
                              title: documentData['subtitle'],
                              fontSize: 15,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 4),
                    child: Row(
                      children: [
                        appText(title: 'Updated on:', fontSize: 16),
                        const SizedBox(width: 8),
                        appText(
                            title: documentData['update_date'], fontSize: 16)
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
