//
//  Notes - NoteTableViewCell.swift
//  Created by yagom.
//  Copyright © yagom. All rights reserved.
//

import UIKit

final class NoteTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    // MARK: Reuse Identifier
    static let reuseIdentifier = String(describing: NoteTableViewCell.self)
    
    // MARK: IBOutlets
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var shortDescriptionLabel: UILabel!
    
    // MARK: - Methods
    override func awakeFromNib() {
        super.awakeFromNib()
//        clearContents()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        clearContents()
    }
    
    func configureUI(with note: Note) {
        titleLabel.text = note.title
        dateLabel.text = note.date?.toLocalizedString("YYYY. MM. dd")
        shortDescriptionLabel.text = note.content
    }
    
    // MARK: Privates
    private func clearContents() {
        titleLabel.text = nil
        dateLabel.text = nil
        shortDescriptionLabel.text = nil
    }
}
