import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EquatableTesting extends StatefulWidget {
  const EquatableTesting({super.key});

  @override
  State<EquatableTesting> createState() => _EquatableTestingState();
}

class _EquatableTestingState extends State<EquatableTesting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Person person1 = Person(name: 'Amit', age: 33);
          Person person2 = Person(name: 'Amit', age: 33);

          print(person1.hashCode.toString());
          print(person2.hashCode.toString());

          print(person1 == person2);
        },
      ),
    );
  }
}

class Person extends Equatable {
  final String name;
  final int age;

  const Person({required this.name, required this.age});

  // ===== ===== =====
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is Person &&
  //         runtimeType == other.runtimeType &&
  //         name == other.name &&
  //         age == other.age;

  // @override
  // int get hashCode => name.hashCode ^ age.hashCode;
  // ===== ===== =====
  
  @override
  List<Object?> get props => [name, age];
}
