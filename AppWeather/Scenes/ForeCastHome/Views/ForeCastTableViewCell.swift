//
//  ForeCastTableViewCell.swift
//  AppWeather
//
//  Created by Jirawat on 28/10/2564 BE.
//

import Kingfisher
import UIKit

class ForeCastTableViewCell: UITableViewCell {
    static let identifier = "ForeCastTableViewCell"
    static let cellHeight: CGFloat = 150.0
    @IBOutlet var dayLabel: UILabel!
    @IBOutlet var templabel: UILabel!
    @IBOutlet var humiditylabel: UILabel!
    @IBOutlet var iconimage: UIImageView!

    func render(viewModel: GetForeCastHomeItemElement) {
        let caltemp = WeatherHomeViewController()
        let caltempMax = caltemp.calculatekelvin(kelvin: viewModel.main?.temp ?? 0.0)
        let humidityDouble = viewModel.main?.humidity
        let iconcode = viewModel.weather?[0].icon ?? ""
        let urlIcon = URL(string: "http://openweathermap.org/img/w/" + iconcode + ".png")

        let dateGet = DateFormatter()
        dateGet.dateFormat = "yyyy-MM-dd HH:mm:ss"

        let dateShow = DateFormatter()
        dateShow.dateFormat = "EEEE HH:mm"

        if let date = dateGet.date(from: viewModel.date!) {
            dayLabel.text = dateShow.string(from: date)
        }

        templabel.text = String(format: "%.0f", caltempMax)
        humiditylabel.text = "\(humidityDouble ?? 0.0) %"
        iconimage.kf.setImage(with: urlIcon)
    }
}
