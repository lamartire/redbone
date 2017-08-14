# language: ru

Функционал: Редбон
  Сценарий: Создание экземпляра рэдбона
    Допустим мы создадим io на порту 8000
    И мы создадим экземпляр редбона
    Тогда экземпляр будет создан

  Сценарий: Выполнение мидлвар и действия CONNECTION
    Допустим мы создадим io на порту 8000
    И мы создадим экземпляр редбона
    И мы добавим мидлвару которая запишет свое выполнение в this.mw
    И мы подключимся к сокету на порту 8000
    Тогда в this.mw будет true
    И в this.types появится "@@server/CONNECTION"

  Сценарий: Хранилище в Socket и диспатч на сервер
    Допустим мы создадим io на порту 8000
    И мы создадим экземпляр редбона
    И мы добавим мидлвару "./demo/1.middleware.js"
    И мы подключимся к сокету на порту 8000
    И произойдет dispatch с типом "@@TEST1"
    И произойдет dispatch с типом "@@TEST2"
    Тогда все будет протестировано

  Сценарий: Вотчеры и диспатч на клиент
    Допустим мы создадим io на порту 8000
    И мы создадим экземпляр редбона
    И мы добавим вотчеры "./demo/1.watchers.js"
    И мы подключимся к сокету на порту 8000
    И произойдет dispatch с типом "@@TEST"
    То на клиенте мы получим диспатч с типом "@@TEST_ECHO"