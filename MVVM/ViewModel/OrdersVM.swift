//
//  OrdersVM.swift
//  MVVM
//
//  Created by Eugene on 09.05.2022.
//

import Foundation

final class OrdersVM {
    var orders: [OrderVM] = []
    
    private var ordersProvider: OrdersProvider
    
    init(ordersProvider: OrdersProvider) {
        self.ordersProvider = ordersProvider
    }
    
    func loadOrders() {
        ordersProvider.loadOrders { [weak self] model in
            self?.orders = model.map { OrderVM(order: $0) }
        }
    }
}

final class OrdersProvider {
    func loadOrders(completion: @escaping ([Order]) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            completion((0...99).map {
                Order(id: $0, name: "Order")
            })
        }
    }
}
