import SwiftUICore

public enum FJGemType {
    case emerald
    case diamond
    case ruby
    case sapphire
    
    var colors: [Color] {
        switch self {
        case .emerald:
            Color.emeraldShades
        case .diamond:
            Color.diamondShades
        case .ruby:
            Color.rubyShades
        case .sapphire:
            Color.sapphireShades
        }
    }
}
