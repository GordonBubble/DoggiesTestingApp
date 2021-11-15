# DoggiesTestingApp
Тестовое задание на позицию Junior

Все задачи, включая дополнительные, выполнены.

Задача: написать приложения для ознакомления с породами собак.
Для получения данных используется публичное API https://dog.ceo/dog-api/documentation/
Макеты: https://www.figma.com/file/K77sEpCGaPm1ir3t8Mc80y/Dogs?node-id=0%3A1
Приложение должно состоять из двух экранов:
1. Экран с списком пород собак.
- Пользователь открывает приложения;
- Загружается список пород собак (метод https://dog.ceo/api/breeds/list/all)
- Во время загрузки на экране должен отображаться спинер;
- После загрузки на экране отображается список названиями пород собак на английском (sub-breed можно не отображать);
- При нажатии на породу должен открываться экран с фотографиями собак данной породы.
2. Экран с фотографиями
- Пользователь открывает экран с фотографиями собак определенной породы;
- Загружается список фотографий собак (метод https://dog.ceo/api/breed/<название породы>/images, прим. https://dog.ceo/api/breed/hound/images);
- Во время загрузки на экране должен отображаться спинер;
- После загрузки на экране отображается плитка из квадратных фотографий по 2 в ряд;
- Каждая фотография должна загружаться отдельно, в первую очередь должны загружаться фотографии, ячейки которых видны пользователю в данный момент;
Дополнительные задачи (не обязательные):
- Реализовать механизм Pull To Refresh - перезапрашивать список на экране если потянуть контент сверху вниз;
- Реализовать кеширование изображений - чтобы уже загруженные изображения не перезапрашивались;
- Реализовать шаринг фотографий по долгому нажатию на фотографию используя системный UIActivityViewController;
- Реализовать просмотр фотографии на весь экран при нажатии на фотографию в списке.Условия реализации:
- Не использовать сторонние библиотеки
- Написано используя последнюю публичную версию Swift
- Приложение должно поддерживать iOS 13 и более поздние версии
- Приложение должно поддерживать все размеры экранов начиная с iPhone SE
- Приложение должно быть оформлено базовыми UI элементами из Apple Design Guidelines
- Код должен быть читабельным и поддерживаемым;
- Код должен придерживаться одного code-style.Результат должен быть представлен в виде .ZIP архива с исходным кодом приложения. Не публикуйте код проекта в публичных репозиториях (Github, Bitbucket)
