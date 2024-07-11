import 'package:quiz_app/models/quiz_questions.dart';

const questions = [
  QuizQuestion(
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion('How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'What is the difference between hot reload and hot restart in Flutter?',
    [
      'Hot reload updates UI changes, hot restart restarts the entire app',
      'Both update UI changes, hot restart is faster',
      'Both restart the entire app, hot restart clears state',
      'They are the same thing',
    ],
  ),
  QuizQuestion(
    'What is the role of the build method in a Flutter widget?',
    [
      'Defines the widget\'s layout and appearance',
      'Handles user interactions with the widget',
      'Manages the widget\'s lifecycle',
      'All of the above',
    ],
  ),
  QuizQuestion(
    'What is a common way to handle user input in Flutter?',
    [
      'Using TextField widget',
      'Using input() function',
      'Using getUserInput() method',
      'Using the Scanner class',
    ],
  ),
  QuizQuestion(
    'What is a Provider in Flutter and what is its purpose?',
    [
      'A way to manage state globally across widgets',
      'A class for building custom widgets',
      'A library for animations',
      'A tool for hot reload',
    ],
  ),
  QuizQuestion(
    'How do you navigate between screens in a Flutter app?',
    [
      'Using Navigator.push() and Navigator.pop()',
      'Using the Screen class',
      'Using goToScreen() function',
      'Using the replace() method on widgets',
    ],
  ),
  QuizQuestion(
    'What is the difference between a Layout widget and a Styled widget?',
    [
      'Layout widgets define structure, Styled widgets define appearance.',
      'Both define structure and appearance.',
      'There is no difference.',
      'Layout widgets handle user interaction, Styled widgets don\'t.',
    ],
  ),
  QuizQuestion(
    'What is a common way to manage asynchronous operations in Flutter?',
    [
      'Using async/await keywords',
      'Using FutureBuilder widget',
      'Both A and B',
      'Using the handleAsync() method',
    ],
  ),
  QuizQuestion(
    'What is the benefit of using a package manager like pub in Flutter?',
    [
      'Manage dependencies for your project',
      'Download and install additional functionalities',
      'Both A and B',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'What is the difference between a SingleChildScrollView and a ListView?',
    [
      'SingleChildScrollView can handle one child widget, ListView can handle many.',
      'ListView is for horizontal scrolling, SingleChildScrollView is vertical.',
      'Both are the same.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'How can you style text in Flutter?',
    [
      'Using the Text widget with its style property.',
      'Using a TextStyle class separately.',
      'Both A and B',
      'Using a style sheet like CSS.',
    ],
  ),
  QuizQuestion(
    'What is the difference between implicit and explicit animations in Flutter?',
    [
      'Implicit animations are predefined, explicit animations are custom coded.',
      'Implicit animations are for simple changes, explicit animations are for complex ones.',
      'There is no difference.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the Provider package for state management?',
    [
      'To manage complex application state across the entire widget tree.',
      'To simplify data sharing between closely related widgets.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What are some advantages of using isolates in Flutter?',
    [
      'They improve performance by offloading tasks to separate threads.',
      'They allow communication between Flutter code and native platform code.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What are some common design patterns used in Flutter development?',
    [
      'Bloc pattern, BLoC pattern, Provider pattern.',
      'Singleton pattern, Factory pattern, Repository pattern.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'How can you integrate platform-specific functionality in your Flutter app?',
    [
      'Using platform channels for communication with native code.',
      'Using the device_info package for platform detection.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What are some common tools used for testing Flutter apps?',
    [
      'Flutter Driver for UI testing, unit testing with the test package.',
      'Using print statements and debuggers.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What are some best practices for writing maintainable and testable Flutter code?',
    [
      'Using clear variable names, separating UI logic from business logic.',
      'Writing small, focused widgets, following a consistent coding style.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
  QuizQuestion(
    'What is the purpose of the Flutter Inspector tool?',
    [
      'To visualize and explore the widget tree of a Flutter app.',
      'To debug performance issues and memory leaks.',
      'Both A and B.',
      'None of the above.',
    ],
  ),
];
