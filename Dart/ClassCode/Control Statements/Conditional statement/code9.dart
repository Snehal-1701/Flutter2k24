void main() {
  var command = 'DENIED';
  switch (command) {
  case 'OPEN':
    print("OPEN");
    continue newCase; // Continues executing at the newCase label.

  case 'DENIED': // Empty case falls through. Implicit fallthrough
  case 'CLOSED':
    print("CLOSED");// Runs for both DENIED and CLOSED,

  newCase:
  case 'PENDING':
    print("PENDING"); // Runs for both OPEN and PENDING.
}
}