# language: ru
# encoding: utf-8
#parent uf:
@UF9_Вспомогательные_фичи
#parent ua:
@UA42_Тестовые_фичи

@IgnoreOnCIMainBuild


Функциональность: Тестовая фича, проверяющая прикрепление скриншота, когда используется VanessaExt. Все окна клиента тестирования.
 


Сценарий: Тестовый сценарий, проверяющий прикрепление скриншота, когда используется VanessaExt. Все окна клиента тестирования.

	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	И В командном интерфейсе я выбираю 'Основная' 'Справочник1'
	Тогда открылось окно 'Справочник1'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Справочник1 (создание)'
	И в поле с именем 'Наименование' я ввожу текст '111'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть1111111111111'
