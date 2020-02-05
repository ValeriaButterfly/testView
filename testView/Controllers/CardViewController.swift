//
//  CardViewController.swift
//  testView
//
//  Created by Valeria Muldt on 04.02.2020.
//  Copyright © 2020 Valeria Muldt. All rights reserved.
//

import UIKit

class CardViewController: UIViewController {
    
    let reuseIdentifier = "Cell"
    
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var handleArea: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: "CustomBioTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
        
    }

}


//MARK: - TableViewDelegate - TableViewDataSource
extension CardViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! CustomBioTableViewCell
        
        cell.courseNameLabel.text = "New Course"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}
