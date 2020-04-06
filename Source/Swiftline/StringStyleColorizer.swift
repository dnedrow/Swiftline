//
//  StringStyleColorizer.swift
//  StringStyleColorizer
//
//  Created by Omar Abdelhafith on 31/10/2015.
//  Copyright © 2015 Omar Abdelhafith. All rights reserved.
//


public extension String {
    
    struct StringStyleColorizer {
        
        let string: String
        
        public var Reset: String {
            return Colorizer(string: string, color: Attributes.reset).description
        }
        
        public var Bold: String {
            return Colorizer(string: string, color: Attributes.bold).description
        }
        
        public var Italic: String {
            return Colorizer(string: string, color: Attributes.italic).description
        }
        
        public var Underline: String {
            return Colorizer(string: string, color: Attributes.underline).description
        }
        
        public var Inverse: String {
            return Colorizer(string: string, color: Attributes.inverse).description
        }
        
        public var Strikethrough: String {
            return Colorizer(string: string, color: Attributes.strikethrough).description
        }
        
        public var BoldOff: String {
            return Colorizer(string: string, color: Attributes.boldOff).description
        }
        
        public var ItalicOff: String {
            return Colorizer(string: string, color: Attributes.italicOff).description
        }
        
        public var UnderlineOff: String {
            return Colorizer(string: string, color: Attributes.underlineOff).description
        }
        
        public var InverseOff: String {
            return Colorizer(string: string, color: Attributes.inverseOff).description
        }
        
        public var StrikethroughOff: String {
            return Colorizer(string: string, color: Attributes.strikethroughOff).description
        }
    }
    
}
