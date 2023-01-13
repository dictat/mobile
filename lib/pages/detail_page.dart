import 'package:flutter/material.dart';
import 'package:mobile/pages/custom_app_bar.dart';
import 'package:mobile/models/profile_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  CustomerAppBar("test"),
      backgroundColor: Colors.red,
      body: const Center(
        child: Text('プロフィールふぇかおふぇこｐふぇおｋｐ'),
      ),
    );
  }
}