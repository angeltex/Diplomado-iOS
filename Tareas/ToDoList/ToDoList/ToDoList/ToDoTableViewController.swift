//
//  ToDoTableViewController.swift
//  ToDoList
//
//  Created by Angel Sandoval on 31/08/18.
//  Copyright © 2018 Angel Sandoval. All rights reserved.
//

import UIKit

class ToDoTableViewController : UITableViewController,  ToDoCellDelegate{
    
   
    
    var todos = [ToDo]()
    var isPickerHidden = true

    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedToDos = ToDo.loadToDos() {
            todos = savedToDos
        } else {
            todos = ToDo.loadSampleToDos()
        }
        
        navigationItem.leftBarButtonItem = editButtonItem

    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell =
            tableView.dequeueReusableCell(withIdentifier:
                "ToDoCellIdentifier") as? ToDoCell else {
                    fatalError("Could not dequeue a cell")
        }
        
        cell.delegate = self

        
        let todo = todos[indexPath.row]
        //en la celda normal
        //cell.textLabel?.text = todo.title
        cell.titleLabel?.text = todo.title
        cell.isCompleteButton.isSelected = todo.isComplete
        return cell
        
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt
        indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit
        editingStyle: UITableViewCellEditingStyle, forRowAt indexPath:
        IndexPath) {
        if editingStyle == .delete {
            todos.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            ToDo.saveToDos(todos)

        }
    }
   
    @IBAction func unwindToToDoList(segue: UIStoryboardSegue) {
        guard segue.identifier == "saveUnwind" else { return }
        let sourceViewController = segue.source as!
        ToDoViewController
        if let todo = sourceViewController.todo {
            if let selectedIndexPath =
                tableView.indexPathForSelectedRow {
                todos[selectedIndexPath.row] = todo
                tableView.reloadRows(at: [selectedIndexPath],
                                     with: .none)
            } else {
                let newIndexPath = IndexPath(row: todos.count,
                                             section: 0)
                todos.append(todo)
                tableView.insertRows(at: [newIndexPath],
                                                    with: .automatic)
            }
        }
        ToDo.saveToDos(todos)

    }
    
    override func prepare(for segue: UIStoryboardSegue,
                             sender: Any?) {
        if segue.identifier == "showDetails" {
            let todoViewController = segue.destination
                as! ToDoViewController
            let indexPath = tableView.indexPathForSelectedRow!
            let selectedTodo = todos[indexPath.row]
            todoViewController.todo = selectedTodo
        }
    }
    
    func checkmarkTapped(sender: ToDoCell) {
        if let indexPath = tableView.indexPath(for: sender) {
            var todo = todos[indexPath.row]
            todo.isComplete = !todo.isComplete
            todos[indexPath.row] = todo
            tableView.reloadRows(at: [indexPath], with: .automatic)
            ToDo.saveToDos(todos)

        }
    }
    
    /*
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let normalCellHeight = CGFloat(44)
        let largeCellHeight = CGFloat(200)
        
        switch(indexPath) {
        case [1,0]: //Due Date Cell
            return isEndDatePickerHidden ? normalCellHeight : largeCellHeight
        case [2,0]: //Notes Cell
            return largeCellHeight
        default: return normalCellHeight
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath) {
        switch (indexPath) {
        case [2,0]:
            isEndDatePickerHidden = !isEndDatePickerHidden
            dueDateLabel.textColor = isEndDatePickerHidden ? .black : tableView.tintColor
            tableView.beginUpdates()
            tableView.endUpdates()
        default: break
        }
    }
 */

        
}