﻿///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-ADD
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;

&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-ADD.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	
	Ванесса = КонтекстФреймворкаBDD;

	ВсеТесты = Новый Массив;

	//описание параметров
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯДобавляюКШагуФайлИзСТипом(Парам01, Парам02)","ЯДобавляюКШагуФайлИзСТипом",
		"И Я добавляю к шагу файл из ""ИмяПеременной"" с типом ""ТипФайла""",
		"Добавляет файл к текущему шагу в отчете Allure.", "Файлы.Прикрепление файлов к отчету Allure");
	
	Возврат ВсеТесты;
	
КонецФункции

///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт

КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт

КонецПроцедуры

///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//И Я добавляю к шагу файл из "ИмяПеременной" с типом "ТипФайла"
//@ЯДобавляюКШагуФайлИзСТипом(Парам01, Парам02)
Процедура ЯДобавляюКШагуФайлИзСТипом(ПолноеИмяФайла, ТипФайла) Экспорт
	
	Ванесса.ДобавитьФайлКШагу(ПолноеИмяФайла, ТипФайла);
	
КонецПроцедуры