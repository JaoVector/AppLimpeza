
import 'package:postgres/postgres.dart';


void main(List<String> arguments) async {

  final sql = PostgreSQLConnection("10.0.2.2", 5432, "postgres", username: "postgres", password: "123456");

  await sql.open();

  print('Connected to Postgres database');



}