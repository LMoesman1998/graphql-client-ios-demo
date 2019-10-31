//
//  APIHandlet.swift
//  ApolloClient Test
//
//  Created by Lars Moesman on 09/12/2018.
//  Copyright © 2018 Lars Moesman. All rights reserved.
//

import Foundation
import Apollo

protocol APIHandlerDelegate: class {
    func didFetchPerson(result: GetPersonQuery.Data?, error: Error?)
    func didFetchPersons(result: ListPersonsQuery.Data?, error: Error?)
    func didAddPerson(result: AddPersonMutation.Data?, error: Error?)
}

class APIHandler {
    
    weak var delegate: APIHandlerDelegate?
    let apolloClient: ApolloClient?
    
    init(delegate: APIHandlerDelegate) {
        self.delegate = delegate
        apolloClient = (UIApplication.shared.delegate as? AppDelegate)?.apolloClient
    }
    
    func fetchPerson(id: String) {
        apolloClient?.fetch(query: GetPersonQuery(id: id), cachePolicy: .fetchIgnoringCacheData) { (result, error) in
            self.delegate?.didFetchPerson(result: result?.data, error: error)
        }
    }
    
    func fetchPersons() {
        apolloClient?.fetch(query: ListPersonsQuery(), cachePolicy: .fetchIgnoringCacheData) { (result, error) in
            self.delegate?.didFetchPersons(result: result?.data, error: error)
        }
    }
    
    func addPerson(firstName: String, lastName: String, age: Int?) {
        apolloClient?.perform(mutation: AddPersonMutation(firstName: firstName,
                                                          lastName: lastName,
                                                          age: age)) { (result, error) in
            self.delegate?.didAddPerson(result: result?.data, error: error)
        }
    }
    
}

struct Person {
    let id: String
    let firstName: String
    let lastName: String
    let age: Int?
    
    init(id: String, firstName: String, lastName: String, age: Int?) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.age = age
    }
}
