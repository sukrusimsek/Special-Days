//
//  ViewController.swift
//  Special Days
//
//  Created by Şükrü Şimşek on 7.12.2023.
//

import UIKit

protocol HomeScreenInterface: AnyObject {
    func configureVC()
    func configureCountryView()
}
final class HomeScreen: UIViewController {
    private let viewModel = HomeViewModel()
    private var countryView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.view = self
        viewModel.viewDidLoad()
    }


}
extension HomeScreen: HomeScreenInterface {
    func configureVC() {
        view.backgroundColor = UIColor(rgb: 0x000000)
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(rgb: 0x454545)
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white,
                                          .font: UIFont.systemFont(ofSize: 20, weight: .semibold)]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        navigationItem.title = "Special Days"
    }
    func configureCountryView() {
        countryView.translatesAutoresizingMaskIntoConstraints = false
        countryView.backgroundColor = UIColor(rgb: 0x222831)
        countryView.layer.cornerRadius = 16
        countryView.layer.masksToBounds = true
        countryView.layer.borderColor = UIColor(rgb: 0x393E46).cgColor
        countryView.layer.borderWidth = 5
        view.addSubview(countryView)
        
        NSLayoutConstraint.activate([
            countryView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            countryView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            countryView.heightAnchor.constraint(equalToConstant: view.frame.height/2),
            countryView.widthAnchor.constraint(equalToConstant: view.frame.width-40)
        ])
        
    }
}
