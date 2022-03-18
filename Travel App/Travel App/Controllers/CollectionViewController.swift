//
//  CollectionViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class CollectionViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView?
    
    var cells:[CollectionViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        collectionView?.delegate = self
        collectionView?.dataSource = self
        // Do any additional setup after loading the view.
        managingData(query: "nature")
    }
    
    func managingData(query:String){
        NetworkManager.service.request(requestRoute: .query(query: query), responseModel: UnsplashResponse.self) { [weak self] details in
            guard let result = details.results else{return}
            guard let self = self else {return}
            
            var postArray:[CollectionViewItemModel] = []
            
            for item in result {
                let postModel = CollectionViewItemModel(profileImage: item.user?.profile_image?.large, nameLabel: item.user?.name, timeLabel: CollectionStringConstants.shared.timeString, mainImage: item.urls?.regular, likesLabel: CollectionStringConstants.shared.likeString, captionLabel: item.user?.bio, commentsLabel: CollectionStringConstants.shared.commentString)
                postArray.append(postModel)
            }
            self.cells.append(CollectionViewModel(items: postArray))
            DispatchQueue.main.async {
                self.collectionView?.reloadData()
            }
        }
    }
}

extension CollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells[section].items.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.collectionCellIdentifier, for: indexPath) as! CollectionViewCell
        let cellModel = cells[indexPath.section].items[indexPath.row]!
        cell.setupCell(cellModel: cellModel)
        return cell
    }
}
