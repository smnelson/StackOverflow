//
//  QuestionDetailViewController.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 1/20/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import UIKit

class QuestionDetailViewController: UIViewController {

    var questionTitle = UILabel(frame: .zero)
    var questionCount = UILabel(frame: .zero)
    var questionDescription = UILabel(frame: .zero)
    var questionTags = UILabel(frame: .zero)
    var lastModDate = UILabel(frame: .zero)
    var answerCount = UILabel(frame: .zero)
    var answerDescription = UILabel(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    init() {
        super.init(nibName: nil, bundle: nil)
        updateSubviews()
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func updateSubviews() {
        view.addSubview(questionCount)
        view.addSubview(questionTitle)
        view.addSubview(questionDescription)
        view.addSubview(questionTags)
        view.addSubview(lastModDate)
        view.addSubview(answerCount)
        view.addSubview(answerDescription)
    }
    
    func setupSubviews() {
        view.backgroundColor = .white
        
        questionCount.text = "5"
        questionCount.backgroundColor = .blue
        
        questionTitle.text = "This is the question? continue to add text to see what happens"
        questionTitle.backgroundColor = .purple
        questionTitle.textAlignment = .center
        questionTitle.numberOfLines = 0
        questionTitle.font = questionTitle.font.withSize(18)
        
        questionDescription.text = "This is my question. How am I supposed to do this text? Is it supposed to be longer or shorter? I am not sure how many lines I am supposed to make, so I am just going to keep typing till I can finish this question. Maybe then I can get some sort of answer."
        questionDescription.backgroundColor = .green
        questionDescription.numberOfLines = 0
        questionDescription.font = questionDescription.font.withSize(14)
        
        questionTags.text = "Tags: iOS, iPhone, Meaning of Life"
        questionTags.backgroundColor = .red
        questionTags.font = questionTags.font.withSize(12)
        
        lastModDate.text = "Last Modified: 1/20/2019"
        lastModDate.backgroundColor = .orange
        lastModDate.font = lastModDate.font.withSize(11)
        
        answerCount.text = "2"
        answerCount.backgroundColor = .yellow
        
        answerDescription.text = "Your question is not really a question. You need to read through this to get a better idea of what you are trying to ask. This is just some filler text to see what happens when we add more lines. We want to have a few lines to test how it looks on the screen."
        answerDescription.backgroundColor = .gray
        answerDescription.numberOfLines = 0
        answerDescription.font = answerDescription.font.withSize(16)
    }
    
    func setupConstraints() {
        questionCount.snp.makeConstraints { maker in
            maker.leading.equalToSuperview().offset(10)
            maker.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            maker.trailing.equalToSuperview().offset(-300)
        }
        
        questionTitle.snp.makeConstraints { maker in
            maker.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(10)
            maker.leading.equalTo(questionCount.snp.trailing)
            maker.trailing.equalToSuperview().offset(-20)
        }
        
        questionDescription.snp.makeConstraints { maker in
            maker.top.equalTo(questionTitle.snp.bottom).offset(5)
            maker.leading.equalTo(questionTitle.snp.leading)
            maker.trailing.equalTo(questionTitle.snp.trailing)
        }
        
        questionTags.snp.makeConstraints { maker in
            maker.top.equalTo(questionDescription.snp.bottom).offset(5)
            maker.leading.equalTo(questionTitle.snp.leading)
            maker.trailing.equalTo(questionTitle.snp.trailing)
        }
        
        lastModDate.snp.makeConstraints { maker in
            maker.top.equalTo(questionTags.snp.bottom).offset(2)
            maker.leading.equalTo(questionTitle.snp.leading)
            maker.trailing.equalTo(questionTitle.snp.trailing)
        }
        
        answerCount.snp.makeConstraints { maker in
            maker.top.equalTo(lastModDate.snp.bottom).offset(30)
            maker.leading.equalTo(questionCount.snp.leading)
            maker.trailing.equalTo(questionCount.snp.trailing)
        }
        
        answerDescription.snp.makeConstraints { maker in
            maker.top.equalTo(answerCount.snp.top)
            maker.leading.equalTo(questionTitle.snp.leading)
            maker.trailing.equalTo(questionTitle.snp.trailing)
        }
    }
    
    
}
