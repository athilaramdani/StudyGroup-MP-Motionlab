class Person {
  String nama;
  String nim;
  String role;

  Person(this.nama, this.nim, this.role);

  void introduce() {
    print("Halo, nama saya $nama dengan nim $nim, saya berada di divisi $role");
  }
}

void main() {
  Person person1 = Person("Athila", "103012300132", "MP");
  Person person2 = Person("Konogok", "10301223232421", "UI/UX");
  person1.introduce();
}