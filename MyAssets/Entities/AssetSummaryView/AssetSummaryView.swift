//
//  AssetSummaryView.swift
//  MyAssets
//
//  Created by 백래훈 on 2022/10/06.
//

import SwiftUI

struct AssetSummaryView: View {
    @EnvironmentObject var assetData: AssetSummaryData
    
    var assets: [Asset] {
        return assetData.assets
    }
    
    var body: some View {
        VStack(spacing: 20) {
            ForEach(assets) { asset in
                AssetSectionView(assetSection: asset)
            }
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
        }
    }
}

struct AssetSummaryView_Previews: PreviewProvider {
    static var previews: some View {
        AssetSummaryView()
            .environmentObject(AssetSummaryData())
            .background(Color.gray.opacity(0.2))
    }
}
