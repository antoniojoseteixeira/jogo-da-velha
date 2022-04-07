import 'dart:convert';
import 'dart:io';

enum Status { none, circle, cross }
enum Player { circle, cross }

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

void main(List<String> arguments) {
  showBoard();
  getInput();
}

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

void getInput() {
  print('Turno de ${turn == Player.cross ? "X" : "O"}');

  // Getting user input
  String? tileInput = stdin.readLineSync();

  // Converting to int
  int? tileNumber = int.tryParse(tileInput.toString());
}
