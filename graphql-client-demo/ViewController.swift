//
//  ViewController.swift
//  ApolloClient Test
//
//  Created by Lars Moesman on 08/12/2018.
//  Copyright © 2018 Lars Moesman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldID: UITextField!
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldAge: UITextField!
    
    private var tableViewController: TableViewController!
    var apiHandler: APIHandler!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Init API and fetch all persons from backend
        apiHandler = APIHandler(delegate: self)
        apiHandler.fetchPersons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Save tableviewcontroller so we can interact with it
        if let destination = segue.destination as? TableViewController {
            tableViewController = destination
        }
    }

    @IBAction func findPerson(_ sender: Any) {
        // If textfield is empty go back to the full list of persons else try to find person with matching ID
        if (textFieldID.text?.isEmpty)! {
            apiHandler.fetchPersons()
            return
        }
        apiHandler.fetchPerson(id: textFieldID.text!)
    }

    @IBAction func addPerson(_ sender: Any) {
        // Make sure textfields are filled in, firstname and lastname are marked as required in GraphQL schema
        if (textFieldFirstName.text?.isEmpty)! || (textFieldLastName.text?.isEmpty)! {
            return
        }
        apiHandler.addPerson(firstName: textFieldFirstName.text!,
                             lastName: textFieldLastName.text!,
                             age: Int(textFieldAge.text ?? ""))
    }
    
    private func showError() {
        
    }
    
}

extension ViewController: APIHandlerDelegate {
    func didFetchPerson(result: GetPersonQuery.Data?, error: Error?) {
        if result?.getPerson == nil { return }
        // Convert result to Person struct so tableviewcontroller can handle it
        let person = Person(id: (result?.getPerson?.id)!,
                            firstName: (result?.getPerson?.firstName)!,
                            lastName: (result?.getPerson?.lastName)!,
                            age: result?.getPerson?.age)
        // Set data and reload tableview
        tableViewController.setPersons(data: [person])
    }
    
    func didFetchPersons(result: ListPersonsQuery.Data?, error: Error?) {
        if result?.listPersons == nil { return }
        var persons: [Person] = []
        result?.listPersons?.forEach { (object) in
            // Convert result to Person struct so tableviewcontroller can handle it
            let person = Person(id: object!.id,
                                firstName: object!.firstName,
                                lastName: object!.lastName,
                                age: object!.age)
            persons.append(person)
        }
        // Set data and reload tableview
        tableViewController.setPersons(data: persons)
    }
    
    func didAddPerson(result: AddPersonMutation.Data?, error: Error?) {
        if result?.addPerson == nil { return }
        // Fetch all persons after succesfully adding one
        apiHandler.fetchPersons()
    }
}
