void main () {

  String rodrigo = "OI MEU NOME É warley";

  void calcular() {
    setState(() {
      double nota1 = double.parse(nota1Control.text);
      double nota2 = double.parse(nota2Control.text);
      double nota3 = double.parse(nota3Control.text);
      double nota4 = double.parse(nota4Control.text);

      double nota = (nota1 + nota2 + nota3 + nota4) / 4;
      print(nota);

      if (nota >= 6) {
        info = "Aprovado: ${nota.toStringAsPrecision(2)}";
      } else if (nota < 6) {
        info = "Reprovado: ${nota.toStringAsPrecision(2)}";
      }
    });
  }


}

