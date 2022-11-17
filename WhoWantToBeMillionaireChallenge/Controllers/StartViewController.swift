//
//  MainViewController.swift
//  WhoWantToBeMillionaireChallenge
//
//  Created by Артем Орлов on 30.10.2022.
//

import UIKit

final class StartViewController: UIViewController {
    
    let imageView = UIImageView()
    let playButton = UIButton()
    let rulesButton = UIButton()
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "bg2L.jpg")!)
        style()
        layout()
    }
}

extension StartViewController {
    private func style() {
        imageView.image = UIImage(named: "millionaire.png")
        imageView.contentMode = .scaleAspectFit
        
        playButton.setTitle("Играть", for: .normal)
        playButton.backgroundColor = .systemCyan
        playButton.layer.cornerRadius = 10
        playButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        
        rulesButton.setTitle("Правила", for: .normal)
        rulesButton.backgroundColor = .systemCyan
        rulesButton.layer.cornerRadius = 10
        rulesButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)

        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        rulesButton.addTarget(self, action:  #selector(rulesButtonTapped), for: .touchUpInside)
    }
    
    private func layout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(playButton)
        stackView.addArrangedSubview(rulesButton)
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),

            playButton.heightAnchor.constraint(equalToConstant: 50),
            rulesButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension StartViewController {
    @objc func playButtonTapped(sender: UIButton) {
        print("Начали играть!")
        let vc = GameViewContoller()
        vc.questionFactory = QuestionFactory(delegate: vc)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func rulesButtonTapped(sender: UIButton) {
        print("Правила!")
        let vc = RulesViewController()
        present(vc, animated: true)
    }
}
