//
//  ViewController.swift
//  TaskTracker-MVVM
//
//  Created by Alper Canımoğlu on 19.04.2024.
//

import UIKit

class Home: UIViewController {
    
    @IBOutlet weak var taskTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        taskTableView.dataSource = self
        taskTableView.delegate = self
    }
    
    @IBAction func goToDetailButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToDetail", sender: nil)
    }
}

extension Home: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = taskTableView.dequeueReusableCell(withIdentifier: "taskCell", for: indexPath) as! TaskTableViewCell
        return cell
    }
}
