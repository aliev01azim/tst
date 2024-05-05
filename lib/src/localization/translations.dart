import 'dart:ui';

import 'package:get/get.dart';

Locale? getLanguageOfKey(String? key) {
  switch (key) {
    case 'ru':
      return const Locale('ru', 'RU');
    case 'en':
      return const Locale('en', 'US');
    default:
      return null;
  }
}

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          "appTitle": "Code demonstration app",
          "login": "Log in",
          "next": "Next",
          "finish": "Finish",
          "password": "Password",
          "create": "Create",
          "edit": "Edit",
          "fill": "Fill this field",
          "status": "Status",
          "enter_your_email_correctly": "Enter your email correctly",
          "enter_at_least_characters": "Enter at least 8 characters",
          "enter_your_email": "Enter your email",
          "no_internet_connection": "No internet connection...",
          "enter_your_password": "Enter your password"
        },
        'ru_RU': {
          "appTitle": "Кододемонстрация",
          "login": "Логин",
          "next": "Продолжить",
          "password": "Пароль",
          "finish": "Завершить",
          "create": "Создать",
          "fill": "Заполните это поле",
          "status": "Статус",
          "edit": "Редактировать",
          "enter_your_email_correctly": "Введите почту корректно",
          "enter_at_least_characters": "Введите минимум 8 символов",
          "enter_your_email": "Введите свою почту",
          "no_internet_connection": "Отсутствует интернет соединение...",
          "enter_your_password": "Введите пароль"
        },
      };
}

//пример английский :

// 'en_US': {                       -----  en это код языка,Us - код страны
//   'house': 'House',              -----  house - ключ переводимого слова(для всех языков он один), House - уже его перевод на соответствующем языке
// },

// В общем,заполняешь по ключу-переводу обязательно каждый язык(какой требует ввести заказчик)
// Захотел дописать - добавляй ключи-переводы через запятую в соответствующий язык (пример свееерху в комменте)