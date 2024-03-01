import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchapp/blocs/search_bloc/search_bloc.dart';
import 'package:searchapp/blocs/search_bloc/search_event.dart';
import 'package:searchapp/data/data.dart';

class MySearchController {
  final BuildContext context;

  MySearchController({required this.context});

  onChange(String value) {
    value = value.toLowerCase();
    List<String> listOfNames =
        searchable.where((name) => name.toLowerCase().contains(value)).toList();
    if (value.isEmpty) {
      listOfNames = [];
      context.read<SearchBloc>().add(SearchingEvent(listOfNames));
    }
    context.read<SearchBloc>().add(SearchingEvent(listOfNames));
  }
}
