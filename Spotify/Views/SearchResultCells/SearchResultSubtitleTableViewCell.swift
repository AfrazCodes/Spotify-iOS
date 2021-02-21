//
//  SearchResultSubtitleTableViewCell.swift
//  Spotify
//
//  Created by Afraz Siddiqui on 2/20/21.
//

import UIKit
import SDWebImage

class SearchResultSubtitleTableViewCell: UITableViewCell {
    static let identfier = "SearchResultSubtitleTableViewCell"

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()

    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
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
        contentView.addSubview(subtitleLabel)
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
        let labelHeight = contentView.height/2
        label.frame = CGRect(
            x: iconImageViewe.right+10,
            y: 0,
            width: contentView.width-iconImageViewe.right-15,
            height: labelHeight
        )

        subtitleLabel.frame = CGRect(
            x: iconImageViewe.right+10,
            y: label.bottom,
            width: contentView.width-iconImageViewe.right-15,
            height: labelHeight
        )
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        iconImageViewe.image = nil
        label.text = nil
        subtitleLabel.text = nil
    }

    func configure(with viewModel: SearchResultSubtitleTableViewCellViewModel) {
        label.text = viewModel.title
        subtitleLabel.text = viewModel.subtitle
        iconImageViewe.sd_setImage(with: viewModel.imageURL, placeholderImage: UIImage(systemName: "photo"), completed: nil)
    }
}
