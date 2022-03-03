//
//  OrganizationCell.swift
//  Test_iOS
//
//  Created by 台莉捺子 on 2022/03/03.
//

import UIKit

class OrganizationCell: UICollectionViewCell {
    
    let organizationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Initializing
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.initializeLayout()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.organizationImageView.image = nil
    }
    
    // MARK: - Methods
    
    private func initializeLayout() {
        self.addSubview(self.organizationImageView)
        
        self.organizationImageView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.size.equalTo(Metric.orgImageSize)
        }
        
        self.organizationImageView.layer.cornerRadius = Metric.orgImageSize.height / 2.0
        self.organizationImageView.layer.borderWidth = Metric.orgBorderWidth
        self.organizationImageView.layer.borderColor = UIColor.lightGray.cgColor
    }
}
