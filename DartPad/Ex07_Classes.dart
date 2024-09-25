void main() {
//clase con párametros posicionales, que debe de respetar su orden para asignadas en la propiedad
  final Hero wolverine = Hero('Logan', 'Regeneración');
  // clase posicionales con párametros no posicionales, los puedo mandar en desorden
  final xmen = Team(type:"Heroes", name:"X-Men");
  final brotherhood = Team (name: "The brotherhood of evil mutants");
  

  print(wolverine.name);
  print(wolverine.power);
  print("----------------------------------");
  print(xmen);
  print(xmen.name);
  print(xmen.type);
  print(xmen.toString());
  print("----------------------------------");
 
  print(brotherhood.name);
  print(brotherhood.type);
  //inviocando el numero reescrito con @Override
  print(brotherhood.toString());
}

class Hero{
  String name;
  String power;

Hero(String pName, String pPower)
  : name = pName,
    power = pPower;
}


class Team{
  
  String name;
  String type;
  
  Team({required this.name, this.type="No definido"});

 @override
String toString()
{
  return 'Grupo: $name, Tipo: $type';
}
}
