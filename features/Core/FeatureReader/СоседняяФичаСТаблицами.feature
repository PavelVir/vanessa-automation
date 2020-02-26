﻿# language: ru

@IgnoreOnWeb

@ExportScenarios


Функционал: Подключение сценария как шага 2
	Как Разработчик
	Я Хочу чтобы я мог в качестве шага указывать уже существуюющий сценарий из соседней фичи
 

Сценарий: Я вызываю шаг из соседней в котором есть одна таблица и параметр "Параметр" типа строка

	Когда я вызвал обычный шаг сценария
	И в этом шаге я принимаю строковый параметр "Параметр" и таблицу
	 | Значение1 | 1        |
	 | Значение2 | 2        |

	 
Сценарий: Я вызываю шаг из соседней в котором есть три таблицы и параметр "Параметр" типа строка

	Когда я вызвал обычный шаг сценария
	И в этом шаге я принимаю строковый параметр "Параметр" и три таблицы
	 | Значение1 | 1        |
	 | Значение2 | 2        |
	 
	 | Значение3 | 3        |
	 | Значение4 | 4        |
	 
	 | Значение5 | 5        |
	 | Значение6 | 6        |
	 
Сценарий: Я вызываю шаг из соседней в котором есть четыре таблицы и параметр "Параметр" типа строка

	Когда я вызвал обычный шаг сценария
	И в этом шаге я принимаю строковый параметр "Параметр" и три таблицы
	 | Значение1 | 1        |
	 | Значение2 | 2        |
	 
	 | Значение3 | 3        |
	 | Значение4 | 4        |
	 
	 | Значение5 | 5        |
	 | Значение6 | 6        |
	 	 
	И в этом шаге я принимаю строковый параметр "Параметр" и таблицу
	 | Значение1 | 7        |
	 | Значение2 | 8        |
		 