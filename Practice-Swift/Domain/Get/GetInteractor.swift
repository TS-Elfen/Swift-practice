//
//  GetInteractor.swift
//  Practice-Swift
//
//  Created by TS-Elfen on 2023/08/20.
//

import Foundation
import Combine

struct someError: LocalizedError{
    var errorDescription: String? {
        return "Error!"
    }
}

protocol GetUsecase : Usecase {
    func execute<String,Int,someError>(input: String) -> PassthroughSubject<Int,someError>
}
