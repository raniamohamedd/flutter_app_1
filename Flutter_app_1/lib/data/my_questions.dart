
class MyQuestions {
  MyQuestions(this.text, this.answers);
  final String text;
  final List<String> answers;
  List<String> get fetansshuff {
    final sh = List.of(answers);
    sh.shuffle();
    return sh;
  }
}

List<MyQuestions> question = [
   MyQuestions(' The programming language that has the ability to create new data types is called___.',
      [' Extensible  ', 'Reprehensible', ' Encapsulated', '  Overloaded ']),
  MyQuestions('Which of the following refers to characteristics of an array?', [
    'An array is a set of similar data items ',
    ' An array is a set of distinct data items',
    ' An array can hold different types of datatypes',
    'An array is a set of distinct data items'
  ]),
    MyQuestions(' Which of the following loops is best when we know the number of iterations?', [
    ' for loop',
    ' while loop',
    ' Do while',
  ]),
  MyQuestions(' Which of the following is the correct identifier?',
      ['VAR_123', 'var_name', 'varname ', 'ver.name']),
 
  MyQuestions(' Which type of memory is used by an Array in C++ programming language?',
      [' Contiguous', ' None contiguous']),
  MyQuestions('How many types of the array are there in the C++ programming language?', [
    'In the C++ programming language, there are two types of arrays',
    'In the C++ programming language, there are three types of arrays',
    'In the C++ programming language, there are four types of arrays',
  ]),
  MyQuestions('In C++, for what purpose the "rank()" is used?', [
    'It returns the dimension of the specified array',
    'It returns the size of each dimension',
    'It returns the maximum number of elements that can be stored in the array',
  ]),
  MyQuestions(' What did we call an array of the one-dimensional array?', [
    '2D Array (or 2-Dimensional array)',
    'Single Dimensional array',
    'Multi-Dimensional array',
  ]),
  MyQuestions(' Which types of arrays are always considered as linear arrays?', [
    'Single-dimensional',
    'Multi-dimensional',
  ]),
  MyQuestions('Which of the following can be considered as the object of an array?', [
    ' Elements of the Array',
    ' Functions of the Array',
    ' Index of an array',
  ]),

];
