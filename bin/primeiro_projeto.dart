enum Status { none, circle, cross }
enum Player { circle, cross }

Map<int, Status> board = {
  1: Status.none,
  2: Status.none,
  3: Status.none,
  4: Status.none,
  5: Status.none,
  6: Status.none,
  7: Status.none,
  8: Status.none,
  9: Status.none,
};

Player turn = Player.cross;

void main(List<String> arguments) {
  // Initializing board
  board.forEach((key, value) => {
        print({key, value})
      });
}
