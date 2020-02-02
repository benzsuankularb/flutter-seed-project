// In MobX_System architecture
// We usually don't need to wrap every dependencies services
// We can use it directly in Systems.
//
// We may use this service layer for some reasons:
//  1. We don't know the real implement yet
//  2. The service have multiple implementation.
class ExampleService {
  void doSomething() {}
}
