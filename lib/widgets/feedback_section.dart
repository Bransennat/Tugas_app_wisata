import 'package:flutter/material.dart';

class FeedbackSection extends StatefulWidget {
  @override
  _FeedbackSectionState createState() => _FeedbackSectionState();
}

class _FeedbackSectionState extends State<FeedbackSection> {
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
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Berikan Feedback Anda',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) => _buildStar(index)),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _feedbackController,
                maxLines: 3,
                decoration: InputDecoration(
                  labelText: 'Feedback',
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Mohon isi feedback Anda';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              Center(
                child: ElevatedButton(
                  onPressed: _submitFeedback,
                  child: Text('Kirim'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    textStyle: TextStyle(fontSize: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
