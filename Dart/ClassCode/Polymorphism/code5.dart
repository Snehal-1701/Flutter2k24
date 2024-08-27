// example

class India {
  void homeMinister() {
    print("Amit shaha");
  }

  void financeMinister() {
    print("Nirmala Sitharaman");
  }

  void primeMinister() {
    print("Narendra Modi");
  }
}

class Maharashtra extends India {
  void homeMinister() {
    print("Devendra Fadnavis");
  }

  void financeMinister() {
    print("Ajit Pawar");
  }
}
void main() {
  Maharashtra obj = Maharashtra();
  obj.homeMinister();
  obj.financeMinister();
  obj.primeMinister();
}