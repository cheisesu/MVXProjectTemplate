## Шаблонный проект для iOS.

### Зависимости
* gem 'cocoapods', '>=1.7'
* gem 'xcodegen', '>=2.6'
* gem 'gd', '>=0.8'
* gem 'generamba', '>=1.5'

### Настройка
1. Клонишь проект. 
2. Придумываешь имя (вместо **MV-Project-Template**) - основной таргет и название проекта
3. В файле **Rambafile** меняешь ***project_name*** и ***xcodeproj_path***
4. В файле **project.yml** меняешь ***MV-Project-Template*** на придуманное
5. В **Podfile** меняешь ***MV-Project-Template*** на нужный таргет
6. В **support/configs/common.xcconfig** меняешь нужные настройки на свои
7. Запускаешь **xcodegen** и потом **pod install**

### Добавление модуля
С помощью **generamba** добавляешь модуль (заранее скачиваешь шаблоны **generamba templates install**). В **RoutingItems.swift** добавляешь нужный item для созданного модуля и в **ModulesItemsFactory.swift** - создание модуля.