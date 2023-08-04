# DependencyInjectionTest
This was made to better understand the purpose and uses of Dependency Injection.
This goes over the three main:
Constructor Injection - This is a type of DI where the dependencies of a class are passed into its constructor(init), so that when the class is instantiated the class's dependencies are initialized from the start.

Property Injection - This involves setting the dependencies of a class through public properties that are created after the class, this approach is more flexible as it can be allowed for optional or dynamic dependency assignment. However, in doing so you have to be careful about dependency management.

Method Injection - This is a type of DI where dependencies are passed as parameters when calling functions where they are needed, this is useful when a dependency is only required for a particular operation within the class.
