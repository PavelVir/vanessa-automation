﻿# language: ru

@IgnoreOnCIMainBuild
@ExportScenarios

Функционал: Создание фильтра формы списка



@ТипШага: UI.Таблицы.Фильтр	
@Описание: Позволяет установить фильтр на список через меню Ещё/Настроить список
@ПримерИспользования: И Я устанавливаю фильтр на список
@ПримерИспользования:   	    | Наименование | Товар1 | 

Сценарий: Я устанавливаю фильтр на список

	И     я нажимаю на кнопку "Настроить список..."
	Тогда открылось окно "Настройка списка"
	И     я нажимаю на кнопку "Установить стандартные настройки"
	И для каждой строки таблицы отбора я устанавливаю отбор в списке
		| ИмяФильтр | ЗначениеФильтра | 
		
	И     я нажимаю на кнопку "Завершить редактирование"	

	
@ТипШага: UI.Таблицы.Фильтр	
@Описание: Позволяет сбросить фильтр на список через меню Ещё/Настроить список
@ПримерИспользования: И Я очищаю фильтр на форме списка

Сценарий: Я очищаю фильтр на форме списка
	И     я нажимаю на кнопку "Настроить список..."
	Тогда открылось окно "Настройка списка"
	И     я нажимаю на кнопку "Установить стандартные настройки"
	И     я нажимаю на кнопку "Завершить редактирование"	
