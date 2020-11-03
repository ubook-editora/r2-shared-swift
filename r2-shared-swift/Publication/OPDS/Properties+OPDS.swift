//
//  Properties+OPDS.swift
//  r2-shared-swift
//
//  Created by Mickaël Menu on 14.03.19.
//
//  Copyright 2019 Readium Foundation. All rights reserved.
//  Use of this source code is governed by a BSD-style license which is detailed
//  in the LICENSE file present in the project repository where this source code is maintained.
//

import Foundation

/// OPDS Link Properties Extension
/// https://drafts.opds.io/schema/properties.schema.json
extension Properties {
    
    /// Provides a hint about the expected number of items returned.
    public var numberOfItems: Int? {
        parsePositive(otherProperties["numberOfItems"])
    }
    
    /// The price of a publication is tied to its acquisition link.
    public var price: OPDSPrice? {
        try? OPDSPrice(json: otherProperties["price"], warnings: self)
    }
    
    /// Indirect acquisition provides a hint for the expected media type that will be acquired after
    /// additional steps.
    public var indirectAcquisitions: [OPDSAcquisition] {
        [OPDSAcquisition](json: otherProperties["indirectAcquisition"], warnings: self)
    }
    
    /// Library-specific features when a specific book is unavailable but provides a hold list.
    public var holds: OPDSHolds? {
        try? OPDSHolds(json: otherProperties["holds"], warnings: self)
    }
    
    /// Library-specific feature that contains information about the copies that a library has
    /// acquired.
    public var copies: OPDSCopies? {
        try? OPDSCopies(json: otherProperties["copies"], warnings: self)
    }
    
    /// Indicated the availability of a given resource.
    public var availability: OPDSAvailability? {
        try? OPDSAvailability(json: otherProperties["availability"], warnings: self)
    }
    
}
