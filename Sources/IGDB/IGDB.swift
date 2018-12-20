import Foundation

// TODO: Extract error from endpoint and make it more Result<Success, Failure> based

@available(OSX 10.12, *)
struct IGDB {
    var text = "Hello, World!"
    var test: Measurement<UnitTemperature>
}

public struct ReleaseDate {}
public struct FeedItem {}
public struct Game {}
public struct Platform {}
