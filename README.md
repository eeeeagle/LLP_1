# Низкоуровневое программирование - Лабораторная работа №1 - Вариант №1
**Общее задание:**

Реализовать заданный в варианте алгоритм на языке ассемблера NASM (<https://www.nasm.us/pub/nasm/releasebuilds/2.15.05/win64/>). Программу собирать для архитектуры x86-64 (см. настройки SASM).

Результат работы программы вывести на экран соответствующим макросом из стандартного комплекта SASM (<http://dman95.github.io/SASM/> , список макросов – внизу страницы). 

Массивы реализовывать как статические переменные в секции .data (или .bss). 

При работе со строками максимальную длину строки установить не менее 255.  

При работе со строками считать, что допустимый алфавит состоит из цифр, английских букв обоих регистров и символов []()+-\*/=&?!/\”’:;@., (при желании можно добавить кириллицу)

При работе с числовыми массивами максимальную длину массива установить не менее 100

Если в задании предполагается ввод массива пользователем, то пользователь сначала вводит размер массива, а затем сам массив

Проверку ввода пользователя можно не делать

**Задания на лабораторную:**

**Легкий уровень:**

1. Для введенной пользователем строки вывести инвертированную строку и строку, состоящую только из четных элементов исходной строки.
1. Для введенной пользователем строки и числа N вывести строку, циклически сдвинутую на N вправо
1. Для введенной пользователем строки проверить, является ли она палиндромом
1. Для введенной пользователем строки проверить, сколько раз в ней встречается буква, с которой начинается Ваша фамилия (регистр букв игнорировать)
1. Для введенного пользователем числа вывести представление числа по основанию 8.
1. Реализовать аналог функции strcmp. Продемонстрировать результат работы алгоритма на 2-х введенных строках.
1. Для введенного пользователем массива (пользователь вводит длину массива, затем сам массив) рассчитать и вывести минимум и максимум
1. Проверить введенное пользователем число на простоту, вывести ответ.
1. Для введенных пользователем векторов вывести их скалярное произведение
1. Для введенных пользователем векторов вывести квадрат расстояния между ними

**Средний уровень**

1. Для введенного пользователем массива чисел подсчитать количество битов со значением 1
1. Для введенного пользователем массива рассчитать среднее и дисперсию
1. Зашифровать введенную пользователем строку шифром Цезаря 
1. Для введенных пользователем строк проверить, содержит ли первая строка вторую
1. Для пользовательской строки рассчитать гистограмму символов
1. Для пользовательского массива рассчитать и вывести массив с результатом расчета скользящего среднего в окне размером 5
1. Посчитать количество уникальных элементов в массиве чисел типа short.

**Сложный уровень:**

1. Отсортировать введенный пользователем массив пузырьком
1. Отсортировать введенный пользователем массив вставками
1. Отсортировать введенный пользователем массив выбором
1. Реализовать линейный конгруэнтный генератор псевдослучайных чисел. Параметры генератора считать постоянными. Используя введенное пользователем число в качестве начальной точки, вывести 100 сгенерированных чисел.
1. Реализовать генератор псевдослучайных чисел xorshift128. Используя введенное пользователем число в качестве начальной точки, вывести 100 сгенерированных чисел.
1. Реализовать генератор псевдослучайных чисел BlumBlumShub. Параметры p и q выбрать самостоятельно. В качестве результата использовать 1 или 2 младших байта полученного числа. Используя введенное пользователем число в качестве начальной точки, вывести 100 сгенерированных чисел.
1. Реализовать вычисление контрольной суммы CRC32 для введенной строки. Вывести полученное значение.
1. Отсортировать введенный пользователем массив шейкерной сортировкой

<b>Работа выполенна на сложный уровень, вариант №1</b>
