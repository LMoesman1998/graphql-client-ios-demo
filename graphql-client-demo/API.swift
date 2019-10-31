//  This file was automatically generated and should not be edited.

import Apollo

public final class ListPersonsQuery: GraphQLQuery {
  public let operationDefinition =
    "query ListPersons {\n  listPersons {\n    __typename\n    id\n    firstName\n    lastName\n    age\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listPersons", type: .list(.object(ListPerson.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(listPersons: [ListPerson?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "listPersons": listPersons.flatMap { (value: [ListPerson?]) -> [ResultMap?] in value.map { (value: ListPerson?) -> ResultMap? in value.flatMap { (value: ListPerson) -> ResultMap in value.resultMap } } }])
    }

    public var listPersons: [ListPerson?]? {
      get {
        return (resultMap["listPersons"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ListPerson?] in value.map { (value: ResultMap?) -> ListPerson? in value.flatMap { (value: ResultMap) -> ListPerson in ListPerson(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [ListPerson?]) -> [ResultMap?] in value.map { (value: ListPerson?) -> ResultMap? in value.flatMap { (value: ListPerson) -> ResultMap in value.resultMap } } }, forKey: "listPersons")
      }
    }

    public struct ListPerson: GraphQLSelectionSet {
      public static let possibleTypes = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, firstName: String, lastName: String, age: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Person", "id": id, "firstName": firstName, "lastName": lastName, "age": age])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }
    }
  }
}

public final class GetPersonQuery: GraphQLQuery {
  public let operationDefinition =
    "query GetPerson($id: ID!) {\n  getPerson(id: $id) {\n    __typename\n    id\n    firstName\n    lastName\n    age\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getPerson", arguments: ["id": GraphQLVariable("id")], type: .object(GetPerson.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getPerson: GetPerson? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getPerson": getPerson.flatMap { (value: GetPerson) -> ResultMap in value.resultMap }])
    }

    public var getPerson: GetPerson? {
      get {
        return (resultMap["getPerson"] as? ResultMap).flatMap { GetPerson(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "getPerson")
      }
    }

    public struct GetPerson: GraphQLSelectionSet {
      public static let possibleTypes = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, firstName: String, lastName: String, age: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Person", "id": id, "firstName": firstName, "lastName": lastName, "age": age])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }
    }
  }
}

public final class HelloQuery: GraphQLQuery {
  public let operationDefinition =
    "query Hello {\n  hello\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("hello", type: .scalar(String.self)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(hello: String? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "hello": hello])
    }

    public var hello: String? {
      get {
        return resultMap["hello"] as? String
      }
      set {
        resultMap.updateValue(newValue, forKey: "hello")
      }
    }
  }
}

public final class AddPersonMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation AddPerson($firstName: String!, $lastName: String!, $age: Int) {\n  addPerson(firstName: $firstName, lastName: $lastName, age: $age) {\n    __typename\n    id\n    firstName\n    lastName\n    age\n  }\n}"

  public var firstName: String
  public var lastName: String
  public var age: Int?

  public init(firstName: String, lastName: String, age: Int? = nil) {
    self.firstName = firstName
    self.lastName = lastName
    self.age = age
  }

  public var variables: GraphQLMap? {
    return ["firstName": firstName, "lastName": lastName, "age": age]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("addPerson", arguments: ["firstName": GraphQLVariable("firstName"), "lastName": GraphQLVariable("lastName"), "age": GraphQLVariable("age")], type: .object(AddPerson.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addPerson: AddPerson? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addPerson": addPerson.flatMap { (value: AddPerson) -> ResultMap in value.resultMap }])
    }

    public var addPerson: AddPerson? {
      get {
        return (resultMap["addPerson"] as? ResultMap).flatMap { AddPerson(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "addPerson")
      }
    }

    public struct AddPerson: GraphQLSelectionSet {
      public static let possibleTypes = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, firstName: String, lastName: String, age: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Person", "id": id, "firstName": firstName, "lastName": lastName, "age": age])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }
    }
  }
}

public final class DeletePersonMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation DeletePerson($id: ID!) {\n  deletePerson(id: $id) {\n    __typename\n    id\n    firstName\n    lastName\n    age\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deletePerson", arguments: ["id": GraphQLVariable("id")], type: .object(DeletePerson.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deletePerson: DeletePerson? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deletePerson": deletePerson.flatMap { (value: DeletePerson) -> ResultMap in value.resultMap }])
    }

    public var deletePerson: DeletePerson? {
      get {
        return (resultMap["deletePerson"] as? ResultMap).flatMap { DeletePerson(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "deletePerson")
      }
    }

    public struct DeletePerson: GraphQLSelectionSet {
      public static let possibleTypes = ["Person"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("firstName", type: .nonNull(.scalar(String.self))),
        GraphQLField("lastName", type: .nonNull(.scalar(String.self))),
        GraphQLField("age", type: .scalar(Int.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, firstName: String, lastName: String, age: Int? = nil) {
        self.init(unsafeResultMap: ["__typename": "Person", "id": id, "firstName": firstName, "lastName": lastName, "age": age])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var firstName: String {
        get {
          return resultMap["firstName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var lastName: String {
        get {
          return resultMap["lastName"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "lastName")
        }
      }

      public var age: Int? {
        get {
          return resultMap["age"] as? Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "age")
        }
      }
    }
  }
}