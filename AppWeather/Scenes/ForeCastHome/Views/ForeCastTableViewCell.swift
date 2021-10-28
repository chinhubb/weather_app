//
//  ForeCastTableViewCell.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import UIKit

class ForeCastTableViewCell: UITableViewCell {

    static let identifier = "ForeCastTableViewCell"
    @IBOutlet weak var dayLabel: UILabel!
    @IBOutlet weak var templabel: UILabel!
    @IBOutlet weak var iconimage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func render(viewModel: GetForeCastHomeItemElement) {
        dayLabel.text = viewModel.date
        let tempDou = viewModel.main?.temp as? Double
        templabel.text = String(format: "%.0f", "\(tempDou)")
    }
    
}
