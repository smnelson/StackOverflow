//
//  QuestionCell.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 1/16/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import UIKit

class QuestionCell: UITableViewCell {
    
    var questionCount = UILabel(frame: .zero)
    var answerCount = UILabel(frame: .zero)
    var questionTitle = UILabel(frame: .zero)
    var questionTags = UILabel(frame: .zero)
    var modDate = UILabel(frame: .zero)
    
    init() {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: nil)
        updateSubviews()
        setupSubviews()
        setupConstraints()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        updateSubviews()
        setupSubviews()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateSubviews() {
        contentView.addSubview(questionCount)
        contentView.addSubview(answerCount)
        contentView.addSubview(questionTitle)
        contentView.addSubview(questionTags)
        contentView.addSubview(modDate)
    }
    
    func setupSubviews() {
        questionCount.text = "5"
        //questionCount.backgroundColor = .gray
        questionCount.textAlignment = .center
        
        answerCount.text = "1"
        answerCount.backgroundColor = .green
        answerCount.textAlignment = .center
        
        questionTitle.text = "This is a question?"
        //questionTitle.backgroundColor = .red
        
        questionTags.text = "iOS, tag2, tag3"
        questionTags.font = questionTags.font.withSize(13)
        
        modDate.text = "Last Mod: 01/16/2019"
        //modDate.backgroundColor = .blue
        modDate.font = modDate.font.withSize(11)
        modDate.textAlignment = .right

        
        questionTitle.numberOfLines = 0
        questionCount.numberOfLines = 0
        questionTags.numberOfLines = 0
        answerCount.numberOfLines = 0
    }
    
    func setupConstraints() {
        
        questionTitle.translatesAutoresizingMaskIntoConstraints = false
        questionCount.translatesAutoresizingMaskIntoConstraints = false
        answerCount.translatesAutoresizingMaskIntoConstraints = false
        questionTags.translatesAutoresizingMaskIntoConstraints = false
        modDate.translatesAutoresizingMaskIntoConstraints = false
        
        questionCount.snp.makeConstraints { maker in
            maker.leading.equalToSuperview().offset(30)
            maker.trailing.equalTo(questionTitle.snp.leading).offset(-20)
            maker.top.equalToSuperview().offset(10)
        }
        
        questionTitle.snp.makeConstraints { maker in
            //maker.top.equalToSuperview().multipliedBy(10)
            maker.leading.equalToSuperview().offset(75)
            maker.trailing.equalToSuperview().offset(-75)
            maker.top.equalToSuperview().offset(10)
            //maker.centerX.equalToSuperview()
            //maker.centerY.equalToSuperview()
        }
        
        answerCount.snp.makeConstraints { maker in
            maker.top.equalTo(questionCount.snp.bottom).offset(5)
            maker.leading.equalTo(questionCount.snp.leading)
            maker.trailing.equalTo(questionCount.snp.trailing)
            maker.bottom.equalToSuperview().offset(-20)
        }
        
        questionTags.snp.makeConstraints { maker in
            maker.top.equalTo(questionTitle.snp.bottom).offset(10)
            maker.leading.equalTo(questionTitle.snp.leading)
            maker.bottom.equalToSuperview()
            
        }
        
        modDate.snp.makeConstraints { maker in
            maker.top.equalTo(questionTitle.snp.bottom).offset(10)
            maker.leading.equalTo(questionTags.snp.trailing).offset(40)
            maker.trailing.equalToSuperview().offset(-20)
            maker.bottom.equalToSuperview()
        }
        
        
    }
    
    
}
