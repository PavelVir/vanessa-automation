# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA6_Работать_с_подключением_Test_client

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@IgnoreOn8310
@IgnoreOn8311

@tree

//https://github.com/Pr-Mex/vanessa-automation/issues/641

Функционал: Подключение клиентов тестирования с помощью шагов
 

Сценарий: Повторное подключение шагом: Я подключаю клиент тестирования с параметрами:
	Дано Я закрыл все окна клиентского приложения
	И я закрываю сеанс TESTCLIENT
	Когда я запускаю служебный сеанс TestClient с ключом TestManager в той же базе
	
	Когда Я открываю VanessaAutomation в режиме TestClient со стандартной библиотекой
	
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я устанавливаю флаг с именем 'DebugLog2'
	
	Когда В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "КлиентыТестирования/ПовторноеПодключениеШагом"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	
	И я очищаю окно сообщений пользователю
	
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Затем я жду, что в сообщениях пользователю будет подстрока "TestClient подключен" в течение 60 секунд
	Когда в логе сообщений TestClient есть строка по шаблону "*TestClient подключен на * порту."
	
	И я очищаю окно сообщений пользователю
	
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
	Затем я жду, что в сообщениях пользователю будет подстрока "Уже открытый TestClient подключен" в течение 60 секунд
	
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ЗакрытьПодключенныйTestClient/ЗакрытьПодключенныйTestClient"
	
	И Я нажимаю на кнопку перезагрузить сценарии в Vanessa-Automation TestClient
	И Я нажимаю на кнопку выполнить сценарии в Vanessa-Automation TestClient
	
Сценарий: Закрыть TestClient
	И я закрываю TestClient "TM"	
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'