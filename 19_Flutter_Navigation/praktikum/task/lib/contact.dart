// ignore_for_file: file_names

import 'package:faker/faker.dart';

class Contact {
  String? fullName;
  String? initials;
  String? avatarUrl;
  String? group;
  Contact({this.fullName, this.initials, this.avatarUrl, this.group});
}

Faker faker = Faker();

List<Contact> contactList = [
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Family',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Friends',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Work',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Family',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Friends',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Work',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Family',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Friends',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Work',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Family',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Friends',
  ),
  Contact(
    fullName: faker.person.name(),
    initials: faker.phoneNumber.us(),
    avatarUrl: 'https://picsum.photos/200/300',
    group: 'Work',
  ),
];
