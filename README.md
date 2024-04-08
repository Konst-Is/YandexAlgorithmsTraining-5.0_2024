# Решение задач из курса "Тренировки по алгоритмам 5.0" от Яндекс, 2024

----
<details>
<summary>
<b>Покраска деревьев (<a href="YandexAlgorithmsTraining-5.0/TreePainting.swift">TreePainting.swift</a>)</b>
</summary>

#### Условие
Вася и Маша участвуют в субботнике и красят стволы деревьев в белый цвет. Деревья растут вдоль улицы через равные промежутки в 1 метр. Одно из деревьев обозначено числом ноль, деревья по одну сторону занумерованы положительными числами 1,2 и т.д., а в другую — отрицательными −1,−2 и т.д. 

Ведро с краской для Васи установили возле дерева P, а для Маши — возле дерева Q. Ведра с краской очень тяжелые и Вася с Машей не могут их переставить, поэтому они окунают кисть в ведро и уже с этой кистью идут красить дерево. Краска на кисти из ведра Васи засыхает, когда он удаляется от ведра более чем на V метров, а из ведра Маши — на M метров. Определите, сколько деревьев может быть покрашено.

#### Формат ввода
В первой строке содержится два целых числа P и V — номер дерева, у которого стоит ведро Васи и на сколько деревьев он может от него удаляться. 
В второй строке содержится два целых числа Q и M — аналогичные данные для Маши.


#### Формат вывода
Выведите одно число — количество деревьев, которые могут быть покрашены.

</details>

______

<details>
<summary>
<b>Футбольный комментатор (<a href="FootballCommentator.swift">FootballCommentator.swift</a>)</b>
</summary>

#### Условие
Раунд плей-офф между двумя командами состоит из двух матчей. Каждая команда проводит по одному матчу «дома» и «в гостях». Выигрывает команда, забившая большее число мячей. Если же число забитых мячей совпадает, выигрывает команда, забившая больше мячей «в гостях». Если и это число мячей совпадает, матч переходит в дополнительный тайм или серию пенальти.

Вам дан счёт первого матча, а также счёт текущей игры (которая ещё не завершилась). Помогите комментатору сообщить, сколько голов необходимо забить первой команде, чтобы победить, не переводя игру в дополнительное время.

#### Формат ввода
В первой строке записан счёт первого мачта в формате G1:G2, где G1 — число мячей, забитых первой командой, а G2 — число мячей, забитых второй командой.
Во второй строке записан счёт второго (текущего) матча в аналогичном формате. Все числа в записи счёта не превышают 5.
В третьей строке записано число 1, если первую игру первая команда провела «дома», или 2, если «в гостях».

#### Формат вывода
Выведите единственное целое число — необходимое количество мячей.

</details>

_____

<details>
<summary>
<b>Форматирование файла (<a href="FileFormatting.swift">FileFormatting.swift</a>)</b>
</summary>

#### Условие
Петя - начинающий программист. Сегодня он написал код из n строк. 

К сожалению оказалось, что этот код трудно читать. Петя решил исправить это, добавив в различные места пробелы. А точнее, для i-й строки ему нужно добавить ровно ai пробелов.

Для добавления пробелов Петя выделяет строку и нажимает на одну из трёх клавиш: Space, Tab, и Backspace. При нажатии на Space в строку добавляется один пробел. При нажатии на Tab в строку добавляются четыре пробела. При нажатии на Backspace в строке удаляется один пробел. 

Ему хочется узнать, какое наименьшее количество клавиш придётся нажать, чтобы добавить необходимое количество пробелов в каждую строку. Помогите ему!

#### Формат ввода
Первая строка входных данных содержит одно целое положительное число n (1≤n≤10ˆ5) – количество строк в файле. 
Каждая из следующих n строк содержит одно целое неотрицательное число ai (0≤ai≤10ˆ9)– количество пробелов, которые нужно добавить в i-ю строку файла.

#### Формат вывода
Выведите одно число – минимальное количество нажатий, чтобы добавить в каждой строке необходимое количество пробелов.

</details>

_____

