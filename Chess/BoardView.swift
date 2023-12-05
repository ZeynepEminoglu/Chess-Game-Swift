//
//  BoardView.swift
//  Chess
//
//  Created by Zeynep Eminoglu on 05/12/2023.
//

import UIKit

class BoardView: UIView {
    
    
    
    let ratio: CGFloat = 0.8
    var originX: CGFloat = -10
    var originY: CGFloat = -10
    var cellSide: CGFloat = -10

    

    
    override func draw(_ rect: CGRect) {
        cellSide = bounds.width * ratio / 8
        originX = bounds.width * (1 - ratio) / 2
        originY = bounds.height * (1 - ratio) / 2
        drawBoard()
    }
    
    func drawBoard() {
        for row in 0..<4 {
            for col in 0..<4 {
                drawSquare(col: col * 2, row: row * 2, color: .white)
                drawSquare(col: 1 + col * 2, row: row * 2, color: .black)
                drawSquare(col: col * 2, row: 1 + row * 2, color: .black)
                drawSquare(col: 1 + col * 2, row: 1 +  row * 2, color: .white)
            }
            
        }
    }
    
    func drawSquare(col: Int,row :Int, color:UIColor){
        let path = UIBezierPath(rect: CGRect(x: originX + CGFloat(col) * cellSide, y: originY + CGFloat(row) * cellSide, width: cellSide, height: cellSide))
        color.setFill()
        path.fill()
    }


}
