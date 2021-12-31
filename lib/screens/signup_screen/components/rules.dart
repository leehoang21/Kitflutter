import 'package:auth_project/components/box_screen.dart';
import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BoxScreen(
      child: Scaffold(
        appBar: AppBar(),
        body: const Text(''' 
          5 ĐIỀU BÁC HỒ DẠY
          
          Yêu tổ quốc, yêu đồng bào
          Học tập tốt , lao động tốt
          Đoàn kết tốt , kỷ luật tốt
          Giữ gìn vệ sinh thật tốt
          Kiêm tốn , thật thà , dũng cảm
        '''),
      ),
    );
  }
}
