//
//  MapStudy.swift
//  LearningSwift
//
//  Created by Rodney Aiglstorfer on 9/16/22.
//

import SwiftUI
import MapKit

struct MapStudy: View {
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -31.968975, longitude: 115.849543), latitudinalMeters: 200, longitudinalMeters: 300)
    
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all)
            .ignoresSafeArea()
    }
}

struct MapStudy_Previews: PreviewProvider {
    static var previews: some View {
        MapStudy()
    }
}
