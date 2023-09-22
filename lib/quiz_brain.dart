import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Algunos gatos son alérgicos a los humanos', true),
    Question('Las vacas no son capacs de andar hacia atrás.', false),
    Question('Aproximadamente una cuarta parte de los huesos humanos están en los pies', true),
    Question('La sangre de una babosa es verde', true),
    Question('El nombre real de \'El Fary \' era \" José Monge Cruz \".', true),
    Question('La capital de Somalia es Mogadishu.', true),
    Question(
        'Es imposible doblar una sevilleta más de 20 veces sobre sí misma.',
        false),
    Question(
        'En algunos estados de EEUU, puedes conducir motocicletas sin usar casco',
        true),
    Question(
        'Con 188 decibelios, el elefante africano es el animal capaz de realizar un sonido más fuerte',
        false),
    Question(
        'La serpiente más venenosa es la serpiente taipán (Oxyuranus microlepidotus).',
        true),
    Question('Google inicialmente se llamaba \"Backrub\".', true),
    Question(
        'Es posible envenenar a un perro con chocolate.',
        true),
    Question(
        'El aguacate es comestible para los humanos, pero tóxico para la mayoría de nuestras mascotas.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
