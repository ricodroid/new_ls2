public extension __Skie.class__DailyPulse_shared__com_petros_efthymiou_dailypulse_sources_application_SourcesUseCase {

  @available(iOS 13, macOS 10.15, watchOS 6, tvOS 13, * )
  func getSources() async throws -> [__Skie.class__DailyPulse_shared__com_petros_efthymiou_dailypulse_sources_application_Source] {
    return try await SwiftCoroutineDispatcher.dispatch {
      __Skie.file__shared____SkieSuspendWrappersKt.Skie_Suspend__6__getSources(dispatchReceiver:suspendHandler:)(self, $0)
    }
  }

}
