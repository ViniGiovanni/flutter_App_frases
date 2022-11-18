//cria um import para funções matemáticas
import 'dart:math';

import 'package:flutter/material.dart';

// void main(){
//
//   runApp(MaterialApp(
//     home: Container(
//       color: Colors.blue,
//
//     ),
//   ));
// }

//
// //Esqueleto Scaffold
// void main(){
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Display Superior'
//         ),
//         backgroundColor: Colors.green[200],
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(10),
//         child: Text(
//           'Conteudo central'
//         ),
//       ),
//       bottomNavigationBar: BottomAppBar(
//         color: Colors.lightGreen,
//         child: Padding(
//           padding: EdgeInsets.all(10),
//
//             child: Row(
//               children: <Widget>[
//
//                 Text('Conteudo inferior')
//               ],
//             ),
//           ),
//         ),
//     ),
//   ));
// }
// void main (){
//   runApp(MaterialApp(
//
//     home: statelessApp1(),
//   ));
// }

//Stateless -> criar a classe e puxar ela no home - (Constante)

//Stateful -> cirar a classe e puxar ela no home - (Variável)

// class statelessApp1 extends StatelessWidget {
//   const statelessApp1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.blue,);
//   }
// }
//
// class statelessApp2 extends StatefulWidget {
//   const statelessApp2({Key? key}) : super(key: key);
//
//   @override
//   State<statelessApp2> createState() => _statelessApp2State();
// }
//
// class _statelessApp2State extends State<statelessApp2> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(color: Colors.red,);
//   }
// }
//
// void main(){
//   runApp(MaterialApp(
//
//     home: lessHome(),
//   ));
// }
// class lessHome extends StatelessWidget {
//   const lessHome({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//
//       // centralizar logo,
//       // mudar a posição do logo dentro do container
//       child: Container(
//         height:120 ,
//         width: 120 ,
//         color: Colors.blue,
//         //class Align, coordenadas
//         child: Align(
//           alignment: Alignment(-1.0,-0.3),
//           child: FlutterLogo(size: 60,),
//
//       ),
//       ),
//     );
//   }
// }

// void main(){
//   runApp(MaterialApp(
//
//     home: chamaApp(),
//   ));
// }
//
// class chamaApp extends StatelessWidget {
//   const chamaApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//
//         leading: const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Menu',
//           onPressed: null,
//
//         ),
//         title: Text('Title,Title,Title,Title'),
//         actions: const [
//           IconButton(onPressed: null, icon:
//           Icon(Icons.search),
//
//           tooltip: 'Pesquisa',
//           ),
//         ],
//       ),
//
//       body: Center(
//         child: Text('Vitor não gosta de repetição'),
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         tooltip: 'ADD',
//         onPressed: null,
//         child: Icon(Icons.add),
//
//       ),
//     );
//   }
// }

// Implementar um contador
// class Conter extends StatefulWidget {
//   const Conter({Key? key}) : super(key: key);
//
//   @override
//   State<Conter> createState() => _ConterState();
// }
//
// class _ConterState extends State<Conter> {
//
//   // int = zero e i, a variavel increment
//   int _conter = 0; void _increment(){
//       setState(() {
//       // _conter incrementar de 1 em 1
//         _conter++;
//       });
//     }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//
//       children: <Widget>[
//
//         ElevatedButton(onPressed: _increment,
//             child: Text('Incremento'),
//         ),
//
//         const SizedBox(width:16), Text('Contador: $_conter')
//       ],
//     );
//   }
// }
//
// void main(){
//   runApp(MaterialApp(
//
//     home: Scaffold(
//       body: Center(
//         child: Conter(),
//       ),
//     ),
//   ));
// }
//
// void main() {
//   runApp(MaterialApp(
//     home: GridV(),
//   ));
// }
//
// class GridV extends StatelessWidget {
//   const GridV({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//
//       primary: false,
//
//       padding: EdgeInsets.all(20),
//
//       crossAxisCount: 2, crossAxisSpacing: 10,
//       mainAxisSpacing: 10,
//       children: <Widget>[
//         Container(
//           padding: EdgeInsets.all(10), color: Colors.lightBlue[100],
//
//           child: Text('Aluno depois das oito é chato'),
//
//         ),
//
//         Container(
//           padding: EdgeInsets.all(10), color: Colors.lightBlue[100],
//
//           child: Text('Aluno depois das oito é chato'),
//
//         ),
//
//         Container(
//           padding: EdgeInsets.all(10), color: Colors.lightBlue[100],
//
//           child: Text('Aluno depois das oito é chato'),
//
//         ),
//
//         Container(
//           padding: EdgeInsets.all(10), color: Colors.lightBlue[100],
//
//           child: Text('Aluno depois das oito é chato'),
//
//         ),
//
//       ],
//     );
//   }
// }


//app 1 de frases randômicas
void main(){

  runApp(MaterialApp(

    debugShowCheckedModeBanner: false,

  home: App1(),
  ));
}
//stateless = constante
// stateful = variavel

class App1 extends StatefulWidget {
  const App1({Key? key}) : super(key: key);
  @override
  State<App1> createState() => _App1State();
}
class _App1State extends State<App1> {

  var _frases = [
    'O medo é o caminho para o lado negro',
    'Treine a si mesmo a deixar partir tudo que teme perder',
    'A vida é uma dádiva',
    'A luz na escuridão é você',
    'Desistir? Jamais!'
  ];

  var _frasesGerada = 'Clique para gerar frases';
  void _gerarFrases(){

    //Gerar número randômico de 0,1,2,3,4

    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _frasesGerada= _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {

  //Scaffold = esqueleto do app
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases do Star Wars',
        style: TextStyle(color: Colors.black,
        ),),
        backgroundColor:  Colors.lightGreen,
      ),


      body: Container(
        padding: EdgeInsets.all(16),
        
        //criar borda no body, na parte central
        //do display
        decoration: BoxDecoration(border:  Border.all(
          width: 3, color: Color(0xff21D266),
        )),
        child: Column(
          
          //criei uma classe filhos para abrigar duas classes,
          //class image do logo e text para clicar e gerar 
          //as frases
          children: <Widget>[
            Image.asset('image/Logo.png'),
            Text(_frasesGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic
            ),
            ),
            TextButton(onPressed: _gerarFrases, child: Text(
              'Nova Frase',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
             backgroundColor: Color(0xff21D266),
             fontWeight: FontWeight.bold,
              ),
            ))
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Color(0xff21D266),
        child: Text('.'),
      ),
    );
  }
}


