void main() {
  var command = 'OPEN';
switch (command) {
  case 'CLOSED':
    print("CLOSED");
  case 'PENDING':
    print("PENDING");
  case 'APPROVED':
    print("APPROVED");
  case 'DENIED':
    print("DENIED");
  case 'OPEN':
    print("OPEN");
  default:
    print("Default");
}
}