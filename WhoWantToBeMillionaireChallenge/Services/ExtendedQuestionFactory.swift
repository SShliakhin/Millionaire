//
//  ExtendedQuestionFactory.swift
//  WhoWantToBeMillionaireChallenge
//
//  Created by Марс Мазитов on 18.11.2022.
//

import Foundation

final class ExtendedQuestionFactory: QuestionFactoryProtocol {
    private var questions: [Question] = []
    
    weak var delegate: QuestionFactoryDelegate?
    

    
    func requestNextQuestion(level: Int) {
        questions = loadMockData()
        let question = questions.filter { $0.level == level }.randomElement()
        delegate?.didRecieveNextQuestion(self, question: question)
    }
}


extension ExtendedQuestionFactory {
    private func loadMockData() -> [Question] {
        [
            Question(
                q: "Способностью к быстрой смене чего славятся хамелеоны?",
                a: [
                    (answer: "Цвета", isCorrect: true),
                    (answer: "Размера", isCorrect: false),
                    (answer: "Пола", isCorrect: false),
                    (answer: "Убеждений", isCorrect: false)
                ],
                l: 1),
            Question(
                q: "Как называют микроавтобусы, совершающие поездки по определённым маршрутам?",
                a: [
                    (answer: "Рейсовые", isCorrect: false),
                    (answer: "Путёвые", isCorrect: false),
                    (answer: "Маршрутные", isCorrect: true),
                    (answer: "Курсовые", isCorrect: false)
                ],
                l: 1),
            Question(
                q: "В какой из этих игр используется мяч наибольшей величины?",
                a: [
                    (answer: "Баскетбол", isCorrect: true),
                    (answer: "Волейбол", isCorrect: false),
                    (answer: "Футбол", isCorrect: false),
                    (answer: "Водное поло", isCorrect: false)
                ],
                l: 1),
            Question(
                q: "Что сочиняют спецагентам, отправляя их на задание?",
                a: [
                    (answer: "Сказку", isCorrect: false),
                    (answer: "Былину", isCorrect: false),
                    (answer: "Легенду", isCorrect: true),
                    (answer: "Притчу", isCorrect: false)
                ],
                l: 2),
            Question(
                q: "Как водители-профессионалы называют автомобильный руль?",
                a: [
                    (answer: "Бублик", isCorrect: false),
                    (answer: "Сушка", isCorrect: false),
                    (answer: "Рогалик", isCorrect: false),
                    (answer: "Баранка", isCorrect: true)
                ],
                l: 2),
            Question(
                q: "Какой специалист занимается изучением неопознанных летающих объектов?",
                a: [
                    (answer: "Уфолог", isCorrect: true),
                    (answer: "Кинолог", isCorrect: false),
                    (answer: "Проктолог", isCorrect: false),
                    (answer: "Психиатр", isCorrect: false)
                ],
                l: 2),
            Question(
                q: "Как называют человека, воздерживающегося от употребления мяса?",
                a: [
                    (answer: "Абстинент", isCorrect: false),
                    (answer: "Каннибал", isCorrect: false),
                    (answer: "Вегетарианец", isCorrect: true),
                    (answer: "Пуританин", isCorrect: false)
                ],
                l: 3),
            Question(
                q: "На чем летает ведьма?",
                a: [
                    (answer: "На венике", isCorrect: false),
                    (answer: "На швабре", isCorrect: false),
                    (answer: "На метле", isCorrect: true),
                    (answer: "На пылесосе «Ракета»", isCorrect: false)
                ],
                l: 3),
            Question(
                q: "Какое из этих названий не является синонимом трех остальных?",
                a: [
                    (answer: "Барс", isCorrect: false),
                    (answer: "Ягуар", isCorrect: true),
                    (answer: "Пантера", isCorrect: false),
                    (answer: "Леопард", isCorrect: false)
                ],
                l: 3),
            Question(
                q: "Как звали Колумба?",
                a: [
                    (answer: "Христофор", isCorrect: true),
                    (answer: "Америгго", isCorrect: false),
                    (answer: "Хуан", isCorrect: false),
                    (answer: "Дуремар", isCorrect: false)
                ],
                l: 4),
            Question(
                q: "С чего начинается театр?",
                a: [
                    (answer: "С буфета", isCorrect: false),
                    (answer: "С афиши", isCorrect: false),
                    (answer: "С фойе", isCorrect: false),
                    (answer: "С вешалки ", isCorrect: true)
                ],
                l: 4),
           Question(
                q: "Какая олимпийская дистанция плавания самая длинная?",
                a: [
                    (answer: "800 м", isCorrect: false),
                    (answer: "1500 м", isCorrect: true),
                    (answer: "1000 м", isCorrect: false),
                    (answer: "3000 м", isCorrect: false)
                ],
                l: 4),
            Question(
                q: "Назовите столицу Суринама?",
                a: [
                    (answer: "Ханой", isCorrect: false),
                    (answer: "Парамарибо", isCorrect: true),
                    (answer: "Мадрас", isCorrect: false),
                    (answer: "Улан-Батор", isCorrect: false)
                ],
                l: 5),
            Question(
                q: "Как называется торжественная процедура вступления в должность главы государства",
                a: [
                    (answer: "Интервенция", isCorrect: false),
                    (answer: "Инаугурация", isCorrect: true),
                    (answer: "Интеграция", isCorrect: false),
                    (answer: "Импичмент", isCorrect: false)
                ],
                l: 5),
           Question(
                q: "Название какого музыкального инструмента совпадает с названием геометрической фигуры?",
                a: [
                    (answer: "Круг", isCorrect: false),
                    (answer: "Треугольник", isCorrect: true),
                    (answer: "Четырехугольник", isCorrect: false),
                    (answer: "Квадрат", isCorrect: false)
                ],
                l: 5),
            Question(
                q: "Что такое десница?",
                a: [
                    (answer: "Рука", isCorrect: true),
                    (answer: "Шея", isCorrect: false),
                    (answer: "Глаз", isCorrect: false),
                    (answer: "Бровь", isCorrect: false)
                ],
                l: 6),
            Question(
                q: "Какое зодиакальное созвездие на небе самое большое?",
                a: [
                    (answer: "Стрелец", isCorrect: false),
                    (answer: "Дева", isCorrect: true),
                    (answer: "Водолей", isCorrect: false),
                    (answer: "Козерог", isCorrect: false)
                ],
                l: 6),
           Question(
                q: "Какая из этих стран имеет наибольшую площадь?",
                a: [
                    (answer: "Австралия", isCorrect: false),
                    (answer: "Китай", isCorrect: false),
                    (answer: "США", isCorrect: false),
                    (answer: "Канада", isCorrect: true)
                ],
                l: 6),
            Question(
                q: "Какое из этих красных грузинских вин - полусладкое?",
                a: [
                    (answer: "Телиани", isCorrect: false),
                    (answer: "Саперави", isCorrect: false),
                    (answer: "Ахашени", isCorrect: true),
                    (answer: "Мукузани", isCorrect: false)
                ],
                l: 7),
            Question(
                q: "В какое море впадает река Урал?",
                a: [
                    (answer: "Азовское", isCorrect: false),
                    (answer: "Чёрное", isCorrect: false),
                    (answer: "Средиземное", isCorrect: false),
                    (answer: "Каспийское", isCorrect: true)
                ],
                l: 7),
           Question(
                q: "На что кладут руку члены английского общества лысых во время присяги?",
                a: [
                    (answer: "Баскетбольный мяч", isCorrect: false),
                    (answer: "Апельсин", isCorrect: false),
                    (answer: "Бильярдный шар", isCorrect: true),
                    (answer: "Кокосовый орех", isCorrect: false)
                ],
                l: 7),
            Question(
                q: "В каком штате США расположен город Солт-Лейк-Сити - столица Зимней Олимпиады 2002 года?",
                a: [
                    (answer: "Нью-Хемпшир", isCorrect: false),
                    (answer: "Колорадо", isCorrect: false),
                    (answer: "Висконсин", isCorrect: false),
                    (answer: "Юта", isCorrect: true)
                ],
                l: 8),
            Question(
                q: "Кто является лидером известной рок-группы 'АЛИСА'?",
                a: [
                    (answer: "Джагер", isCorrect: false),
                    (answer: "Рурк", isCorrect: false),
                    (answer: "Кинчев", isCorrect: true),
                    (answer: "Гребенщиков", isCorrect: false)
                ],
                l: 8),
           Question(
                q: "Как Пётр Ильич Чайковский назвал свою серенаду для скрипки с оркестром си-бемоль минор?",
                a: [
                    (answer: "Флегматическая", isCorrect: false),
                    (answer: "Меланхолическая", isCorrect: true),
                    (answer: "Холерическая", isCorrect: false),
                    (answer: "Сангвиническая", isCorrect: false)
                ],
                l: 8),
            Question(
                q: "Какая олимпийская дистанция плавания самая длинная?",
                a: [
                    (answer: "800 м", isCorrect: false),
                    (answer: "1000 м", isCorrect: false),
                    (answer: "1500 м", isCorrect: true),
                    (answer: "3000 м", isCorrect: false)
                ],
                l: 9),
            Question(
                q: "Какого ордена не было у первого советского космонавта Юрия Гагарина?",
                a: [
                    (answer: "«Ожерелье Нила»", isCorrect: false),
                    (answer: "«Крест Грюнвальда»", isCorrect: false),
                    (answer: "«Плайя Хирон»", isCorrect: false),
                    (answer: "«Орден двойного дракона»", isCorrect: true)
                ],
                l: 9),
           Question(
                q: "Сколько километров, согласно газетам, пробегал бразильский футболист Рональдо?",
                a: [
                    (answer: "2000 км", isCorrect: false),
                    (answer: "12000 км", isCorrect: true),
                    (answer: "11000 км", isCorrect: false),
                    (answer: "10000 км", isCorrect: false)
                ],
                l: 9),
            Question(
                q: "Как называется певучее исполнение на музыкальных инструментах (подражание пению)?",
                a: [
                    (answer: "Кантилена", isCorrect: false),
                    (answer: "Канцона", isCorrect: false),
                    (answer: "Кантабиле", isCorrect: true),
                    (answer: "Тремоло", isCorrect: false)
                ],
                l: 10),
            Question(
                q: "Как называется революционный роман Максима Горького?",
                a: [
                    (answer: "Мать", isCorrect: true),
                    (answer: "Чапаев", isCorrect: false),
                    (answer: "Молодая гвардия", isCorrect: false),
                    (answer: "Как закалялась сталь", isCorrect: false)
                ],
                l: 10),
           Question(
                q: "Какое животное имеет второе название — кугуар?",
                a: [
                    (answer: "Пума", isCorrect: true),
                    (answer: "Оцелот", isCorrect: false),
                    (answer: "Леопард", isCorrect: false),
                    (answer: "Пантера", isCorrect: false)
                ],
                l: 10),
            Question(
                q: "Гражданином какой страны был открыватель пенициллина Александр Флеминг?",
                a: [
                    (answer: "США", isCorrect: false),
                    (answer: "Швейцария", isCorrect: false),
                    (answer: "Великобритания", isCorrect: true),
                    (answer: "Канада", isCorrect: false)
                ],
                l: 11),
            Question(
                q: "В каком языке больше всего падежей?",
                a: [
                    (answer: "Удмуртский", isCorrect: false),
                    (answer: "Финский", isCorrect: false),
                    (answer: "Табасаранский", isCorrect: true),
                    (answer: "Вепсский", isCorrect: false)
                ],
                l: 11),
           Question(
                q: "В каком штате США расположен город Солт-Лейк-Сити - столица Зимней Олимпиады 2002 года?",
                a: [
                    (answer: "Юта", isCorrect: true),
                    (answer: "Висконсин", isCorrect: false),
                    (answer: "Колорадо", isCorrect: false),
                    (answer: "Нью-Хемпшир", isCorrect: false)
                ],
                l: 11),
            Question(
                q: "Как в старину на флоте называли горячий чай с лимоном, сдобренный значительной порцией рома?",
                a: [
                    (answer: "Адвокат", isCorrect: true),
                    (answer: "Батя", isCorrect: false),
                    (answer: "Атаман", isCorrect: false),
                    (answer: "Браток", isCorrect: false)
                ],
                l: 12),
            Question(
                q: "Гражданином какой страны был открыватель пенициллина Александр Флеминг?",
                a: [
                    (answer: "США", isCorrect: false),
                    (answer: "Швейцария", isCorrect: false),
                    (answer: "Великобритания", isCorrect: true),
                    (answer: "Канада", isCorrect: false)
                ],
                l: 12),
           Question(
                q: "Как в старину на флоте называли горячий чай с лимоном, сдобренный значительной порцией рома?",
                a: [
                    (answer: "Адвокат", isCorrect: true),
                    (answer: "Батя", isCorrect: false),
                    (answer: "Атаман", isCorrect: false),
                    (answer: "Браток", isCorrect: false)
                ],
                l: 12),
            Question(
                q: "Какой из этих российских орденов был младше остальных?",
                a: [
                    (answer: "Станислав 2-й степени", isCorrect: true),
                    (answer: "Анна 2-й степени", isCorrect: false),
                    (answer: "Владимир 4-й степени", isCorrect: false),
                    (answer: "Белый Орел", isCorrect: false)
                ],
                l: 13),
            Question(
                q: "Что в России 19 века делали в дортуаре?",
                a: [
                    (answer: "Ели", isCorrect: false),
                    (answer: "Спали", isCorrect: true),
                    (answer: "Ездили верхом", isCorrect: false),
                    (answer: "Купались", isCorrect: false)
                ],
                l: 13),
           Question(
                q: "Кто первым применил таран в воздушном бою?",
                a: [
                    (answer: "Арцеулов", isCorrect: false),
                    (answer: "Кожедуб", isCorrect: false),
                    (answer: "Нестеров", isCorrect: true),
                    (answer: "Талалихин", isCorrect: false)
                ],
                l: 13),
            Question(
                q: "Что из этого является изюмом с косточками?",
                a: [
                    (answer: "Сабза", isCorrect: false),
                    (answer: "Кайса", isCorrect: false),
                    (answer: "Вассарга", isCorrect: true),
                    (answer: "Сарга", isCorrect: false)
                ],
                l: 14),
            Question(
                q: "Какое Евангелие открывает Новый Завет?",
                a: [
                    (answer: "От Луки", isCorrect: false),
                    (answer: "От Марка", isCorrect: false),
                    (answer: "От Иоанна", isCorrect: false),
                    (answer: "От Матфея", isCorrect: true)
                ],
                l: 14),
           Question(
                q: "Какая из этих звезд входит в так называемый большой летний треугольник?",
                a: [
                    (answer: "Канопус", isCorrect: false),
                    (answer: "Антарес", isCorrect: false),
                    (answer: "Альтаир", isCorrect: true),
                    (answer: "Спика", isCorrect: false)
                ],
                l: 14),
            Question(
                q: "Какой химический элемент назван в честь злого подземного гнома? ",
                a: [
                    (answer: "Кобальт", isCorrect: true),
                    (answer: "Гафний", isCorrect: false),
                    (answer: "Бериллий", isCorrect: false),
                    (answer: "Теллур", isCorrect: false)
                ],
                l: 15),
            Question(
                q: "Какой из учебных предметов не входит в КВАДРИВИУМ - следовавший за тривиумом повышенный цикл обучения в средние века?",
                a: [
                    (answer: "Арифметика", isCorrect: false),
                    (answer: "Геометрия", isCorrect: false),
                    (answer: "Диалектика", isCorrect: true),
                    (answer: "Музыка", isCorrect: false)
                ],
                l: 15),
           Question(
                q: "Каково условное название европейских печатных книг, изданных с 1 января 1501 г. до 1 января 1551 г.?",
                a: [
                    (answer: "Инкунабулы", isCorrect: false),
                    (answer: "Палеотипы", isCorrect: true),
                    (answer: "Фолианты", isCorrect: false),
                    (answer: "Архетипы", isCorrect: false)
                ],
                l: 15)
        ]
    }
}
