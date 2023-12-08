//
//  HomeScreenViewModel.swift
//  Special Days
//
//  Created by Şükrü Şimşek on 8.12.2023.
//

import Foundation

protocol HomeViewModelInterFace {
    var view: HomeScreenInterface? { get set }
    func viewDidLoad()
}

final class HomeViewModel {
    weak var view: HomeScreenInterface?
    
}

extension HomeViewModel: HomeViewModelInterFace {

    func viewDidLoad() {
        view?.configureVC()
        view?.configureCountryView()

    }
    
}
