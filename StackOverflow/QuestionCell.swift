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
        //contentView.addSubview(questionCount)
        //contentView.addSubview(answerCount)
        contentView.addSubview(questionTitle)
        //contentView.addSubview(questionTags)
        //contentView.addSubview(modDate)
    }
    
    func setupSubviews() {
        questionCount.text = "5"
        answerCount.text = "1"
        answerCount.backgroundColor = .green
        questionTitle.text = "This is a question?"
        questionTags.text = "iOS, tag2, tag3"
        modDate.text = "01/16/2019"
    }
    
    func setupConstraints() {
        questionTitle.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.centerY.equalToSuperview()
        }
    }
    
    
}
