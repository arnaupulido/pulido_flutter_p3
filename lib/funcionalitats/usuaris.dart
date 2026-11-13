class Usuaris {
  final String nom;
  final String email;

  const Usuaris({required this.nom, required this.email});
}
//LLista curta amb usuaris ja posats
final List<Usuaris> llistaCurta = [
  const Usuaris(nom: 'Usuari 1', email: 'usuari1@exemple.com'),
  const Usuaris(nom: 'Usuari 2', email: 'usuari2@exemple.com'),
  const Usuaris(nom: 'Usuari 3', email: 'usuari3@exemple.com'),
];
//Aixo ho he fet per a la llista llarga de 100 usuaris
List<Usuaris> crearUsuaris() {
  List<Usuaris> llista = [];
  for (int i = 1; i <= 100; i++) {
    llista.add(Usuaris(nom: 'Usuari $i', email: 'usuari$i@exemple.com'));
  }
  return llista;
}
//Llista llarga de usuaris cridant la funcio crear usuaris
final List<Usuaris> llistaLlarga = crearUsuaris();