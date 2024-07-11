/// Represents a quiz question with its text and answers.
class QuizQuestion {
  /// Constructs a [QuizQuestion] with the given [text] and [answers].
  const QuizQuestion(this.text, this.answers);

  /// The text of the quiz question.
  final String text;

  /// The list of possible answers for the quiz question.
  final List<String> answers;

  /// Returns a new list of shuffled answers.
  List<String> getShuffledAnswers() {
    final shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
