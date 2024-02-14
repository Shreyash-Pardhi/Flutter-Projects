//Login view exceptions
class UserNotFoundAuthException implements Exception {}

class InvalidCredentialAuthException implements Exception {}

class ChannelErrorAuthException implements Exception {}

//Register view exception
class EmailAlreadyInUseAuthException implements Exception {}

class WeakPasswordAuthException implements Exception {}

class InvalidEmailAuthException implements Exception {}

//generic exception
class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
