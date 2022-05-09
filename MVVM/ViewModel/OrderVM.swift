//
//  OrderVM.swift
//  MVVM
//
//  Created by Eugene on 09.05.2022.
//

import Foundation

final class OrderVM {
    let order: Order
    var name: String {
        return "pososi"
    }
    
    init(order: Order) {
        self.order = order
    }
}
