# mentor4u database

1. table account - таблица аккаунт с полями (никнейм, пароль, почта, ссылка на фото, рейтинг, заблокирован или нет)
2. table human - таблица с подробной информацией о личности пользователя с полями (имя, фамилия, возраст, пол, профессия), также присутствует внешний ключ, по которому осуществляется связь с таблицей account
3. table message - таблица в которой будут храниться личные сообщения между пользователями с полями (id получателя, дата создания, тело сообщения) также присутствует внешний ключ, по которому осуществляется связь с таблицей account
4. table rating (пока под вопросом) - таблица с информацией о рейтинге пользователя с полями (оценка), также присутствует внешний ключ, по которому осуществляется связь с таблицей account
5. table role - таблица с названиями ролей, которые допускаются в проекте (учитель, ученик, администратор, гость)
6. table account_role - таблица с информацией о том, какая роль присуще тому или иному аккаунту (содержит два внешних ключа для связи с таблицей account и с таблицей role)
7. table social_links - таблица содержит информация о соц. сетях в которых проводит время владелец аккаунта с полями (ссылка на иконку и текст ссылки на соц.сеть) также присутствует внешний ключ, по которому осуществляется связь с таблицей account
8. table students - таблица с информацией о том, какими студентами руководит преподаватель, также присутствует внешний ключ, по которому осуществляется связь с таблицей account
9. table user_competences - таблица с информацией о компетенциях и соответствующем стаже, которая связана внешним ключем с таблицей account
