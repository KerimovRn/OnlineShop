//
//  MainViewController.swift
//  OnlineShop
//
//  Created by mac on 16.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollection()
        view.backgroundColor = .white
    }

    func setupCollection() {
        collectionView = UICollectionView(frame: view.safeAreaLayoutGuide.layoutFrame, collectionViewLayout: createCollectionViewTagLayout())
        collectionView.backgroundColor = .white
        collectionView.register(TagCollectionViewCell.self, forCellWithReuseIdentifier: "TagCollectionViewCell")
        collectionView.allowsMultipleSelection = false
        collectionView.allowsSelection = true
        view.addSubview(collectionView)
        collectionView.dataSource = self
    }
    
    func createCollectionViewTagLayout() -> UICollectionViewCompositionalLayout {
        let itemSize = NSCollectionLayoutSize(widthDimension: .estimated(80),
                                              heightDimension: .absolute(24))
        
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        let groupSize = NSCollectionLayoutSize(widthDimension: .estimated(1),
                                               heightDimension: .estimated(1))
        
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
            
        let section = NSCollectionLayoutSection(group: group)
        
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets.leading = 20
        
        return UICollectionViewCompositionalLayout(section: section)
    }
    
    func createCollectionViewBannerLayout() {
        // сделать секцию баннеров вместо тегов 
    }
}

extension MainViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TagCollectionViewCell", for: indexPath) as! TagCollectionViewCell
        cell.configure(text: "Cell number - \(indexPath.item)")
        return cell
    }
}