<details>
<summary>
<b>Слоны и ладьи (<a href="BishopsAndRooks.swift">BishopsAndRooks.swift</a>)</b>
</summary>

#### Условие
На шахматной доске стоят слоны и ладьи, необходимо посчитать, сколько клеток не бьется ни одной из фигур.

Шахматная доска имеет размеры 8 на 8. Ладья бьет все клетки горизонтали и вертикали, проходящих через клетку, где она стоит, до первой встретившейся фигуры. Слон бьет все клетки обеих диагоналей, проходящих через клетку, где он стоит, до первой встретившейся фигуры.

#### Формат ввода
В первых восьми строках ввода описывается шахматная доска. Первые восемь символов каждой из этих строк описывают состояние соответствующей горизонтали: символ B (заглавная латинская буква) означает, что в клетке стоит слон, символ R — ладья, символ * — что клетка пуста. После описания горизонтали в строке могут идти пробелы, однако длина каждой строки не превышает 250 символов. После описания доски в файле могут быть пустые строки.

#### Формат вывода
Выведите количество пустых клеток, которые не бьются ни одной из фигур.

</details>

_____

<details>
<summary>
<b>Прибыльный стартап (<a href="ProfitableStartup.swift">ProfitableStartup.swift</a>)</b>
</summary>

#### Условие
k друзей организовали стартап по производству укулеле для кошек. На сегодняшний день прибыль составила n рублей. Вы, как главный бухгалтер компании, хотите в каждый из ближайших d дней приписывать по одной цифре в конец числа, выражающего прибыль. При этом в каждый из дней прибыль должна делиться на k.

#### Формат ввода
В единственной строке входных данных через пробел записаны три числа: n, k, d — изначальная прибыль, количество учредителей компании и количество дней, которое вы собираетесь следить за прибылью (1≤n, k≤10ˆ9, 1≤d≤10ˆ5).  НЕ гарантируется, что n делится на k. 

#### Формат вывода
Выведите одно целое число x — прибыль компании через d дней. Первые цифры числа x должны совпадать с числом n. Все префиксы числа x, которые длиннее числа n на 1,2,…,d цифр, должны делиться на k. Если возможных ответов несколько, выведите любой из них. Если ответа не существует, выведите −1.

</details>

_____

<details>
<summary>
<b>Миша и математика (<a href="MishaAndMaths.swift">MishaAndMaths.swift</a>)</b>
</summary>

#### Условие
Миша сидел на занятиях математики в Высшей школе экономики и решал следующую задачу: дано n целых чисел и нужно расставить между ними знаки + и × так, чтобы результат полученного арифметического выражения был нечётным (например, между числами 5, 7, 2, можно расставить арифметические знаки следующим образом: 5×7+2=37). Так как примеры становились все больше и больше, а Миша срочно убегает в гости, от вас требуется написать программу решающую данную задачу.

#### Формат ввода
В первой строке содержится единственное число n (2≤n≤100_000). Во второй строке содержится n целых чисел ai, разделённых пробелами (−10ˆ9≤ai≤10ˆ9). Гарантируется, что решение существует.

#### Формат вывода
В одной строке выведите n−1 символ + или ×, в результате применения которых получается нечётный результат. (Для вывода используйте соответственно знаки «+» (ASCII код—43) и «x» (ASCII код—120), без кавычек).

</details>

_____

<details>
<summary>
<b>Забег по стадиону (<a href="RunningAroundTheStadium.swift">RunningAroundTheStadium.swift</a>)</b>
</summary>

#### Условие
Стадион представляет собой окружность длиной L метров, на которой отмечена точка старта. По стадиону бегают Кирилл и Антон. У каждого мальчика есть своя точка старта (она представляет собой расстояние в метрах от старта, отсчитанное по часовой стрелке) и своя скорость в метрах в секунду (положительная скорость означает, что мальчик бежит по часовой стрелке, отрицательная — что бежит против часовой, а нулевая — что он стоит на месте). 

