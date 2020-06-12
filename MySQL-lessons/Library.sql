drop database if exists library;
create database library;
use library;

create table books (
	id int not null primary key auto_increment,
    book_title varchar(120) not null,
    description varchar(1000) default 'Опис відсутній',
    publication_date date not null default '2018-01-01',
    category varchar(30) not null,
    isbn varchar(20) not null unique,
    number_of_pages int not null,
    author_first_name varchar(45) not null,
    author_last_name varchar(45) not null,
    author_email varchar(50) not null ,
    author_age tinyint not null,
    author_birthday date not null,
    author_awards varchar(120) default null
);

insert into books(book_title, description, publication_date, category, isbn, number_of_pages, author_first_name, author_last_name, 
					author_email,author_age, author_birthday, author_awards)
    values
        ('Приключения Шерлока Холмса','Скандал в Богемии, Союз рыжих, Установление личности, Тайна Боскомской долины, Пять зернышек апельсина, Человек с рассеченной губой, Голубой карбункул, Пестрая лента, Палец инженера, Знатный холостяк, Берилловая диадема, «Медные буки»','1892-01-01','Классические детективы','899-15-11148-53',168,'Артур','Конан Дойл','ArthurConanDoyle@gmail.com',71,'1859-05-22','Рыцарь-бакалавр'),
        ('Убийство в "Восточном экспрессе"','На этот раз Эркюлю Пуаро придется расследовать убийства в поездах. В «Восточном экспрессе» ему придется распутывать клубок событий, закрученный вокруг жестокого убийства, – и лишь только блестящие таланты великого сыщика способны помочь раскрыть преступление.','1991-01-01','Классические детективы','5-145-4589-89',110,'Агата','Кристи','AgathaChristie@gmail.com',85,'1890-09-15','Превосходнейший орден Британской империи'),
        ('Десять негритят','Десять никак не связанных между собой людей в особняке на уединенном острове... Кто вызвал их сюда таинственным приглашением? Зачем кто-то убивает их, одного за другим, самыми невероятными способами? Почему все происходящее так тесно переплетено с веселым детским стишком?','2009-01-01','Классические детективы','978-5-699-33504-6',100,'Агата','Кристи','AgathaChristie@gmail.com',85,'1890-09-15','Превосходнейший орден Британской империи'),
        ('Мегрэ забавляется','Франкоязычный писатель бельгийского происхождения, один из самых знаменитых в мире представителей детективного жанра в литературе. На его счету 425 книг, среди которых около 200 бульварных романов под 16 псевдонимами, 220 романов под настоящим именем и трехтомная автобиография. Наиболее известен серией детективов о полицейском комиссаре Мегрэ.','2002-01-01','Классические детективы','7-895-35698-12',300,'Жорж','Сименон','GeorgesSimenon@gmail.com',86,'1903-02-13','премия Эдгара Аллана По'),
        ('Дело Сен-Фиакра','Мегрэ так давно не был на своей родине, в местечке Сен-Фиакр! И вот случай представился. "В церкви Сен-Фиакр во время мессы в День поминовения будет совершено преступление" - так написано в анонимной записке, которая попала в руки комиссара.','2001-01-01','Классические детективы','5-125-14579-45',70,'Жорж','Сименон','GeorgesSimenon@gmail.com',86,'1903-02-13','премия Эдгара Аллана По'),
        ('Ангелы и демоны','Иллюминаты. Древний таинственный орден, прославившийся в Средние века яростной борьбой с официальной церковью. Легенда далекого прошлого? Возможно… Но почему тогда на груди убитого при загадочных обстоятельствах ученого вырезан именно символ иллюминатов? Приглашенный из Гарварда специалист по символике и его напарница, дочь убитого, начинают собственное расследование и вскоре приходят к невероятным результатам…','2004-01-01','Исторические детективы','5-9577-0201-3',330,'Дэн','Браун','DanBrown@gmail.com',54,'1964-06-22','Crimezone Thriller Awards (2004)'),
        ('Молчание ягнят','Противостояние девушки, расследующей «деяния» серийного убийцы, — и ее «консультанта и союзника», маньяка и философа Ганнибала Лектера, сидящего в тюрьме за убийства и... людоедство. Здесь каждая фраза приближает читателя к волнующей разгадке — и одновременно заставляет искать эту разгадку самостоятельно!','1991-01-01','Триллеры','5-125-14579-54',200,'Томас','Харрис','ThomasHarris@gmail.com',78,'1940-04-11',default),
        ('Побег из Шоушенка','Книга «Побег из Шоушенка» соединяет ужасы тюремной жизни и фантастику побега. Шоушенк – название тюрьмы. Энди, вице-президент солидного банка, приговаривается к двум пожизненным заключениям по обвинению в убийстве жены и ее любовника. Он отбывает заключение в тюрьме Шоушенк, где проходит все круги ада, проявляя недюжинное мужество, упорство и хладнокровие. Если тебе нет еще 30-ти, а ты получаешь пожизненное, то приготовся к худшему: для тебя выхода из Шоушенка не будет.','1982-01-01','Триллеры','5-324-17853-77',260,'Стивен','Кинг','StephenKing@gmail.com',71,'1947-09-21','премия Эдгара Аллана По'),
        ('Код да Винчи','Секретный код скрыт в работах Леонардо да Винчи… Только он поможет найти христианские святыни, дававшие немыслимые власть и могущество… Ключ к величайшей тайне, над которой человечество билось веками, может быть найден… В романе «Код да Винчи» автор собрал весь накопленный опыт расследований и вложил его в главного героя, гарвардского профессора иконографии и истории религии по имени Роберт Лэнгдон. Завязкой нынешней истории послужил ночной звонок, оповестивший Лэнгдона об убийстве в Лувре старого хранителя музея. Возле тела убитого найдена зашифрованная записка, ключи к которой сокрыты в работах Леонардо да Винчи…','2004-01-01','Триллеры','5-17-022457-5',280,'Дэн','Браун','DanBrown@gmail.com',54,'1964-06-22','Crimezone Thriller Awards (2004)'),
        ('Багровые реки','В Герноне, маленьком городке во Французских Альпах, убит университетский библиотекарь. Убит не просто, но с особой жестокостью. Кому могло прийти в голову расправиться с этим человеком? Местная полиция не в силах установить истину, и в помощь ей из столицы прибывает полицейский комиссар Ньеман. В то же самое время в Сарзаке, другом провинциальном городке Франции, в один и тот же день происходят два стран ных события: совершено ограбление в школьном архиве и взломан кладбищенский склеп, где покоится тело десятилетнего Жюда Итэро. Связь этих преступлений неуловима, но чем ближе детективы к разгадке, чем страшнее и кровавее жертвы, оставляемые таинственными преступниками, тем четче прослежи вается зависимость между драмой в горном университете и темными происшествиями в Сарзаке. По роману в 2000 году был поставлен знаменитый фильм, главные роли в котором блистательно сыграли Жан Рено и Венсан Кассель.','2001-01-01','Триллеры','5-94145-023-0',180,'Жан-Кристоф','Гранже','Jean-ChristopheGrange@gmail.com',57,'1961-07-15',default),
        ('Затерянный мир','Роман повествует об опасном и полном приключений путешествии на неведомую землю, заселённую доисторическими животными. В этом романе Конан Дойл показал своё знакомство с последними достижениями научной мысли, его описания до наших дней имеют определённую познавательную ценность. В «Затерянном мире» интересен не только фантастический элемент. Тонкие жизненные наблюдения, характерные бытовые зарисовки, мягкий юмор (к сожалению, иногда пропадающий при переводе) придают книге своеобразную окраску. Содержащиеся в ней сценки из реальной жизни не менее занимательны, чем самые фантастические происшествия. Знакомство с оригинальным творчеством Артура Конан Дойла, писателя, сыгравшего немалую роль в развитии новейшей западной литературы, представляет известный интерес для молодого советского читателя.','1956-01-01','Научная фантастика','5-726-18457-1',550,'Артур','Конан Дойл','ArthurConanDoyle@gmail.com',71,'1859-05-22','Рыцарь-бакалавр'),
        ('Двадцать тысяч лье под водой','Создатель классического приключенческого романа. Писатель, чьи произведения не имеют возраста – и спустя сто лет будут читаться с таким же наслаждением, как и сто лет назад. Взгляните – и даже сейчас вы увидите на кино! и телеэкранах десятки экранизаций романов Жюля Верна. «Двадцать тысяч лье под водой». История профессора Пьера Аронакса и его друзей, волей случая оказавшихся на подводном корабле таинственного капитана Немо… Эту книгу читали, читают и будут читать всегда!','2008-01-01','Научная фантастика','978-5-9713-6211-1',370,'Жюль','Верн','JulesVerne@gmail.com',77,'1905-03-24','Орден Почетного легиона'),
        ('Цветы для Элджернона','Сорок лет назад это читалось как фантастика. Исследующая и расширяющая границы жанра, жадно впитывающая всевозможные новейшие веяния, примеряющая общечеловеческое лицо, отважно игнорирующая каинову печать «жанрового гетто». Сейчас это воспринимается как одно из самых человечных произведений новейшего времени, как роман пронзительной психологической силы, как филигранное развитие темы любви и ответственности. Не зря вышедшую уже в 1990-е книгу воспоминаний Киз назвал «Элджернон, Чарли и я».','2006-01-01','Научная фантастика','5-699-15744-1',120,'Дэниел','Киз','DanielKeyes@gmail.com',86,'1927-08-09','премия «Хьюго» за лучший рассказ'),
        ('Голова профессора Доуэля','Ставя свои дерзкие эксперименты, профессор Доуэль и не предполагал, что однажды в роли подопытного животного окажется он сам, а его бывший ученик получит в полную собственность голову своего учителя, чтобы безнаказанно распоряжаться его гениальными мыслями.','2010-01-01','Научная фантастика','978-5-699-39393-0',33,'Александр','Беляев','beliayev@gmail.com',57,'1884-03-16',default),
        ('Трудно быть богом','На средневековой планете присутствует группа землян-историков. Антон уже пять лет живет в королевстве Арканар под личиной благородного дона Руматы Эсторского. Среди окружающего его зверства и убогости он пытается отыскать искорки будущего, знакомого ему по тускнеющему образу доброй и ласковой Земли.','2009-01-01','Научная фантастика','978-5-9680-0084-2',410,'Аркадий','Стругацкий','strugatskiy@gmail.com',66,'1925-08-28',default),
        ('Пикник на обочине','«Счастье для всех, и пусть никто не уйдёт обиженным!» Знаковые слова… Шедевр братьев Стругацких. Жёсткая, бесконечно увлекательная и в то же время бесконечно философская книга. Время идёт… Но история загадочной Зоны и лучшего из её сталкеров — Рэда Шухарта — по-прежнему тревожит и будоражит читателя.','2006-01-01','Научная фантастика','966-696-346-9',297,'Аркадий','Стругацкий','strugatskiy@gmail.com',66,'1925-08-28',default),
        ('Мертвая зона','Столкновение на льду обернулось для Джона Смита сотрясением мозга. С тех пор его стали преследовать жуткие видения: горящая резина и черный лед. Но вдобавок он приобрел сверхъестественные способности, которыми обладают лишь экстрасенсы. И вскоре Джонни оказывается перед выбором: следует ли ему остановить неразборчивого в средствах политика, рвущегося к власти, и если да, то каким образом это лучше сделать…','2007-01-01','Научная фантастика','985-16-0036-9',171,'Стивен','Кинг','StephenKing@gmail.com',71,'1947-09-21','премия Эдгара Аллана По'),
        ('На Западном фронте без перемен','Их вырвали из привычной жизни… Их швырнули в кровавую грязь войны… Когда-то они были юношами, учившимися жить и мыслить. Теперь они – пушечное мясо. Солдаты. И учатся они – выживать и не думать. Тысячи и тысячи навеки лягут на полях Первой мировой. Тысячи и тысячи вернувшихся еще пожалеют, что не легли вместе с убитыми. Но пока что – на западном фронте все еще без перемен…','1985-01-01','Военная проза','5-197-245789-78',309,'Эрих Мария','Ремарк','ErichMariaRemarque@gmail.com',72,'1898-06-22','Орден «За заслуги перед Федеративной Республикой Германия»'),
        ('Мартин Иден','В романе показан сложный путь к писательской славе парня из рабочей семьи. Судьбу Мартина определила встреча с Рут — девушкой из богатой семьи, неземным существом, которая горячо полюбила неординарного юношу. Под влиянием любви, близкой к поклонению, Мартин изменяется внешне и внутренне, отходит от людей своего круга и… постепенно понимает ничтожность и мерзость мира своей любимой.','1990-01-01','Классическая проза','7-458-12548-13',386,'Джек','Лондон','JackLondon@gmail.com',40,'1876-01-12',default),
        ('Джен Эйр','Появление скромной, милой гувернантки в мрачном замке Рочестера словно несет с собой свет, согревает души его обитателей. Зловещие тайны рассеиваются, страхи отступают перед этой хрупкой на вид, но такой сильной духом девушкой. И когда она начинает борьбу за свою любовь, никакие силы зла не могут остановить ее.','1988-01-01','Классическая проза','6-145-45789-22',124,'Шарлотта','Бронте','CharlotteBronte@gmail.com',38,'1816-04-21',default),
        ('Дары волхвов','Дары Волхвов - повесть О.Генри (Вильяма Сидни Портера) о двух молодожёнах, живущих в тесной комнатушке и испытывающих финансовые проблемы. Несмотря на это, они пытаются сделать друг другу приятное- подарить подарки. И для этого они должны пожертвовать тем, что для них дорого. Подарки - это не главное, конечно, а главное- внимание, забота и любовь, которые почувствовали наши герои. Они понимают истинное счастье.','2005-01-01','Классическая проза','5-271-12647-1',301,'Вильям Сидни','Портер','O.Henry@gmail.com',47,'1862-09-11',default),
        ('Мастер и Маргарита','Роман «Мастер и Маргарита» – визитная карточка Михаила Афанасьевича Булгакова. Более десяти лет Булгаков работал над книгой, которая стала его романом-судьбой, романом-завещанием. В «Мастере и Маргарите» есть все: веселое озорство и щемящая печаль, романтическая любовь и колдовское наваждение, магическая тайна и безрассудная игра с нечистой силой.','2006-01-01','Классическая проза','5-699-15500-7',391,'Михаил','Булгаков','bulgakov@gmail,com',48,'1891-05-15',default),
        ('Гарри Поттер и философский камень','Одиннадцатилетний мальчик-сирота Гарри Поттер живет в семье своей тетки и даже не подозревает, что он — настоящий волшебник. Но однажды прилетает сова с письмом для него, и жизнь Гарри Поттера изменяется навсегда. Он узнает, что зачислен в Школу чародейства и волшебства, выясняет правду о загадочной смерти своих родителей, а в результате ему удается раскрыть секрет философского камня.','2002-01-01','Детские приключения','5-353-00308-X',135,'Джоан','Роулинг','JoanneRowling@gmail.com',53,'1965-07-31','Орден Почетного легиона'),
        ('Приключения Тома Сойера и Гекльберри Финна','Герой этой повести умен, добр, умеет по-настоящему дружить и знает цену людям. Свободолюбие, самостоятельность и сообразительность сделали Гека Финна одним из самых любимых героев подростков разных стран.','1958-01-01','Детские приключения','1-555-25749-22',185,'Марк','Твен','MarkTwain@gmail.com',74,'1835-11-30',default),
        ('Маленький Принц','В одном из писем к матери Сент-Экзюпери признался: “Мне ненавистны люди, пишущие ради забавы, ищущие эффектов. Надо иметь что сказать”. Ему, романтику неба, не чуравшемуся земных радостей, любившему, по свидетельству друзей, “писать, говорить, петь, играть, докапываться до сути вещей, есть, обращать на себя внимание, ухаживать за женщинами”, человеку проницательного ума со своими достоинствами и недостатками, но всегда стоявшему на защите общечеловеческих ценностей, было “что сказать”. И он это сделал: написал сказку “Маленький принц”, о самом важном в этой жизни, жизни на планете Земля, все чаще такой неласковой, но любимой и единственной.','1982-01-01','Детская проза','899-125-78913-12',55,'Антуан','де Сент-Экзюпери','AntoinedeSaint-Exupery@gmail.com',44,'1900-06-29','Орден Почетного легиона');
 
select * from books;
select * from books WHERE id = 5 OR id = 10 OR id = 13;
select * from books WHERE  number_of_pages > 150;
select * from books WHERE author_age > 30;
select * from books WHERE author_awards is null;
select * from books WHERE author_email = 'strugatskiy@gmail.com';
select * from books WHERE isbn = '5-125-14579-54';
select * from books WHERE category = 'Научная фантастика';
select * from books ORDER BY book_title asc;
select * from books ORDER BY author_email asc;
select * from books ORDER BY number_of_pages desc;
select distinct category from books;
select distinct author_first_name from books;
select * from books WHERE publication_date > '2000-01-01';
select * from books WHERE publication_date < '2010-01-01';



