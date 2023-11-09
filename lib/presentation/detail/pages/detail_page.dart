import 'package:flutter/material.dart';
import 'package:flutter_interview_test/presentation/core/configs/config.dart';

class DetailPage extends StatelessWidget {
  final String note;
  final String creationDate;
  final String lastUpdateDate;

  const DetailPage({
    super.key,
    required this.note,
    required this.creationDate,
    required this.lastUpdateDate,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Config.colors.secondaryVariant,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.date_range),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Création : " + creationDate,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Config.colors.secondaryVariant,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const Icon(Icons.date_range),
                  const SizedBox(width: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Edition : " + lastUpdateDate,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
