//
//  Store.swift
//  FirebaseStore
//
//  Created by Rashid Khan on 11/29/20.
//

import Foundation

protocol IStore {
    func add<T: Codable>(completion: @escaping(Response<T>)->())
    func get()
    func delete()
    func getAll()
    
}

final class Store {
    
}