Вам нужно сказать, через какое минимальное время мальчики окажутся на одинаковом расстоянии от точки старта. Обратите внимание, что в этот момент они могли находиться в разных точках. Расстоянием от точки A до точки B называется минимальное из расстояний, которое нужно пробежать из точки A по или против часовой стрелки, чтобы оказаться в B.

#### Формат ввода
В единственной строке вводится 5 целых чисел L, x1, v1, x2, v2 (1≤L≤10ˆ9, 0≤x1,x2<L, ∣v1∣,∣v2∣≤10ˆ9) — длины стадиона в метрах, начальная точка Кирилла, скорость Кирилла, начальная точка Антона, скорость Антона.

#### Формат вывода
В первой строке выведите слово «YES», если случится момент, когда мальчики будут на одинаковом расстоянии от старта, или «NO», если такого момента не произойдёт. 
Если ответ «YES», то во второй строке выведите одно вещественное число — через какое минимальное количество времени мальчики окажутся на одинаковом расстоянии от старта. 
Ваш ответ будет считаться правильным, если его абсолютная или относительная ошибка не превосходит 10ˆ-9.

</details>

_____

<details>
<summary>
<b>Расписание (<a href="Timetable.swift">Timetable.swift</a>)</b>
</summary>

#### Условие
Во всемирно известной фирме «Goondex», в которую устроился Илья, принято очень много работать, в частности, для сотрудников установлена шестидневная рабочая неделя. Но, в качестве бонуса, «Goondex» каждый год предлагает своим сотрудникам выбрать любой день недели в качестве выходного. В свою очередь, оставшиеся шесть дней недели будут рабочими. 

Илья сообразил, что с учётом государственных праздников (которые всегда являются выходными) с помощью правильного выбора выходного дня недели можно варьировать количество рабочих дней в году. Теперь он хочет знать, какой день недели ему следует выбрать в качестве выходного, чтобы отдыхать как можно больше дней в году, или, наоборот, демонстрировать чудеса трудолюбия, работая по максимуму.

#### Формат ввода
В первой строке входных данных находится одно целое число N (0 ≤ N ≤ 366) — количество государственных праздников. 
Во второй строке содержится одно целое число year (1800 ≤ year ≤ 2100) — год, в который необходимо помочь Илье. 
В каждой из последующих N строк расположено по паре чисел day month (day — целое число, month — слово, между day и month ровно один пробел), обозначающих, что день day месяца month является государственным праздником. 
В последней строке расположено слово day_of_week — день недели первого января в год year.
Гарантируется, что все даты указаны корректно (в том числе указанный день недели первого января действительно является днём недели первого января соответствующего года year) и все дни государственных праздников различны.

#### Формат вывода
Выведите через пробел два дня недели — лучший и худший варианты дней недели для выходного (то есть дни недели, для которых достигается соответственно максимальное и минимальное количество выходных дней в году). Если возможных вариантов ответа несколько, выведите любой из них.

</details>

_____

<details>
<summary>
<b>Минимальный прямоугольник (<a href="MinimumRectangle.swift">MinimumRectangle.swift</a>)</b>
</summary>

#### Условие
На клетчатой плоскости закрашено K клеток. Требуется найти минимальный по площади прямоугольник, со сторонами, параллельными линиям сетки, покрывающий все закрашенные клетки.

#### Формат ввода
Во входном файле, на первой строке, находится число K (1 ≤ K ≤ 100). На следующих K строках находятся пары чисел Xi и Yi — координаты закрашенных клеток (|Xi|, |Yi| ≤ 10ˆ9).

#### Формат вывода
Выведите в выходной файл координаты левого нижнего и правого верхнего углов прямоугольника.

</details>

_____

<details>
<summary>
<b>Продавец рыбы (<a href="FishSeller.swift">FishSeller.swift</a>)</b>
</summary>

#### Условие
Вася решил заняться торговлей рыбой. С помощью методов машинного обучения он предсказал цены на рыбу на N дней вперёд. Он решил, что в один день он купит рыбу, а в один из следующих дней — продаст (то есть совершит или ровно одну покупку и продажу или вообще не совершит покупок и продаж, если это не принесёт ему прибыли). К сожалению, рыба — товар скоропортящийся и разница между номером дня продажи и номером дня покупки не должна превышать K. 
Определите, какую максимальную прибыль получит Вася.

