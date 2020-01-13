//
//  EndPoints.swift
//  
//
//  Created by Guilherme Prata Costa on 28/08/19.
//

import Foundation

enum PCBaseURLEnum:String{
    case baseURL = "http://careers.picpay.com/"
}

class PPBaseURL{
    static let baseUrl = PCBaseURLEnum.baseURL.rawValue
    static let versionTest = "/tests"
    static let mobDev = "mobdev"
}

enum PCEndpoints:String{
    case getListaUsuario = "/users"
    case postInserirValor = "/transaction"
}


public enum HTTPMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
