//
//  SearchResultCell.swift
//  StoreSearch
//
//  Created by Lucas Haney on 2/20/21.
//

import UIKit

class SearchResultCell: UITableViewCell {
    
    // Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var artworkImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
