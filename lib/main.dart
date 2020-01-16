import 'package:flutter/material.dart';

import 'injection/dependency_injection.dart';
import 'module/contacts/contact_list_view.dart';
import 'module/events/event_list_view.dart';
import 'module/notes/note_list_view.dart';
import 'routes/Routes.dart';

void main() {
  Injector.configure(Flavor.PRO);

  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primarySwatch: Colors.indigo),
      home: NotesPage(),
      routes: {
        Routes.contacts: (context) => ContactsPage(),
        Routes.events: (context) => EventsPage(),
        Routes.notes: (context) => NotesPage(),
      },
    ),
  );
}
