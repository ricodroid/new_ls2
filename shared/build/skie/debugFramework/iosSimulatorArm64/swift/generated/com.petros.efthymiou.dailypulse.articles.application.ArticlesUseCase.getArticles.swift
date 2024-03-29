public extension __Skie.class__DailyPulse_shared__com_petros_efthymiou_dailypulse_articles_application_ArticlesUseCase {

  @available(iOS 13, macOS 10.15, watchOS 6, tvOS 13, * )
  func getArticles(forceFetch: Swift.Bool) async throws -> [__Skie.class__DailyPulse_shared__com_petros_efthymiou_dailypulse_articles_application_Article] {
    return try await SwiftCoroutineDispatcher.dispatch {
      __Skie.file__shared____SkieSuspendWrappersKt.Skie_Suspend__5__getArticles(dispatchReceiver:forceFetch:suspendHandler:)(self, forceFetch, $0)
    }
  }

}
