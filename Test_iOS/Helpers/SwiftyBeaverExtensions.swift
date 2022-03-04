//
//  SwiftyBeaverExtensions.swift
//  Test_iOS
//
//  Created by 台莉捺子 on 2022/03/03.
//

import SwiftyBeaver

let logger = SwiftyBeaver.self

extension SwiftyBeaver {
    
    static func debugPrint(
        _ message: @autoclosure () -> Any,
        _ file: String = #file,
        _ function: String = #function,
        line: Int = #line,
        context: Any? = nil,
        level: SwiftyBeaver.Level = .debug)
    {
        #if DEBUG
        switch level {
        case .verbose:
            logger.verbose(message(), file, function, line: line, context: context)
        case .debug:
            logger.debug(message(), file, function, line: line, context: context)
        case .info:
            logger.info(message(), file, function, line: line, context: context)
        case .warning:
            logger.warning(message(), file, function, line: line, context: context)
        default:
            logger.error(message(), file, function, line: line, context: context)
        }
        #endif
    }
    
}



