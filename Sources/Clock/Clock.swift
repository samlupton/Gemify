import SwiftUI

public struct Clock: View {
    
    var scale: Double
    private var centerX: Double { 0.5 * scale }
    private var centerY: Double { 0.525 * scale }
    
    public init(
        scale: Double = 1.0
    ) {
        self.scale = scale
    }
    
    public var body: some View {
        VStack {
            ZStack {
                leftLeg
                rightLeg
                topLeadingCircle
                topTrailingCircle
                clockCase
                clockFace
                innerClockFace
                noonDot
                threeDot
                sixDot
                nineDot
                hourHand
                minuteHand
                centerDot
            }
        }
        .frame(width: 1 * scale, height: 1 * scale)
    }
    
    private var topLeadingCircle: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0 * scale,
                    y: 0 * scale,
                    width: 0.4 * scale,
                    height: 0.4 * scale
                )
            )
        }
        .fill(Color.customYellow)
    }
    
    private var topTrailingCircle: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.60 * scale,
                    y: 0 * scale,
                    width: 0.4 * scale,
                    height: 0.4 * scale
                )
            )
        }
        .fill(Color.customYellow)
    }
    
    private var clockCase: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.025 * scale,
                    y: 0.05 * scale,
                    width: 0.95 * scale,
                    height: 0.95 * scale
                )
            )
        }
        .fill(Color.customBlue)
    }
    
    private var innerClockFace: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.25 * scale,
                    y: 0.275 * scale,
                    width: 0.5 * scale,
                    height: 0.5 * scale
                )
            )
        }
        .fill(Color.customGrayBlue)
    }
    
    private var clockFace: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.10 * scale,
                    y: 0.125 * scale,
                    width: 0.80 * scale,
                    height: 0.80 * scale
                )
            )
        }
        .fill(Color.customLight)
    }
    
    private var noonDot: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.475 * scale,
                    y: 0.15 * scale,
                    width: 0.05 * scale,
                    height: 0.05 * scale
                )
            )
        }
        .fill(Color.black)
    }
    
    private var threeDot: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.835 * scale,
                    y: 0.475 * scale,
                    width: 0.05 * scale,
                    height: 0.05 * scale
                )
            )
        }
        .fill(Color.black)
    }
    
    private var sixDot: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.475 * scale,
                    y: 0.855 * scale,
                    width: 0.05 * scale,
                    height: 0.05 * scale
                )
            )
        }
        .fill(Color.black)
    }
    
    private var nineDot: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: 0.125 * scale,
                    y: 0.475 * scale,
                    width: 0.05 * scale,
                    height: 0.05 * scale
                )
            )
        }
        .fill(Color.black)
    }
    
    private var leftLeg: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 0.08 * scale, y: 1 * scale),
                CGPoint(x: 0.2 * scale, y: 1 * scale),
                CGPoint(x: 0.3 * scale, y: 0.8 * scale),
                CGPoint(x: 0.3 * scale, y: 0.7 * scale)
            ])
        }
        .fill(Color.customTan)
    }
    
    private var rightLeg: some View {
        Path { path in
            path.addLines([
                CGPoint(x: 0.92 * scale, y: 1 * scale),
                CGPoint(x: 0.8 * scale, y: 1 * scale),
                CGPoint(x: 0.7 * scale, y: 0.8 * scale),
                CGPoint(x: 0.7 * scale, y: 0.7 * scale)
            ])
        }
        .fill(Color.customTan)
    }
    
    private var minuteHand: some View {
        Path { path in
            
            let handWidth = 0.015 * scale
            let halfWidth = handWidth / 2
            
            path.addLines([
                CGPoint(x: centerX - halfWidth, y: centerY),
                CGPoint(x: centerX - halfWidth, y: centerY - 0.28 * scale),
                CGPoint(x: centerX + halfWidth, y: centerY - 0.28 * scale),
                CGPoint(x: centerX + halfWidth, y: centerY)
            ])
        }
        .fill(Color.customTan)
    }

    private var hourHand: some View {
        Path { path in
            
            let handLength = 0.18 * scale
            let angle = 2 * Double.pi * (4.0 / 12.0)
            let handWidth = 0.015 * scale
            let halfWidth = handWidth / 2
            
            let endX = centerX + handLength * sin(angle)
            let endY = centerY - handLength * cos(angle)

            let perpX = -halfWidth * cos(angle)
            let perpY = -halfWidth * sin(angle)
            
            path.addLines([
                CGPoint(x: centerX - perpX, y: centerY - perpY),
                CGPoint(x: endX - perpX, y: endY - perpY),
                CGPoint(x: endX + perpX, y: endY + perpY),
                CGPoint(x: centerX + perpX, y: centerY + perpY)
            ])
        }
        .fill(Color.customTan)
    }
    
    private var centerDot: some View {
        Path { path in
            path.addEllipse(
                in: CGRect(
                    x: centerX - 0.015 * scale,
                    y: centerY - 0.015 * scale,
                    width: 0.03 * scale,
                    height: 0.03 * scale
                )
            )
        }
        .fill(Color.black)
    }
}

#Preview {
    VStack {
        HStack {
            Clock(scale: 100)
            Clock(scale: 100)
            Clock(scale: 100)
        }
        HStack {
            Clock(scale: 60)
            Clock(scale: 60)
            Clock(scale: 60)
        }
        HStack {
            Clock(scale: 20)
            Clock(scale: 20)
            Clock(scale: 20)
        }
        HStack {
            Clock(scale: 10)
            Clock(scale: 10)
            Clock(scale: 10)
        }
    }
}
