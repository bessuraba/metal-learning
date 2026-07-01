//
//  Quad.swift
//  Vertex
//
//  Created by Slava Varda on 30.6.26..
//

import MetalKit

struct Quad {
    var verticies: [Float] = [
        -1, 1, 0,
        1, 1, 0,
        -1, -1, 0,
        1, -1, 0
    ]
    
    var indicies: [UInt16] = [
        0, 3, 2,
        0, 1, 3
    ]
    
    var colors: [simd_float3] = [
        [1, 0, 0],
        [0, 1, 0],
        [0, 0, 1],
        [1, 1, 0]
    ]
    let vertexBuffer: MTLBuffer
    let indexBuffer: MTLBuffer
    let colorBuffer: MTLBuffer
    
    init(device: MTLDevice, scale: Float = 1) {
        verticies = verticies.map {
            $0 * scale
        }
        guard let vertexBuffer = device.makeBuffer(bytes: &verticies, length: MemoryLayout<Float>.stride * verticies.count, options: []) else {
            fatalError("Unable to create quad vertex buffer")
        }
        self.vertexBuffer = vertexBuffer
        guard let indexBuffer = device.makeBuffer(bytes: &indicies, length: MemoryLayout<UInt16>.stride * indicies.count, options: []) else {
            fatalError("Unable to create quad index buffer")
        }
        self.indexBuffer = indexBuffer
        guard let colorBuffer = device.makeBuffer(bytes: &colors, length: MemoryLayout<simd_float3>.stride * colors.count, options: []) else {
            fatalError("Unable to create quad color buffer")
        }
        self.colorBuffer = colorBuffer
    }
}
