# code_demo

Демо todo проект

## Структура проекта

└── 📁test # Тесты

└── 📁assets # Ресурсы

└── 📁yaml # Зависимости

└── 📁lib

    ── 📁di.dart ### DI через getx 
    ── 📁main.dart
    ── 📁src
        └── 📁common  # Общие виджеты/модельки для всех модулей
            └── 📁apis # retrofit апишки 
            └── 📁models
            └── 📁widgets
        └── 📁infrastructure # Инфраструктура приложения
            └── 📁routes ### Навигация через getx
            └── 📁services # Интернет,сокеты,сервисы бд...
            └── 📁statics  # Константы,тема,стили... ### bindings
            └── 📁utils # Exceptions,Extensions,helpers...
        └── 📁localization ### Локализация через getx
        └── 📁modules # МОДУЛИ: 
            └── 📁auth 
                └── 📁data
                    └── 📁data_sources
                    └── 📁dto
                    └── 📁repositories
                └── 📁domain
                    └── 📁entities
                    └── 📁usecases
                └── 📁presentation
                    └── 📁screens
                        └── 📁state_managers ### Getx controller
            └── 📁home
                └── 📁data
                └── 📁domain
                └── 📁presentation

## Особенности

Основные особенности и технологии, используемые в проекте:

- Модульнная,чистая архитектура
- Каждый модуль разделен на 3 слоя,которые общаются меж собой через абстракции
- di - getPut,bindings
- Навигация - getPages
- HTTP реквесты - dio + retrofit
- Реализован lazy load + refresh
- Стейтменеджер - getx
- Entity,Dto - freezed 
- Кэширование - Hive для больших данных. 
  flutter_secure_storage - для токена(более безопасный)
- Локализация - getx

