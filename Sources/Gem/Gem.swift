import SwiftUI

public struct Gem: View {
    
    let gem: GemType
    var scale: Double
    var yScale: Double
    var xScale: Double
    
    public init(
        gem: GemType = .diamond,
        scale: Double = 1.0,
        xScale: Double = 1.0,
        yScale: Double = 1.0
    ) {
        self.gem = gem
        self.scale = scale
        self.xScale = max(0, xScale)
        self.yScale = max(0, yScale)
    }
    
    public var body: some View {
        VStack {
            ZStack {
                lowerleft
                lowermiddle
                lowerright
                topleft
                topsecond
                topthird
                topfourth
                topright
            }
            .rotationEffect(Angle(degrees: 180))
        }
        .frame(width: 28 * xScale * scale, height: 23 * yScale * scale)
    }
    
    private var lowerleft: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale,
                CGPoint(x: 0 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale
            ])
        }
        .fill(gem.colors[5])
    }
    
    private var lowermiddle: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale,
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 20 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale
            ])
        }
        .fill(gem.colors[6])
    }
    
    private var lowerright: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale,
                CGPoint(x: 20 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 28 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 0 * yScale) * scale
            ])
        }
        .fill(gem.colors[7])
    }
    
    private var topleft: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 0 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 6 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 0 * xScale, y: 17 * yScale) * scale,
            ])
        }
        .fill(gem.colors[0])
    }
    
    private var topsecond: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 6 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
            ])
        }
        .fill(gem.colors[1])
    }
    
    private var topthird: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 14 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 20 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 8 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 23 * yScale) * scale,
            ])
        }
        .fill(gem.colors[2])
    }
    
    private var topfourth: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 14 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 20 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 22 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 14 * xScale, y: 23 * yScale) * scale,
            ])
        }
        .fill(gem.colors[3])
    }
    
    private var topright: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 22 * xScale, y: 23 * yScale) * scale,
                CGPoint(x: 28 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 20 * xScale, y: 17 * yScale) * scale,
                CGPoint(x: 22 * xScale, y: 23 * yScale) * scale,
            ])
        }
        .fill(gem.colors[4])
    }
}


#Preview {
    HStack {
        VStack {
            Gem(gem: .diamond, scale: 1.0)
            Gem(gem: .diamond, scale: 2.0)
            Gem(gem: .diamond, scale: 3.0)
            Gem(gem: .diamond, scale: 4.0)
        }
        VStack {
            Gem(gem: .ruby, scale: 1.0)
            Gem(gem: .ruby, scale: 2.0)
            Gem(gem: .ruby, scale: 3.0)
            Gem(gem: .ruby, scale: 4.0)
        }
    }
    HStack {
        VStack {
            Gem(gem: .sapphire, scale: 1.0)
            Gem(gem: .sapphire, scale: 2.0)
            Gem(gem: .sapphire, scale: 3.0)
            Gem(gem: .sapphire, scale: 4.0)
        }
        VStack {
            Gem(gem: .emerald, scale: 1.0)
            Gem(gem: .emerald, scale: 2.0)
            Gem(gem: .emerald, scale: 3.0)
            Gem(gem: .emerald, scale: 4.0)
        }
    }
    VStack {
        HStack(alignment: .center, spacing: 4) {
            Gem(gem: .emerald, scale: 0.55)
                .alignmentGuide(.firstTextBaseline) { d in d[.bottom]
                }
        }
    }
}

extension CGPoint {
    static func * (point: CGPoint, scalar: CGFloat) -> CGPoint {
        CGPoint(x: point.x * scalar, y: point.y * scalar)
    }

    static func *= (point: inout CGPoint, scalar: CGFloat) {
        point = point * scalar
    }
}
