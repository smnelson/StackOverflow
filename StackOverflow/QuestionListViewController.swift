//
//  QuestionListViewController.swift
//  StackOverflow
//
//  Created by Stacey Nelson on 1/5/19.
//  Copyright © 2019 Stacey Nelson. All rights reserved.
//

import UIKit

class QuestionListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let listTableView = UITableView(frame: .zero, style: .grouped)
    let cellIdentifier = "questionCell"

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
        view.addSubview(listTableView)
    }
    
    func setupSubviews() {
        view.backgroundColor = .white
        listTableView.delegate = self
        listTableView.dataSource = self
        listTableView.register(QuestionCell.self, forCellReuseIdentifier: cellIdentifier)
        //listTableView.register(UITableViewCell.CellStyle.subtitle, forCellReuseIdentifier: "questionCell")
        //create custom cell, register custom cell & dequeue custom cell (give me a cell)
        
        
    }
    
    func setupConstraints() {
        listTableView.snp.makeConstraints { maker in
            maker.edges.equalToSuperview()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) {
            return cell
        } else {
            let cell = QuestionCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: cellIdentifier)
            return cell
        }
        
        
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //cell.textLabel?.text = "Hello"
        
    }

}
