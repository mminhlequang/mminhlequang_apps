import 'package:flutter/material.dart';
import 'package:markdown_widget/markdown_widget.dart';

import '../constants/documents.dart';
import '../constants/legals.dart';

class DynamicScreen extends StatefulWidget {
  final String id;
  final String path;
  const DynamicScreen({super.key, required this.id, required this.path});

  @override
  State<DynamicScreen> createState() => _DynamicScreenState();
}

class _DynamicScreenState extends State<DynamicScreen> {
  Map<String, dynamic> get _content {
    switch (widget.path) {
      case 'legal':
        return legals[widget.id] ?? {};
      case 'document':
        return documents[widget.id] ?? {};
      default:
        return {};
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _content.isEmpty
          ? Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/code GIF.gif'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          : Stack(
              children: [
                Opacity(
                  opacity: 0.15,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/code GIF.gif'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1,
                      vertical: 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(_content['title'] ?? '',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 16),
                      Expanded(
                        child: MarkdownWidget(
                          data: _content['content'] ?? '',
                          config: MarkdownConfig.darkConfig.copy(
                            configs: [
                              PConfig(
                                  textStyle: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white.withOpacity(.85))),
                              CodeConfig(
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.greenAccent.withOpacity(.85)),
                              ),
                              
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
