//
//  ViewController.swift
//  Adding to the Beast List
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let identifier = "taskCell"

    @IBOutlet weak var tasksTableView: UITableView!
    @IBOutlet weak var taskTextField: UITextField!
    
    var tasks = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addTaskButton(_ sender: UIButton) {
        let task = taskTextField.text!
        if task != "" {
            tasks.append(task)
            tasksTableView.dataSource = self
            tasksTableView.reloadData()
        }
    }
    
}

extension ViewController : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = tasks[indexPath.row]
        return cell
    }
    
    
}

