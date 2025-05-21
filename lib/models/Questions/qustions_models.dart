//  Create all your Quiz Questions Models here

// create a simple quize class


class Question {
  // define how question will look like
  // every Question mosst have an ID
  final String id;
  // every Question most have  a title its the Qestion itself
  final String title;
  // every Question will have option
  final Map<String, bool> options;
  // options will be like -('1':true, '2': false) =  something like

  // create a constructors

  Question({required this.id, required this.title, required this.options});

  // overide the toStrin method to print the questions on console

  @override 
  String toString(){
    return 'Question(id: $id, title: $title, options: $options)';
  }
}
