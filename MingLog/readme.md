### Struct

- XMessage：use to pack string and other field to be a message and put in writerCore
- WriterCore：define by self, writer message to destination
- XEncoder
- XMessageWriter
- XMessageWriterPool

### Design

- string format

  ```
  [level] date time codedetail messagebody
  ```

- use pool to decrease GC loading

- maybe use command pattern to refactor new message process
