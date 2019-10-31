//
//  TableViewController.swift
//  ApolloClient Test
//
//  Created by Lars Moesman on 08/12/2018.
//  Copyright © 2018 Lars Moesman. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    private var persons: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        persons = []
    }

    func setPersons(data: [Person]) {
        persons = data
        tableView.reloadData()
    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> TableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? TableViewCell
        let person = persons[indexPath.row]
        cell?.labelID.text = person.id
        cell?.labelFirstName.text = person.firstName
        cell?.labelLastName.text = person.lastName
        cell?.labelAge.text = "\(person.age ?? -1)"
        return cell!
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 127
    }

}
