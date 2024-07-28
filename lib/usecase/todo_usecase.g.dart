// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_usecase.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$findTodosUseCaseHash() => r'3233cf0de71289160594d6651236a5b1d3d0bbe7';

/// See also [findTodosUseCase].
@ProviderFor(findTodosUseCase)
final findTodosUseCaseProvider = AutoDisposeFutureProvider<List<Todo>>.internal(
  findTodosUseCase,
  name: r'findTodosUseCaseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$findTodosUseCaseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FindTodosUseCaseRef = AutoDisposeFutureProviderRef<List<Todo>>;
String _$addTodoUseCaseHash() => r'87f5400d482d77ff4ee0792ebc0da115515e9969';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [addTodoUseCase].
@ProviderFor(addTodoUseCase)
const addTodoUseCaseProvider = AddTodoUseCaseFamily();

/// See also [addTodoUseCase].
class AddTodoUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [addTodoUseCase].
  const AddTodoUseCaseFamily();

  /// See also [addTodoUseCase].
  AddTodoUseCaseProvider call(
    String content,
  ) {
    return AddTodoUseCaseProvider(
      content,
    );
  }

  @override
  AddTodoUseCaseProvider getProviderOverride(
    covariant AddTodoUseCaseProvider provider,
  ) {
    return call(
      provider.content,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'addTodoUseCaseProvider';
}

/// See also [addTodoUseCase].
class AddTodoUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [addTodoUseCase].
  AddTodoUseCaseProvider(
    String content,
  ) : this._internal(
          (ref) => addTodoUseCase(
            ref as AddTodoUseCaseRef,
            content,
          ),
          from: addTodoUseCaseProvider,
          name: r'addTodoUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$addTodoUseCaseHash,
          dependencies: AddTodoUseCaseFamily._dependencies,
          allTransitiveDependencies:
              AddTodoUseCaseFamily._allTransitiveDependencies,
          content: content,
        );

  AddTodoUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.content,
  }) : super.internal();

  final String content;

  @override
  Override overrideWith(
    FutureOr<void> Function(AddTodoUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AddTodoUseCaseProvider._internal(
        (ref) => create(ref as AddTodoUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        content: content,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _AddTodoUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AddTodoUseCaseProvider && other.content == content;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, content.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin AddTodoUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `content` of this provider.
  String get content;
}

class _AddTodoUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with AddTodoUseCaseRef {
  _AddTodoUseCaseProviderElement(super.provider);

  @override
  String get content => (origin as AddTodoUseCaseProvider).content;
}

String _$deleteTodoUseCaseHash() => r'84316c2786e994643dc256b917b74b889a9f43af';

/// See also [deleteTodoUseCase].
@ProviderFor(deleteTodoUseCase)
const deleteTodoUseCaseProvider = DeleteTodoUseCaseFamily();

/// See also [deleteTodoUseCase].
class DeleteTodoUseCaseFamily extends Family<AsyncValue<void>> {
  /// See also [deleteTodoUseCase].
  const DeleteTodoUseCaseFamily();

  /// See also [deleteTodoUseCase].
  DeleteTodoUseCaseProvider call(
    Todo todo,
  ) {
    return DeleteTodoUseCaseProvider(
      todo,
    );
  }

  @override
  DeleteTodoUseCaseProvider getProviderOverride(
    covariant DeleteTodoUseCaseProvider provider,
  ) {
    return call(
      provider.todo,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'deleteTodoUseCaseProvider';
}

/// See also [deleteTodoUseCase].
class DeleteTodoUseCaseProvider extends AutoDisposeFutureProvider<void> {
  /// See also [deleteTodoUseCase].
  DeleteTodoUseCaseProvider(
    Todo todo,
  ) : this._internal(
          (ref) => deleteTodoUseCase(
            ref as DeleteTodoUseCaseRef,
            todo,
          ),
          from: deleteTodoUseCaseProvider,
          name: r'deleteTodoUseCaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$deleteTodoUseCaseHash,
          dependencies: DeleteTodoUseCaseFamily._dependencies,
          allTransitiveDependencies:
              DeleteTodoUseCaseFamily._allTransitiveDependencies,
          todo: todo,
        );

  DeleteTodoUseCaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.todo,
  }) : super.internal();

  final Todo todo;

  @override
  Override overrideWith(
    FutureOr<void> Function(DeleteTodoUseCaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: DeleteTodoUseCaseProvider._internal(
        (ref) => create(ref as DeleteTodoUseCaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        todo: todo,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _DeleteTodoUseCaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is DeleteTodoUseCaseProvider && other.todo == todo;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, todo.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin DeleteTodoUseCaseRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `todo` of this provider.
  Todo get todo;
}

class _DeleteTodoUseCaseProviderElement
    extends AutoDisposeFutureProviderElement<void> with DeleteTodoUseCaseRef {
  _DeleteTodoUseCaseProviderElement(super.provider);

  @override
  Todo get todo => (origin as DeleteTodoUseCaseProvider).todo;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
