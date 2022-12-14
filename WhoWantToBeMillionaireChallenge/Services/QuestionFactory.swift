//
//  QuestionFactory.swift
//  WhoWantToBeMillionaireChallenge
//
//  Created by SERGEY SHLYAKHIN on 06.11.2022.
//

import Foundation

final class QuestionFactory: QuestionFactoryProtocol {
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

// MARK: - Mock data
extension QuestionFactory {
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
                q: "Как звали Колумба?",
                a: [
                    (answer: "Христофор", isCorrect: true),
                    (answer: "Америгго", isCorrect: false),
                    (answer: "Хуан", isCorrect: false),
                    (answer: "Дуремар", isCorrect: false)
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
                q: "В какой из этих игр используется мяч наибольшей величины?",
                a: [
                    (answer: "Баскетбол", isCorrect: true),
                    (answer: "Футбол", isCorrect: false),
                    (answer: "Волейбол", isCorrect: false),
                    (answer: "Водное поло", isCorrect: false)
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
                q: "В каком штате США расположен город Солт-Лейк-Сити - столица Зимней Олимпиады 2002 года?",
                a: [
                    (answer: "Нью-Хемпшир", isCorrect: false),
                    (answer: "Колорадо", isCorrect: false),
                    (answer: "Висконсин", isCorrect: false),
                    (answer: "Юта", isCorrect: true)
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
                q: "Как называется певучее исполнение на музыкальных инструментах (подражание пению)?",
                a: [
                    (answer: "Кантилена", isCorrect: false),
                    (answer: "Канцона", isCorrect: false),
                    (answer: "Кантабиле", isCorrect: true),
                    (answer: "Тремоло", isCorrect: false)
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
                q: "Что из этого является изюмом с косточками?",
                a: [
                    (answer: "Сабза", isCorrect: false),
                    (answer: "Кайса", isCorrect: false),
                    (answer: "Вассарга", isCorrect: true),
                    (answer: "Сарга", isCorrect: false)
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
                l: 15)
        ]
    }
}
