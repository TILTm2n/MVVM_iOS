//
//  ViewModel.swift
//  MVVM
//
//  Created by Eugene on 07.05.2022.
//

import Foundation

protocol IHaveAnyViewModel: AnyObject {
    var anyViewModel: Any? { get set }
}

protocol IHaveViewModel: IHaveAnyViewModel {
    associatedtype ViewModel
    
    var viewModel: ViewModel? { get set }
    func viewModelChanged(_ viewModel: ViewModel)
}


//все что ниже создано для того чтобы избавиться от лишнего кода реализации в классах
private var viewModelKey: UInt8 = 0

extension IHaveViewModel {
    
    //anyViewModel - лишена информации о типе, удобно использовать снаружи класса
    var anyViewModel: Any? {
        get {
            return objc_getAssociatedObject(self, &viewModelKey)
        }
        set {
            let viewModel = newValue as? ViewModel
            
            objc_setAssociatedObject(self, &viewModelKey, viewModel, .OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    //viewModel - содержит типизированную вью-модель, удобно использловать внутри класса, например, чтобы обновлять состояние вьюхи
    var viewModel: ViewModel? {
        get {
            return anyViewModel as? ViewModel
        }
        set {
            anyViewModel = newValue
        }
    }
    
    func viewModelChanged(_ viewModel: ViewModel) {
        
    }
}


//protocol ViewModelProtocol {
//    var greeting: String? { get }
//    var greetingDidChange: ((ViewModelProtocol) -> ())? { get set }
//
//    init(person: Person)
//
//    func showGreeting()
//}
//
//class ViewModel : ViewModelProtocol {
//    let person: Person
//
//    var greeting: String? {
//        didSet{
//            self.greetingDidChange?(self)
//        }
//    }
//    var greetingDidChange: ((ViewModelProtocol) -> ())?
//
//    required init(person: Person) {
//        self.person = person
//    }
//
//    func showGreeting() {
//        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastname
//    }
//
//
//}
