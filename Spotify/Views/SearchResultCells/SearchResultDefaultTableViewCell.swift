//
//  SearchResultDefaultTableViewCell.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/20/21.
//

import UIKit
import SDWebImage

class SearchResultDefaultTableViewCell: UITableViewCell {
    static let identfier = "SearchResultDefaultTableViewCell"

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()

    private let iconImageViewe: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(label)
        contentView.addSubview(iconImageViewe)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator
    }

    required init?(coder: NSCoder) {
        fatalError()
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let imageSize: CGFloat = contentView.height-10
        iconImageViewe.frame = CGRect(
            x: 10,
            y: 5,
            width: imageSize,
            height: imageSize
        )
        iconImageViewe.layer.cornerRadius = imageSize/2
        iconImageViewe.layer.masksToBounds = true
        label.frame = CGRect(x: iconImageViewe.right+10, y: 0, width: contentView.width-iconImageViewe.right-15, height: contentView.height)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageViewe.image = nil
        label.text = nil
    }

    func configure(with viewModel: SearchResultDefaultTableViewCellViewModel) {
        label.text = viewModel.title
        iconImageViewe.sd_setImage(with: viewModel.imageURL, completed: nil)
    }
}
