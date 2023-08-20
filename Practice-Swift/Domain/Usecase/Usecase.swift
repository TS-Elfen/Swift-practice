//
//  Usecase.swift
//  Practice-Swift
//
//  Created by TS-Elfen on 2023/08/20.
//

import Foundation
import Combine

protocol Usecase {
    func execute<X,Y,Z>(input: X)-> PassthroughSubject<Y,Z>
}
