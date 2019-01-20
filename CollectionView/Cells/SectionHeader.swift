import UIKit

class SectionHeader: UICollectionReusableView {
    
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var countLabel: UILabel!
    @IBOutlet private weak var flagImage: UIImageView!
    
    var section: Section! {
        didSet {
            titleLabel.text = section.title
            flagImage.image = UIImage(named: section.title ?? "")
            countLabel.text = String(section.count)
        }
    }
}
