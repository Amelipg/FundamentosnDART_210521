void main()
{
  final pokemon = {
    'Name': 'Pikachu',
    'HP': 100,
    'IsAlive':true,
    'abilities': ['Impact Trueno', 'Cola de Hierro', 'Rapido' ],
    'sprites':
    {
      1: "pikachu/front.png",
      2: "pikachu/back.png"
    }
  };

  final Map<String, dynamic> trainer ={
    'Name': 'Ash Ketchup',
    'Gender': 'Male',
    'Age': 12,
    'isGymnasiumLeader': false
  };
  final pokemons=
  {
    1: "Pikachu",
    2: "Charmander",
    3: "Squirtle",
    4: "Pidgeot",

  };

  print("""
  Los datos del pokemon usando el Mapa son:
  -------------------------------
  Pokemon = $pokemon
  Trainer = $trainer
  Pokemons = $pokemons

   """);

print("""

""");
  print("**********************************************************");

  print("""
  Accediendo a las propiedades del pokemon usando los braquets/corchetes [] :
  --------------------------------------------------
  
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo= ${pokemon['IsAlive']}
  ----------------------------------------------------------------------

  """);
//  Reto 01: Obtener el valor independiente de las imagenes de front y back del pokemon
//  Front: ${(pokemon['sprites'])[1]}
//  Back: ${(pokemon['sprites'])[2]}

// Dado que la solución ya esta absoleta lo que queda es crear una nueva variable con el objeto y destructurar las imagenes para acceder a ellas
  final tpm_sprites = pokemon['sprites'] as Map<int, String>;
 print("""
  Accediendo a las propiedades del pokemon usando los braquets/corchetes [] :
  --------------------------------------------------
  
  Nombre = ${pokemon['Name']}
  HP = ${pokemon['HP']}
  Vivo= ${pokemon['IsAlive']}
  Sprites = ${pokemon['sprites']}
  ----------------------------------------------------------------------

Front: ${tpm_sprites[1]}
Back: ${tpm_sprites[2]}

  """);


}