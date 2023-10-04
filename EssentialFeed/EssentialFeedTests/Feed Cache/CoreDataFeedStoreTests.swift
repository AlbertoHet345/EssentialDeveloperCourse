//
//  CoreDataFeedStoreTests.swift
//  EssentialFeedTests
//
//  Created by Alberto Garcia Paul on 04/10/23.
//

import XCTest
import EssentialFeed

class CoreDataFeedStoreTests: XCTestCase, FailableFeedStore {

    func test_retrieve_deliversEmptyOnEmptyCache() throws {
        let sut = try makeSUT()

        assertThatRetrieveDeliversEmptyOnEmptyCache(on: sut)
    }
    
    func test_retrieve_hasNoSideEffectsOnEmptyCache() throws {
        let sut = try makeSUT()

        assertThatRetrieveHasNoSideEffectsOnEmptyCache(on: sut)
    }
    
    func test_retrieve_deliversFoundValuesOnNonEmptyCache() throws {
        let sut = try makeSUT()

        assertThatRetrieveDeliversFoundValuesOnNonEmptyCache(on: sut)
    }
    
    func test_retrieve_hasNoSideEffectsOnNonEmptyCache() throws {
        let sut = try makeSUT()

        assertThatRetrieveHasNoSideEffectsOnNonEmptyCache(on: sut)
    }
    
    func test_retrieve_deliversFailureOnRetrievalError() throws {
        let stub = NSManagedObjectContext.alwaysFailingFetchStub()
        stub.startIntercepting()

        let sut = try makeSUT()

        assertThatRetrieveDeliversFailureOnRetrievalError(on: sut)
    }
    
    func test_retrieve_hasNoSideEffectsOnFailure() throws {
        let stub = NSManagedObjectContext.alwaysFailingFetchStub()
        stub.startIntercepting()

        let sut = try makeSUT()

        assertThatRetrieveHasNoSideEffectsOnFailure(on: sut)
    }
    
    func test_insert_deliversNoErrorOnEmptyCache() throws {
        let sut = try makeSUT()

        assertThatInsertDeliversNoErrorOnEmptyCache(on: sut)
    }
    
    func test_insert_deliversNoErrorOnNonEmptyCache() throws {
        
    }
    
    func test_insert_overridesPreviouslyInsertedCacheValues() throws {
        
    }
    
    func test_insert_deliversErrorOnInsertionError() throws {
        
    }
    
    func test_insert_hasNoSideEffectsOnInsertionError() throws {
        
    }
    
    func test_delete_deliversNoErrorOnEmptyCache() throws {
        
    }
    
    func test_delete_hasNoSideEffectsOnEmptyCache() throws {
        
    }
    
    func test_delete_deliversNoErrorOnNonEmptyCache() throws {
        
    }
    
    func test_delete_emptiesPreviouslyInsertedCache() throws {
        
    }
    
    func test_delete_deliversErrorOnDeletionError() throws {
        
    }
    
    func test_delete_hasNoSideEffectsOnDeletionError() throws {
        
    }
    
    func test_storeSideEffects_runSerially() throws {
        
    }
    
    // MARK: - Helpers
    
    private func makeSUT(file: StaticString = #filePath, line: UInt = #line) throws -> FeedStore {
        let sut = try CoreDataFeedStore(storeURL: inMemoryStoreURL())
        trackForMemoryLeaks(sut, file: file, line: line)
        return sut
    }

    private func inMemoryStoreURL() -> URL {
        URL(fileURLWithPath: "/dev/null")
            .appendingPathComponent("\(type(of: self)).store")
    }
}
