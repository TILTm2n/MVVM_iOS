//
//  OrderCell.swift
//  MVVM
//
//  Created by Eugene on 09.05.2022.
//

import UIKit

class OrderCell: UITableViewCell, IHaveViewModel {
    public static let Identifier = "OrderCell"
    typealias ViewModel = OrderVM
    
//                             С помощью Objective-C засунуто в расширение IHaveViewModel для уменьшения дублирования кода
//
//    //anyViewModel - лишена информации о типе, удобно использовать снаружи класса
//    var anyViewModel: Any? {
//        didSet {
//            guard let anyViewModel = anyViewModel as? ViewModel else { return }
//            viewModelChanged(anyViewModel)
//        }
//    }
//
//    //viewModel - содержит типизированную вью-модель, удобно использловать внутри класса, например, чтобы обновлять состояние вьюхи
//    var viewModel: ViewModel? {
//        get {
//            return anyViewModel as? ViewModel
//        }
//        set {
//            anyViewModel = newValue
//        }
//    }
    
    func viewModelChanged(_ viewModel: ViewModel) {
        var configuration = self.defaultContentConfiguration()
        configuration.text = viewModel.name
        self.contentConfiguration = configuration
    }

}
