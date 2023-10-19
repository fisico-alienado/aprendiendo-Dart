void main() {
  
  emitNumbers().listen( (value) {
    print('Stream value: $value');
  });
  
}

// Async* - es una forma corta de convertir la función tradicional en una función asíncrona, que indica que se devuelve un dato tipo Stream
Stream<int> emitNumbers() async* {
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }

}