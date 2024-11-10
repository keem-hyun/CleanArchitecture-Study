//
//  MockUserRepository.swift
//  CleanArchitectureTests
//
//  Created by 김강현 on 11/10/24.
//

import Foundation
@testable import CleanArchitecture

public class MockUserRepository: UserRepositoryProtocol {
    public func fetchUser(query: String, page: Int) async -> Result<UserListResult, NetworkError> {
        .failure(.dataNil)
    }
    
    public func getFavoriteUsers() -> Result<[UserListItem], CoreDataError> {
        .failure(.entityNotFound(""))
    }
    
    public func saveFavoriteUser(user: UserListItem) -> Result<Bool, CoreDataError> {
        .failure(.entityNotFound(""))
    }
    
    public func deleteFavoriteUser(userID: Int) -> Result<Bool, CoreDataError> {
        .failure(.entityNotFound(""))
    }
    
    
}

