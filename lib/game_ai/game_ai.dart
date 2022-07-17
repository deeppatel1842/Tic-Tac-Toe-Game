import 'game_util.dart';

class GameAI {
  // ignore: constant_identifier_names
  static const WIN_SCORE = 100;
  // ignore: constant_identifier_names
  static const LOSE_SCORE = -100;
  // ignore: constant_identifier_names
  static const DRAW_SCORE = 0;

  int play(List<int> board, int currentPlayer) {
    return _getAIMove(board, currentPlayer).move;
  }

  Move _getAIMove(List<int> board, int currentPlayer) {
    // ignore: no_leading_underscores_for_local_identifiers
    List<int> _newBoard;
    // ignore: no_leading_underscores_for_local_identifiers
    Move _bestMove = Move(score: -10000, move: -1);

    for (int currentMove = 0; currentMove < board.length; currentMove++) {
      if (!GameUtil.isValidMove(board, currentMove)) continue;
      _newBoard = List.from(board);
      _newBoard[currentMove] = currentPlayer;
      // ignore: no_leading_underscores_for_local_identifiers
      int _newScore = -_getBestScore(
        _newBoard,
        GameUtil.togglePlayer(currentPlayer),
      );
      if (_newScore > _bestMove.score) {
        _bestMove.score = _newScore;
        _bestMove.move = currentMove;
      }
    }

    return _bestMove;
  }

  int _getBestScore(List<int> board, int currentPlayer) {
    // ignore: no_leading_underscores_for_local_identifiers
    final _winner = GameUtil.checkIfWinnerFound(board);
    if (_winner == currentPlayer) {
      return WIN_SCORE;
    } else if (_winner == GameUtil.togglePlayer(currentPlayer)) {
      return LOSE_SCORE;
    } else if (_winner == GameUtil.DRAW) {
      return DRAW_SCORE;
    }
    return _getAIMove(board, currentPlayer).score;
  }
}

class Move {
  int score;
  int move;

  Move({
    required this.score,
    required this.move,
  });
}
