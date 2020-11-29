//
//  Response.swift
//  FirebaseStore
//
//  Created by Rashid Khan on 11/29/20.
//

import Foundation

public enum Status {
    case success
    case failure
}

public struct Response<T> {
    var status: Status
    var message: String?
    var error: Error?
    var data: T?
    
    // MARK: Success
    init(successMessage: String) {
        self.status = .success
        self.message = successMessage
    }
    
    init(data: T) {
        self.status = .success
        self.data = data
    }
    
    // MARK: Failure
    init(failureMessage: String) {
        self.status = .failure
        self.message = failureMessage
    }
    
    init(error: Error) {
        self.status = .failure
        self.error = error
    }
}
