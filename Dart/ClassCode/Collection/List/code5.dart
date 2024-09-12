// Methods of List

// 1. add
// 2. insert
// 3. addAll
// 4. insertAll
// 5. indexOf
// 6. lastIndexOf
// 7. remove
// 8. removeAt
// 9. removeLast
// 10. removeRange


void main() {
  List jerNo = [10, 18, 45, 7, 1];
  print(jerNo);

  jerNo.add(77);
  print(jerNo);

  jerNo.insert(2, 15);
  print(jerNo);

  jerNo.insertAll(4, [120, 135, 18]);
  print(jerNo);

  print(jerNo.indexOf(18));
  print(jerNo.lastIndexOf(18));

  print(jerNo.remove(18));
  print(jerNo.remove(16));
  print(jerNo);

  print(jerNo.removeLast());
  print(jerNo);

  jerNo.removeRange(2,5);
  print(jerNo);
}