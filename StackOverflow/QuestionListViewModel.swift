//
//  QuestionListViewModel.swift
//  StackOverflow
//
//  Created by Robert Haworth on 1/30/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//
import Foundation
import Fakery

// MARK: - Delegate
// ViewModelDelegate - used to pass actionable state to the delegate
protocol QuestionListViewModelDelegate: class {
    
}

// MARK: - Protocols
/*
 * Input/Output protocols. Used to segregate different types
 * of accessors implemented by this viewModel
 */
protocol QuestionListViewModelInputs {
    
}

protocol QuestionListViewModelOutputs {
    var questions: [Question] { get set }
}

// Type protocol - Used to enforce implementation of inputs/outputs segregation
protocol QuestionListViewModelType {
    var inputs: QuestionListViewModelInputs { get }
    var outputs: QuestionListViewModelOutputs { get }
}


// MARK: -
class QuestionListViewModel: QuestionListViewModelType, QuestionListViewModelInputs, QuestionListViewModelOutputs {
    
    weak var delegate: QuestionListViewModelDelegate?
    
    var questions: [Question] = []
    private let faker = Faker()
    
    init() {
        populateData()
    }
    
    private func populateData() {
        questions = fakeQuestions()
    }
    
    func fakeQuestions() -> [Question] {
        var questions: [Question] = []
        (0..<faker.number.randomInt(min: 1, max: 25)).forEach { _ in
            questions.append(Question(owner: faker.name.name(),
                                      answers: fakeAnswers(),
                                      tags: fakeTags()))
        }
        return questions
    }
    
    func fakeAnswers() -> [Answer] {
        var answers: [Answer] = []
        (0..<faker.number.randomInt(min: 0, max: 10)).forEach { _ in
            answers.append(Answer(title: faker.lorem.sentence(wordsAmount: faker.number.randomInt(min: 5, max: 10)),
                                  description: faker.lorem.paragraphs(amount: faker.number.randomInt(min: 1, max: 4)),
                                  owner: faker.name.name(),
                                  tags: fakeTags()))
        }
        return answers
    }
    
    func fakeTags() -> [Tag] {
        var tags: [Tag] = []
        (0..<faker.number.randomInt(min: 0, max: 6)).forEach { _ in
            tags.append(Tag(name: faker.internet.domainWord(),
                            iconURL:faker.internet.url()))
        }
        return tags
    }
    
    var inputs: QuestionListViewModelInputs { return self }
    var outputs: QuestionListViewModelOutputs { return self }
}
