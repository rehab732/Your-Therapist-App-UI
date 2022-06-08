
import 'package:flutter/material.dart';

import 'articles_page_body.dart';


class MainAwarenessPage extends StatefulWidget {
  const MainAwarenessPage({Key? key}) : super(key: key);

  @override
  State<MainAwarenessPage> createState() => _MainAwarenessPageState();
}

class _MainAwarenessPageState extends State<MainAwarenessPage> {
  @override
  Widget build(BuildContext context) {
    return
          ArticlesPageBody();
  
  }
}
