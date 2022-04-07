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
  for (var status in board) {
    String result = convertToReadable(status);
    print(result);
  }

  showBoard();
}

String convertToReadable(Status status) {
  switch (status) {
    case Status.none:
      return "empty";
    case Status.cross:
      return "X";
    case Status.circle:
      return "O";
  }
}

void showBoard() {
  print('  X  |  O  |  O  ');
  print('-----|-----|-----');
  print('  X  |  O  |  O  ');
  print('-----|-----|-----');
  print('  X  |  O  |  O  ');
}
