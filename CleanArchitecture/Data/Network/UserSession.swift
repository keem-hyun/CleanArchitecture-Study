//
//  UserSession.swift
//  CleanArchitecture
//
//  Created by 김강현 on 11/6/24.
//

import Foundation
import Alamofire

public protocol SessionProtocol {
    func request(
        _ convertible: any URLConvertible,
        method: HTTPMethod,
        parameters: Parameters?,
        headers: HTTPHeaders?
    ) -> DataRequest
}

class UserSession: SessionProtocol {
    private var session: Session
    
    init() {
        let configuration = URLSessionConfiguration.default
        configuration.requestCachePolicy = .returnCacheDataElseLoad
        self.session = Session(configuration: configuration)
    }
    
    func request(
        _ convertible: any URLConvertible,
        method: HTTPMethod = .get,
        parameters: Parameters? = nil,
        headers: HTTPHeaders? = nil
    ) -> DataRequest {
        return session.request(convertible, method: method, parameters: parameters, headers: headers)
    }
}
