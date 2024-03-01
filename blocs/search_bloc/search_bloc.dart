import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searchapp/blocs/search_bloc/search_event.dart';
import 'package:searchapp/blocs/search_bloc/search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(EmptySearchState()) {
    on<SearchingEvent>(
      (event, emit) {
        emit(state.copyWith(data: event.data));
      },
    );
  }
}
