import 'package:demo_app/models/Questions/qustions_models.dart';
import 'package:demo_app/models/constants.dart';
import 'package:demo_app/models/widget/next_widget.dart';
import 'package:demo_app/models/widget/options_card.dart';
import 'package:demo_app/models/widget/quiz_widget.dart';
import 'package:flutter/material.dart';

//  store all the function and varialbes here but it will be change in future
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Question> _questions = [
    Question(
      id: '10',
      title: "what is 2 + 2 ?",
      options: {'5': false, "30": false, "4": true, "10": false},
    ),
    Question(
      id: '10',
      title: "what is 90 + 10 ?",
      options: {'5': false, "100": true, "4": true, "10": false},
    ),
    Question(
      id: '10',
      title: "what is 5 + 30 ?",
      options: {'5': false, "30": false, "4": true, "35": true},
    ),
  ];

  // create an index to loop through the questions
  int index = 0;

  // now create a function to display through the nexxt Question
  void nextQuestion() {
    if (index == _questions.length - 1) {
    } else {
      setState(() {
        index++; // when the index will change to one then rebuld the app
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround,
      appBar: AppBar(
        title: Text('Quiz App', style: TextStyle(color: Colors.white)),
        backgroundColor: backround,
        shadowColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            // add the Question widget here
            QuestionWidget(
              questions:
                  _questions[index]
                      .title, // this means the first Question in the list
              indexAction: index, // this is currently at o
              totalQuestions: _questions.length, // total lenght of the queston
            ),
            Divider(color: neutral),
            // add some space here
            const SizedBox(height: 25.0),
            for (int i = 0; i < _questions[index].options.length; i++)
              OptionsCard(
                option: _questions[index].options.keys.toList()[i],
                color:
                    _questions[index].options.values.toList()[i] == true
                        ? correct
                        : incorrect,
                isClicked: false, // Set this according to your logic
                option1: '', // Set this according to your logic or data model
              ),
          ],
        ),
      ),
      // use the floating action button to create the next Question
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: NextButton(nextQuestion: nextQuestion), // the above function
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