#### Формат ввода
В первой строке входных данных задаются числа N и K (1 ≤ N ≤ 10000, 1 ≤ K ≤ 100). 
Во второй строке задаются цены на рыбу в каждый из N дней. Цена — целое число, которое может находится в пределах от 1 до 10ˆ9.

#### Формат вывода
Выведите одно число — максимальную прибыль, которую получит Вася.

</details>

_____

<details>
<summary>
<b>Петя, Маша и верёвочки (<a href="PetyaMashaAndTheRopes.swift">PetyaMashaAndTheRopes.swift</a>)</b>
</summary>

#### Условие
На столе лежали две одинаковые верёвочки целой положительной длины. 
Петя разрезал одну из верёвочек на N частей, каждая из которых имеет целую положительную длину, так что на столе стало N+1 верёвочек. Затем в комнату зашла Маша и взяла одну из лежащих на столе верёвочек. По длинам оставшихся на столе N верёвочек определите, какую наименьшую длину может иметь верёвочка, взятая Машей.

#### Формат ввода
Первая строка входных данных содержит одно целое число N — количество верёвочек, оставшихся на столе (2 ≤ N ≤ 1000). Во второй строке содержится N целых чисел li — длины верёвочек (1 ≤ li ≤ 1000).

#### Формат вывода
Выведите одно целое число — наименьшую длину, которую может иметь верёвочка, взятая Машей.

</details>

_____

<details>
<summary>
<b>Шахматная доска (<a href="ChessBoard.swift">ChessBoard.swift</a>)</b>
</summary>

#### Условие
Из шахматной доски по границам клеток выпилили связную (не распадающуюся на части) фигуру без дыр. Требуется определить ее периметр.

#### Формат ввода
Сначала вводится число N (1 ≤ N ≤ 64) – количество выпиленных клеток. В следующих N строках вводятся координаты выпиленных клеток, разделенные пробелом (номер строки и столбца – числа от 1 до 8). Каждая выпиленная клетка указывается один раз.

#### Формат вывода
Выведите одно число – периметр выпиленной фигуры (сторона клетки равна единице).

</details>

_____

<details>
<summary>
<b>Амбициозная улитка (<a href="AmbitiousSnail.swift">AmbitiousSnail.swift</a>)</b>
</summary>

#### Условие
Домашний питомец мальчика Васи — улитка Петя. Петя обитает на бесконечном в обе стороны вертикальном столбе, который для удобства можно представить как числовую прямую. Изначально Петя находится в точке 0. 

Вася кормит Петю ягодами. У него есть n ягод, каждая в единственном экземпляре. Вася знает, что если утром он даст Пете ягоду с номером i, то поев и набравшись сил, за остаток дня Петя поднимется на ai единиц вверх по столбу, но при этом за ночь, потяжелев, съедет на bi единиц вниз. Параметры различных ягод могут совпадать. 

Пете стало интересно, а как оно там, наверху, и Вася взялся ему в этом помочь. Ближайшие n дней он будет кормить Петю ягодами из своего запаса таким образом, чтобы максимальная высота, на которой побывал Петя за эти n дней была максимальной. К сожалению, Вася не умеет программировать, поэтому он попросил вас о помощи. Найдите, максимальную высоту, на которой Петя сможет побывать за эти n дней и в каком порядке Вася должен давать Пете ягоды, чтобы Петя смог её достичь!

#### Формат ввода
В первой строке входных данных дано число n (1≤n≤5⋅10ˆ5) — количество ягод у Васи. В последующих n строках описываются параметры каждой ягоды. В i+1 строке дано два числа ai и bi (0≤ai,bi≤10ˆ9) — то, насколько поднимется улитка за день после того, как съест i ягоду и насколько опуститься за ночь.

