import 'package:bloc/bloc.dart';

class NavigationCubit extends Cubit<int> {
  NavigationCubit() : super(0);

  changePage(int index) {
    print("chanage page called $index");
    emit(index);
  }
}
