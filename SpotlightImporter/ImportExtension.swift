//
//  ImportExtension.swift
//  SpotlightImporter
//
//  Created by 黄俊亮 on 2021-11-23.
//

import CoreSpotlight

@available(macOSApplicationExtension 12.0, *)
class ImportExtension: CSImportExtension {
    
    override func update(_ attributes: CSSearchableItemAttributeSet, forFileAt: URL) throws {
        // Add attributes that describe the file at contentURL.
        attributes.contentType = "public.image"
        attributes.title = "Example JPEG XL"
        attributes.pixelWidth = 800;
        attributes.pixelCount = 800;
        attributes.colorSpace = "RGB";
        attributes.isoSpeed = 800;
        NSLog("JXL SpotlightImporter: %@", attributes);
        // Throw an error with details on failure.
    }
    
}
