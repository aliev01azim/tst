# code_demo

Демо todo проект

## Структура проекта

└── 📁test # Тесты

└── 📁assets # Ресурсы

└── 📁yaml # Зависимости

└── 📁lib

    ── 📁di.dart
    ── 📁main.dart
    ── 📁src
        └── 📁common  # Общие виджеты/модельки для всех модулей
            └── 📁models
            └── 📁widgets
        └── 📁infrastructure # Инфраструктура приложения
            └── 📁routes # Навигация
            └── 📁services # Интернет,сокеты,сервисы бд...
            └── 📁statics  # Константы,тема,стили...
            └── 📁utils # Exceptions,Extensions,helpers...
        └── 📁localization # Локализация
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
                        └── 📁state_managers #Блок,Риверпод,Гетх...
                    └── 📁widgets # Виджеты относящиеся только к ДАННОМУ модулю 
            └── 📁home
                └── 📁data
                └── 📁domain
                └── 📁presentation

## Особенности

Основные особенности и технологии, используемые в проекте:

- Модульнная,чистая архитектура
- Каждый модуль разделен на 3 слоя,которые общаются меж собой через абстракции
- di - кастомный di_container (не сервис локатор)
- Навигация - auto_route
- HTTP реквесты - dio
- Реализован lazy load + refresh
- Стейтменеджер - flutter_bloc + freezed
- Кэширование - Hive для больших данных. 
  flutter_secure_storage - для токена(более безопасный)
- Локализация - l10n
- Entity,Dto,auto_route - работают в связке с кодогенерацией