#### Формат вывода
В первой строке выходных данных выведите единственное число — максимальную высоту, которую сможет достичь Петя, если Вася будет его кормить оптимальным образом. В следующей строке выведите n различных целых чисел от 1 до n — порядок, в котором Вася должен кормить Петю (i число в строке соответствует номеру ягоды, которую Вася должен дать Пете в i день чтобы Петя смог достичь максимальной высоты).

</details>

_____

<details>
<summary>
<b>Колесо фортуны (<a href="WheelOfFortune.swift">WheelOfFortune.swift</a>)</b>
</summary>

#### Условие
Развлекательный телеканал транслирует шоу «Колесо Фортуны». В процессе игры участники шоу крутят большое колесо, разделенное на сектора. В каждом секторе этого колеса записано число. После того как колесо останавливается, специальная стрелка указывает на один из секторов. Число в этом секторе определяет выигрыш игрока.

![Снимок экрана 2024-04-08 в 13 21 12](https://github.com/Konst-Is/YandexAlgorithmsTraining-5.0_2024/assets/125888284/6672d922-0990-419d-a7e6-ab43360738a3)

Юный участник шоу заметил, что колесо в процессе вращения замедляется из-за того, что стрелка задевает за выступы на колесе, находящиеся между секторами. Если колесо вращается с угловой скоростью v градусов в секунду, и стрелка, переходя из сектора X к следующему сектору, задевает за очередной выступ, то текущая угловая скорость движения колеса уменьшается на k градусов в секунду. При этом если v ≤ k, то колесо не может преодолеть препятствие и останавливается. Стрелка в этом случае будет указывать на сектор X.

Юный участник шоу собирается вращать колесо. Зная порядок секторов на колесе, он хочет заставить колесо вращаться с такой начальной скоростью, чтобы после остановки колеса стрелка указала на как можно большее число. Колесо можно вращать в любом направлении и придавать ему начальную угловую скорость от a до b градусов в секунду.

Требуется написать программу, которая по заданному расположению чисел в секторах, минимальной и максимальной начальной угловой скорости вращения колеса и величине замедления колеса при переходе через границу секторов вычисляет максимальный выигрыш.

#### Формат ввода
Первая строка входного файла содержит целое число n — количество секторов колеса (3 ≤ n ≤ 100).
Вторая строка входного файла содержит n положительных целых чисел, каждое из которых не превышает 1000 — числа, записанные в секторах колеса. Числа приведены в порядке следования секторов по часовой стрелке. Изначально стрелка указывает на первое число.
Третья строка содержит три целых числа: a, b и k (1 ≤ a ≤ b ≤ 10ˆ9, 1 ≤ k ≤ 10ˆ9).

#### Формат вывода
В выходном файле должно содержаться одно целое число — максимальный выигрыш.

</details>

_____

<details>
<summary>
<b>Ни больше, ни меньше (<a href="NoMoreNoLess.swift">NoMoreNoLess.swift</a>)</b>
</summary>

#### Условие
Дан массив целых положительных чисел a длины n. Разбейте его на минимально возможное количество отрезков, чтобы каждое число было не меньше длины отрезка которому оно принадлежит. Длиной отрезка считается количество чисел в нем.

Разбиение массива на отрезки считается корректным, если каждый элемент принадлежит ровно одному отрезку.

#### Формат ввода
Первая строка содержит одно целое число t (1 ≤ t ≤ 1 000) — количество наборов тестовых данных. Затем следуют t наборов тестовых данных.
Первая строка набора тестовых данных содержит одно целое число n (1 ≤ n ≤ 10ˆ5) — длину массива.
Следующая строка содержит n целых чисел a1, a2, …, an (1 ≤ ai ≤ n) — массив a.
Гарантируется, что сумма n по всем наборам тестовых данных не превосходит 2 ⋅ 10ˆ5.

#### Формат вывода
Для каждого набора тестовых данных в первой строке выведите число k — количество отрезков в вашем разбиении.
Затем в следующей строке выведите k чисел len1, len2, …, lenk

</details>

_____

<details>
<summary>
<b>Наилучший запрет (<a href="BestProhibition.swift">BestProhibition.swift</a>)</b>
</summary>

#### Условие
Константин и Михаил играют в настольную игру «Ярость Эльфов». В игре есть n рас и m классов персонажей. Каждый персонаж характеризуется своими расой и классом. Для каждой расы и каждого класса существует ровно один персонаж такой расы и такого класса. Сила персонажа i-й расы и j-го класса равна ai j, и обоим игрокам это прекрасно известно.

Сейчас Константин будет выбирать себе персонажа. Перед этим Михаил может запретить одну расу и один класс, чтобы Константин не мог выбирать персонажей, у которых такая раса или такой класс. Конечно же, Михаил старается, чтобы Константину достался как можно более слабый персонаж, а Константин, напротив, выбирает персонажа посильнее. Какие расу и класс следует запретить Михаилу?

#### Формат ввода
Первая строка содержит два целых числа n и m (2 ≤ n,m ≤ 1000) через пробел — количество рас и классов в игре «Ярость Эльфов», соответственно.
В следующих n строках содержится по m целых чисел через пробел. j-е число i-й из этих строк — это aij (1 ≤ aij ≤ 10ˆ9).

#### Формат вывода
В единственной строке выведите два целых числа через пробел — номер расы и номер класса, которые следует запретить Михаилу. Расы и классы нумеруются с единицы. Если есть несколько возможных ответов, выведите любой из них.

</details>

_____

<details>
<summary>
<b>Пираты Баренцева моря (<a href="PiratesOfTheBarentsSea.swift">PiratesOfTheBarentsSea.swift</a>)</b>
</summary>

#### Условие
Вася играет в настольную игру «Пираты Баренцева моря», которая посвящена морским битвам. Игровое поле представляет собой квадрат из N×N клеток, на котором расположено N кораблей (каждый корабль занимает одну клетку). 

Вася решил воспользоваться линейной тактикой, для этого ему необходимо выстроить все Nкораблей в одном столбце. За один ход можно передвинуть один корабль в одну из четырёх соседних по стороне клеток. Номер столбца, в котором будут выстроены корабли, не важен. Определите минимальное количество ходов, необходимых для построения кораблей в одном столбце. В начале и процессе игры никакие два корабля не могут находиться в одной клетке.

#### Формат ввода
В первой строке входных данных задаётся число N (1≤N≤100). 
В каждой из следующих N строк задаются координаты корабля: сначала номер строки, затем номер столбца (нумерация начинается с единицы).

#### Формат вывода
Выведите одно число — минимальное количество ходов, необходимое для построения.

</details>

_____

<details>
<summary>
<b>Плейлисты (<a href="Playlists.swift">Playlists.swift</a>)</b>
</summary>

#### Условие
Костя успешно прошел собеседование и попал на стажировку в отдел разработки сервиса «Музыка». 

Конкретно ему поручили такое задание — научиться подбирать плейлист для группы друзей, родственников или коллег. При этом нужно подобрать такой плейлист, в который входят исключительно нравящиеся всем членам группы песни. 

Костя очень хотел выполнить это задание быстро и качественно, но у него не получается. Помогите ему написать программу, которая составляет плейлист для группы людей.

#### Формат ввода
В первой строке расположено одно натуральное число n(1≤n≤2⋅10ˆ5), где n – количество человек в группе. 
В следующих 2⋅n строках идет описание любимых плейлистов членов группы. По 2 строки на каждого участника. 
В первой из этих 2-х строк расположено число ki — количество любимых треков i-го члена группы. В следующей строке расположено ki строк через пробел — названия любимых треков i-го участника группы. 
Каждый трек в плейлисте задан в виде строки, все строки уникальны, сумма длин строк не превосходит 2⋅10ˆ6. Строки содержат большие и маленькие латинские буквы и цифры.

#### Формат вывода
Выведите количество, а затем сам список песен через пробел — список треков, которые нравятся каждому участнику группы. Ответ необходимо отсортировать в лексикографическом порядке!

</details>

_____

<details>
<summary>
<b>Анаграмма? (<a href="Anagram.swift">Anagram.swift</a>)</b>
</summary>

#### Условие
Задано две строки, нужно проверить, является ли одна анаграммой другой. Анаграммой называется строка, полученная из другой перестановкой букв.

#### Формат ввода
Строки состоят из строчных латинских букв, их длина не превосходит 10ˆ5. Каждая записана в отдельной строке.

#### Формат вывода
Выведите "YES" если одна из строк является анаграммой другой и "NO" в противном случае.

</details>

_____

<details>
<summary>
<b>Удаление чисел (<a href="DeletionOfNumbers.swift">DeletionOfNumbers.swift</a>)</b>
</summary>

#### Условие
Дан массив a из n чисел. Найдите минимальное количество чисел, после удаления которых попарная разность оставшихся чисел по модулю не будет превышать 1, то есть после удаления ни одно число не должно отличаться от какого-либо другого более чем на 1.

#### Формат ввода
Первая строка содержит одно целое число n (1≤n≤2⋅10ˆ5) — количество элементов массива a.
Вторая строка содержит n целых чисел a1,a2,…,an (0≤ai≤10ˆ5) — элементы массива a.

#### Формат вывода
Выведите одно число — ответ на задачу.

</details>

_____

<details>
<summary>
<b>Повторяющееся число (<a href="RepeatedNumber.swift">RepeatedNumber.swift</a>)</b>
</summary>

#### Условие
Вам дана последовательность измерений некоторой величины. Требуется определить, повторялась ли какое-либо число, причём расстояние между повторами не превосходило k.

#### Формат ввода
В первой строке задаются два числа n и k (1 ≤ n, k ≤ 10ˆ5).
Во второй строке задаются n чисел, по модулю не превосходящих 10ˆ9.

#### Формат вывода
Выведите YES, если найдется повторяющееся число и расстояние между повторами не превосходит k и NO в противном случае.

</details>

_____

<details>
<summary>
<b>Два из трёх (<a href="TwoOutOfThree.swift">TwoOutOfThree.swift</a>)</b>
</summary>

#### Условие
Вам даны три списка чисел. Найдите все числа, которые встречаются хотя бы в двух из трёх списков.

#### Формат ввода
Во входных данных описывается три списка чисел. Первая строка каждого описания списка состоит из длины списка n (1 ≤ n ≤ 1000). Вторая строка описания содержит список натуральных чисел, записанных через пробел. Числа не превосходят 10ˆ9.

#### Формат вывода
Выведите все числа, которые содержатся хотя бы в двух списках из трёх, в порядке возрастания. Обратите внимание, что каждое число необходимо выводить только один раз.

</details>

_____

<details>
<summary>
<b>Замена слов (<a href="SubstitutionOfWords.swift">SubstitutionOfWords.swift</a>)</b>
</summary>

#### Условие
С целью экономии чернил в картридже принтера было принято решение укоротить некоторые слова в тексте. Для этого был составлен словарь слов, до которых можно сокращать более длинные слова. Слово из текста можно сократить, если в словаре найдется слово, являющееся началом слова из текста. Например, если в списке есть слово "лом", то слова из текста "ломбард", "ломоносов" и другие слова, начинающиеся на "лом", можно сократить до "лом".

Если слово из текста можно сократить до нескольких слов из словаря, то следует сокращать его до самого короткого слова.

#### Формат ввода
В первой строке через пробел вводятся слова из словаря, слова состоят из маленьких латинских букв. Гарантируется, что словарь не пуст и количество слов в словаре не превышает 1000, а длина слов — 100 символов.
Во второй строке через пробел вводятся слова текста (они также состоят только из маленьких латинских букв). Количество слов в тексте не превосходит 10ˆ5, а суммарное количество букв в них — 10ˆ6.

#### Формат вывода
Выведите текст, в котором осуществлены замены.

</details>

_____

<details>
<summary>
<b>Быстрый поиск в массиве (<a href="QuickArraySearch.swift">QuickArraySearch.swift</a>)</b>
</summary>

#### Условие
Дан массив из N целых чисел. Все числа от −10ˆ9 до 10ˆ9.
Нужно максимально быстро отвечать на запросы вида “Cколько чисел имеют значения от L до R?”. Алгоритм должен быть быстрее чем O(N).

#### Формат ввода
Число N (1≤N≤10ˆ5). Далее N целых чисел. 
Затем число запросов K (1≤K≤10ˆ5). 
Далее K пар чисел L,R (−10ˆ9≤L≤R≤10ˆ9) — собственно запросы.

#### Формат вывода
Выведите K чисел — ответы на запросы.

</details>

_____

<details>
<summary>
<b>Одномерный морской бой (<a href="OneDimensionalSeaBattle.swift">OneDimensionalSeaBattle.swift</a>)</b>
</summary>

#### Условие
Поле в игре в одномерный морской бой имеет размеры 1×n. Ваша задача — найти такое максимальное k, что на поле можно расставить один корабль размера 1×k, два корабля размера 1×(k−1), …, k кораблей размера 1×1, причем корабли, как и в обычном морском бое, не должны касаться друг друга и пересекаться.

#### Формат ввода
В единственной строке входных данных дано число n — количество клеток поля (0≤n≤10ˆ18).

#### Формат вывода
Выведите единственное число — такое максимальное k, что можно расставить корабли, как описано в условии.

</details>

_____

<details>
<summary>
<b>Нумерация дробей (<a href="NumberingOfFractions.swift">NumberingOfFractions.swift</a>)</b>
</summary>

#### Условие
Георг Кантор доказал, что множество всех рациональных чисел счетно (т.е. все рациональные числа можно пронумеровать).

Чтобы упорядочить дроби необходимо их положить в таблицу, как показано на рисунке. В строку с номером i этой матрицы по порядку записаны дроби с числителем i, а в столбец с номером j дроби с знаменателем j.

![Снимок экрана 2024-04-08 в 13 10 34](https://github.com/Konst-Is/YandexAlgorithmsTraining-5.0_2024/assets/125888284/7bb34142-6aaa-4808-9fd7-0632c747ca4a)

Дальше необходимо выписать все дроби в том порядке, как показано на рисунке стрелками. 

Вам требуется по числу n найти числитель и знаменатель n-ой дроби.

#### Формат ввода
Во входном файле дано число n (1 ≤ n ≤ 10ˆ18) — порядковый номер дроби в последовательности.

#### Формат вывода
В выходной файл требуется вывести через символ / два числа: числитель и знаменатель соответствующей дроби.

</details>

_____

<details>
<summary>
<b>Саруман (<a href="Saruman.swift">Saruman.swift</a>)</b>
</summary>

#### Условие
Как известно, Саруман Радужный очень любит порядок. Поэтому все полки его войска стоят друг за другом, причем каждый следующий полк содержит количество орков не меньше, чем предыдущий.

Перед тем как напасть на Хельмову Падь, Саруман решил провести несколько вылазок для разведки. Чтобы его отряды никто не заметил, он решил каждый раз отправлять несколько подряд идущих полков так, чтобы суммарное количество орков в них было равно определенному числу. Так как это всего лишь разведка, каждый полк после вылазки возвращается на свое место. Задачу выбрать нужные полки он поручил Гриме Змеиному Языку. А Грима не поскупится на вознаграждение, если вы ему поможете.

#### Формат ввода
В первой строке входного файла находится два целых числа: n (1 ≤ n ≤ 2⋅10ˆ5) — количество полков и m (1 ≤ m ≤ 2⋅10ˆ5) – количество предстоящих вылазок.
В следующей строке записано n чисел ai, где ai — число орков в i-ом полке (1 ≤ ai ≤ 10ˆ9, ai ≤ ai+1).
Далее в m строках записаны запросы вида: количество полков l (1 ≤ l ≤ n), которые должны будут отправиться в эту вылазку, и суммарное количество орков в этих полках s (1 ≤ s ≤ 2⋅10ˆ16).

#### Формат вывода
Для каждого запроса выведите номер полка, с которого начнутся те l, которые необходимо отправить на вылазку. Если таких полков несколько, выведите любой. Если же так выбрать полки нельзя, выведите -1.

</details>

_____
