mixin Andar {
  void andar() {
    print("Sim é possível andar");
  }

  void metodoIgual() {
    print("Dentro de andar");
  }
}
mixin Correr {
  void correr() {
    print("Sim é possível correr");
  }

  void metodoIgual() {
    print("Dentro de correr");
  }
}
class Pessoa with Correr, Andar {}

void main() {
  Pessoa pessoa = Pessoa();
  pessoa.correr();
  pessoa.andar();
  pessoa.metodoIgual();
}
