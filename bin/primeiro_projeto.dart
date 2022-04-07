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
    print(status);
  }
}
