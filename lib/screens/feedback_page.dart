import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  final _formKey = GlobalKey<FormState>();
  int _starRating = 0;
  final TextEditingController _feedbackController = TextEditingController();

  Widget _buildStar(int index) {
    if (index < _starRating) {
      return IconButton(
        icon: Icon(Icons.star, color: Colors.amber),
        onPressed: () {
          setState(() {
            _starRating = index + 1;
          });
        },
      );
    } else {
      return IconButton(
        icon: Icon(Icons.star_border, color: Colors.grey),
        onPressed: () {
          setState(() {
            _starRating = index + 1;
          });
        },
      );
    }
  }

  void _submitFeedback() {
    if (_formKey.currentState!.validate()) {
      // Here you can handle the feedback submission, e.g., send to server or save locally
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Terima kasih atas feedback Anda!')),
      );
      _feedbackController.clear();
      setState(() {
        _starRating = 0;
      });
    }
  }

  @override
  void dispose() {
    _feedbackController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Aplikasi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                'Berikan penilaian dan feedback Anda',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => _buildStar(index)),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _feedbackController,
                maxLines: 4,
                decoration: InputDecoration(
                  labelText: 'Feedback',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi feedback Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitFeedback,
                child: Text('Kirim'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
