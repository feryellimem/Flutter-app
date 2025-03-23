import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: Text('Search Page',style: TextStyle(fontSize: 24),),
  //   );
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            
            child:Container(
            color: Colors.green,
            child: Center(child: Text('Flex 2')),
          ),
          ),
          Expanded(
            flex: 3,
          child:Container(
            color: Colors.orange,
            child: Center(
              child: Text('Flex 1'),
            ),
          ),
          ),
        ],
      ),
    );
  }
}
