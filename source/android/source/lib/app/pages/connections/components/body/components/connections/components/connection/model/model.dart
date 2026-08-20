// Connections page - Body - Connections list - Connection - Model

class ConnectionModel {

  final String flag;
  final String name;
  final bool isChosen;
  final bool isAvailable;
  final void Function () onTap;


  ConnectionModel ({
    required this.flag,
    required this.name,
    required this.isChosen,
    required this.isAvailable,
    required this.onTap
  });

}