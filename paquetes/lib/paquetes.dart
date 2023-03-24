import 'package:http/http.dart' as http;
import 'dart:math';


import 'package:paquetes/classes/reqres_answers.dart';

//import 'classes/reqres_answers.dart';

void getReqRes_service(){

  final url = Uri.parse('https://reqres.in/api/users?page=2');
  http.get(url).then((res){
    
  final resReqRes =  reqResAnswerFromJson(res.body);
  print('Page: ${resReqRes.page}');
  print('Per Page: ${resReqRes.perPage}');
  print('ID Third Element: ${resReqRes.data[2].id }');
  
  //print(res);
  /*final body = convert.jsonDecode(res.body);
  print('Page: ${body['page']}');
  print('Per Page: ${body['per_page']}');
  print('ID Third Element: ${body['data'][2]['id']}');
  */

  });
}

void getReqRes_pokemon(){
      
      final url = Uri.parse('https://pokeapi.co/api/v2/pokemon');
      http.get(url).then((res){
      
      var random = Random();
      int pokemon = random.nextInt(19); 


      final resReqRes =  pokemonFromJson(res.body);
      //print('Pokemon: ${resReqRes.results[0].name}');
      //print('Url: ${resReqRes.results[0].url}');
      //print('Your Pokemon is: ${resReqRes.results[pokemon].name} And your URL is: ${resReqRes.results[pokemon].url}');
      
      });
}


void getReqRes_Datapokemon(){
      
      final url = Uri.parse('https://pokeapi.co/api/v2/pokemon/14/');
      http.get(url).then((res){
      
      var random = Random();
      int pokemon = random.nextInt(19); 


      final resReqRes =  pokemonDataFromJson(res.body);
      //print('Pokemon: ${resReqRes.results[0].name}');
      //print('Url: ${resReqRes.results[0].url}');
      print('===========================');
      print('Your Pokemon is: ${resReqRes.forms[0].name}');
      print('Your Pokemon Version is: ${resReqRes.gameIndices[pokemon].version.name}');
      print('Your Pokemon Move is: ${resReqRes.moves[1].move.name} Learned at: ${resReqRes.moves[1].versionGroupDetails[pokemon].levelLearnedAt} and your Pokemon version is: ${resReqRes.moves[1].versionGroupDetails[pokemon].versionGroup.name} ');
      print('===========================');
      });
}