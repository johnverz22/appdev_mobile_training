
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('Flutter Widget Demo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Text Widget
              Text(
                'Hello, Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),

              // Image Widget
              Image.network(
                'https://flutter.dev/images/flutter-logo-sharing.png',
                height: 100,
                width: 100,
              ),
              SizedBox(height: 20),

              // Button Widget
              ElevatedButton(
                onPressed: () {
                  
                },
                child: Text('Press Me'),
              ),
              SizedBox(height: 20),

              // ListView Widget
              Text(
                'List of Items:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(Icons.list),
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('This is item number ${index + 1}'),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    )
  )
);

}