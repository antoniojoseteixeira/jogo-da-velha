import 'dart:io';

// Setting player and status
enum Status { none, circle, cross }
enum Player { circle, cross }

// Game board
List<Status> board = [
  Status.none,
  Status.none,
  Status.none,
  Status.none,
  Status.none,
  Status.none,
  Status.none,
  Status.none,
  Status.none,
];

Player turn = Player.cross;

// All the winning possibilities
List<List<int>> winningMatches = [
  [7, 8, 9],
  [4, 5, 6],
  [1, 2, 3],
  [7, 5, 3],
  [9, 5, 1],
  [7, 4, 1],
  [8, 5, 2],
  [9, 6, 3],
];

void main(List<String> arguments) {
  showBoard();
  getInput();
}

void getInput() {
  print('Turno de ${turn == Player.cross ? "X" : "O"}');

  // Getting user input
  String? tileInput = stdin.readLineSync();

  // Converting to int
  int? tileNumber = int.tryParse(tileInput.toString());

  // Updating the board
  if (tileNumber != null) {
    Status updatedTile = turn == Player.cross ? Status.cross : Status.circle;
    board[tileNumber] = updatedTile;
  }

  // Switching players
  turn = turn == Player.cross ? Player.circle : Player.cross;

  showBoard();
  getInput();
}

void checkIfGameIsOver() {}

String convertStatusToReadable(int position) {
  switch (board[position]) {
    case Status.none:
      return "$position";
    case Status.cross:
      return "X";
    case Status.circle:
      return "O";
  }
}

// Print the board
void showBoard() {
  print(
      '  ${convertStatusToReadable(0)}  |  ${convertStatusToReadable(1)}  |  ${convertStatusToReadable(2)}  ');
  print('-----|-----|-----');
  print(
      '  ${convertStatusToReadable(3)}  |  ${convertStatusToReadable(4)}  |  ${convertStatusToReadable(5)}  ');
  print('-----|-----|-----');
  print(
      '  ${convertStatusToReadable(6)}  |  ${convertStatusToReadable(7)}  |  ${convertStatusToReadable(8)}  ');
}
