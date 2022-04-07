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
  // Initializing board
  showBoard();
}

String convertToReadable(int position) {
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
      '  ${convertToReadable(0)}  |  ${convertToReadable(1)}  |  ${convertToReadable(2)}  ');
  print('-----|-----|-----');
  print(
      '  ${convertToReadable(3)}  |  ${convertToReadable(4)}  |  ${convertToReadable(5)}  ');
  print('-----|-----|-----');
  print(
      '  ${convertToReadable(6)}  |  ${convertToReadable(7)}  |  ${convertToReadable(8)}  ');
}
