import Foundation

public final class SkieSwiftOptionalMutableSharedFlow<T>: _Concurrency.AsyncSequence, Swift._ObjectiveCBridgeable {

    public typealias AsyncIterator = SkieSwiftFlowIterator<T?>

    public typealias Element = T?

    public typealias _ObjectiveCType = SkieKotlinOptionalMutableSharedFlow<Swift.AnyObject>

    internal let delegate: Skie.class__org_jetbrains_kotlinx_kotlinx_coroutines_core__kotlinx_coroutines_flow_MutableSharedFlow

    internal init(internal flow: Skie.class__org_jetbrains_kotlinx_kotlinx_coroutines_core__kotlinx_coroutines_flow_MutableSharedFlow) {
        delegate = flow
    }

    public var replayCache: [T?] {
        return delegate.replayCache as! [T?]
    }

    public func emit(value: T?) async throws {
        try await delegate.emit(value: value)
    }

    public func tryEmit(value: T?) -> Bool {
        return delegate.tryEmit(value: value)
    }

    public var subscriptionCount: SkieSwiftStateFlow<KotlinInt> {
        return bridgeSubscriptionCount(delegate.subscriptionCount)
    }

    public func resetReplayCache() {
        delegate.resetReplayCache()
    }

    public func makeAsyncIterator() -> SkieSwiftFlowIterator<T?> {
        return SkieSwiftFlowIterator(flow: delegate)
    }

    public func _bridgeToObjectiveC() -> _ObjectiveCType {
        return SkieKotlinOptionalMutableSharedFlow(delegate)
    }

    public static func _forceBridgeFromObjectiveC(_ source: _ObjectiveCType, result: inout SkieSwiftOptionalMutableSharedFlow<T>?) {
        result = fromObjectiveC(source)
    }

    public static func _conditionallyBridgeFromObjectiveC(_ source: _ObjectiveCType, result: inout SkieSwiftOptionalMutableSharedFlow<T>?) -> Bool {
        result = fromObjectiveC(source)
        return true
    }

    public static func _unconditionallyBridgeFromObjectiveC(_ source: _ObjectiveCType?) -> SkieSwiftOptionalMutableSharedFlow<T> {
        return fromObjectiveC(source)
    }

    private static func fromObjectiveC(_ source: _ObjectiveCType?) -> SkieSwiftOptionalMutableSharedFlow<T> {
        return SkieSwiftOptionalMutableSharedFlow(internal: source!)
    }
}
