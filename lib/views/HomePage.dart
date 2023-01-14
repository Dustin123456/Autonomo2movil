import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'ABISOFT- GESTOR DE TAREAS',
          style: GoogleFonts.poppins(
            fontSize: 22,
            color: Colors.white
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),

      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.08, -0.59),
                child: Image.asset(
                  'assets/images/imagen_2023-01-12_230831608.png',
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, -0.27),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/InicioSesion');
                  },
                  child: Text('Iniciar sesión',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 14,
                      )),
                  // backgroundColor: Theme.of(context).primaryColor,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8)),
                ),
              ),

              Align(
                alignment: AlignmentDirectional(-0.09, -0.03),
                child: ElevatedButton(
                  onPressed: () async {
                    Navigator.pushNamed(context, '/Registro');
                  },
                  child: Text('Registrarse',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 14,
                      )),
                  // backgroundColor: Theme.of(context).primaryColor,
                  // shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(8)),
                ),
              ),

              Align(
                alignment: AlignmentDirectional(-0.09, -0.11),
                child: Text(
                  'No tienes una cuenta?',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
