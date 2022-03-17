import 'package:todolist/models/task.dart';
import 'package:faker/faker.dart';


var faker = Faker();

var tasks = List<Task>.generate(80, (i) => Task(i, faker.lorem.sentence(), random.boolean(), faker.date.dateTime()));
