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
    
    init(delegate: QuestionFactoryDelegate?) {
        self.delegate = delegate
        questions = loadMockData()
    }
    
    func requestNextQuestion(level: Int) {
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
                q: "Что сочиняют спецагентам, отправляя их на задание?",
                a: [
                    (answer: "Сказку", isCorrect: false),
                    (answer: "Былину", isCorrect: false),
                    (answer: "Легенду", isCorrect: true),
                    (answer: "Притчу", isCorrect: false)
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
                q: "В какой стране находится город Антверпен?",
                a: [
                    (answer: "Бельгия", isCorrect: true),
                    (answer: "Голландия", isCorrect: false),
                    (answer: "Франция", isCorrect: false),
                    (answer: "Германия", isCorrect: false)
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
                    (answer: "На метле+", isCorrect: true),
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
                    (answer: "Инаугурация", isCorrect: false),
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
                q: "В какой из этих игр используется мяч наибольшей величины?",
                a: [
                    (answer: "Баскетбол", isCorrect: true),
                    (answer: "Футбол", isCorrect: false),
                    (answer: "Волейбол", isCorrect: false),
                    (answer: "Водное поло", isCorrect: false)
                ],
                l: 6),
            Question(
                q: "Какое зодиакальное созвездие на небе самое большое?",
                a: [
                    (answer: "Стрелец", isCorrect: false),
                    (answer: "Дева+", isCorrect: true),
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
                q: "Как назывался первый советский пленочный фотоаппарат?",
                a: [
                    (answer: "Зенит", isCorrect: false),
                    (answer: "Смена", isCorrect: false),
                    (answer: "Зоркий", isCorrect: false),
                    (answer: "ФЭД", isCorrect: true)
                ],
                l: 7),
           Question(
                q: "Сколько сантиметров в 1 ярде?",
                a: [
                    (answer: "30,48", isCorrect: false),
                    (answer: "81,44", isCorrect: false),
                    (answer: "91,44", isCorrect: true),
                    (answer: "96,84", isCorrect: false)
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
                q: "Назовите год отмены в России крепостного права.",
                a: [
                    (answer: "1871", isCorrect: false),
                    (answer: "1861", isCorrect: true),
                    (answer: "1864", isCorrect: false),
                    (answer: "1854", isCorrect: false)
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
                q: "Какое звание является наивысшим в научной иерархии?",
                a: [
                    (answer: "Доцент", isCorrect: false),
                    (answer: "Профессор", isCorrect: false),
                    (answer: "Магистр", isCorrect: false),
                    (answer: "Академик", isCorrect: true)
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
                q: "Температура в 86 градусов по Фаренгейту соответствует по Цельсию температуре в:",
                a: [
                    (answer: "30 градусов+", isCorrect: true),
                    (answer: "36 градусов", isCorrect: false),
                    (answer: "40 градусов", isCorrect: false),
                    (answer: "50 градусов", isCorrect: false)
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
                    (answer: "Юта+", isCorrect: true),
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
                q: "Сколько куполов у собора Василия Блаженного?",
                a: [
                    (answer: "7", isCorrect: false),
                    (answer: "10", isCorrect: true),
                    (answer: "11", isCorrect: false),
                    (answer: "13", isCorrect: false)
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
                q: "Какой сигнал на российских морских пляжах означает запрет на купание?",
                a: [
                    (answer: "Черный шар", isCorrect: true),
                    (answer: "Черный флаг", isCorrect: false),
                    (answer: "Желтый шар", isCorrect: false),
                    (answer: "Желтый флаг", isCorrect: false)
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
