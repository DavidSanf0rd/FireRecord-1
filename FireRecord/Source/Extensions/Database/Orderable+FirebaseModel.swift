//
//  Ordinable+FirebaseModel.swift
//  FireRecord
//
//  Created by Victor Alisson on 25/09/17.
//

import FirebaseCommunity

extension Orderable where Self: FirebaseModel {
    public static func orderByValue() -> Self.Type {
        Self.fireRecordQuery = Self.classPath.queryOrderedByValue()
        return self
    }
    public static func orderByKey() -> Self.Type {
        Self.fireRecordQuery = Self.classPath.queryOrderedByKey()
        return self
    }
}
