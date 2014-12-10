// Generated by the protocol buffer compiler.  DO NOT EDIT!

import Foundation
import ProtocolBuffers

internal var TestOptimizedForSizetestExtension:ConcreateExtensionField {
   get {
       return UnittestOptimizeForRoot.sharedInstance.TestOptimizedForSizetestExtensionStatic
   }
}
internal var TestOptimizedForSizetestExtension2:ConcreateExtensionField {
   get {
       return UnittestOptimizeForRoot.sharedInstance.TestOptimizedForSizetestExtension2Static
   }
}
internal struct UnittestOptimizeForRoot {
  internal static var sharedInstance : UnittestOptimizeForRoot {
   struct Static {
       static let instance : UnittestOptimizeForRoot = UnittestOptimizeForRoot()
   }
   return Static.instance
  }
  var TestOptimizedForSizetestExtensionStatic:ConcreateExtensionField
  var TestOptimizedForSizetestExtension2Static:ConcreateExtensionField
  var extensionRegistry:ExtensionRegistry

  init() {
    TestOptimizedForSizetestExtensionStatic = ConcreateExtensionField(type:ExtensionType.ExtensionTypeInt32, extendedClass:TestOptimizedForSize.self, fieldNumber: 1234, defaultValue:Int32(0), messageOrGroupClass:Int32.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
    TestOptimizedForSizetestExtension2Static = ConcreateExtensionField(type:ExtensionType.ExtensionTypeMessage, extendedClass:TestOptimizedForSize.self, fieldNumber: 1235, defaultValue:TestRequiredOptimizedForSize(), messageOrGroupClass:TestRequiredOptimizedForSize.self, isRepeated:false, isPacked:false, isMessageSetWireFormat:false)
    extensionRegistry = ExtensionRegistry()
    registerAllExtensions(extensionRegistry)
    UnittestRoot.sharedInstance.registerAllExtensions(extensionRegistry)
  }
  internal func registerAllExtensions(registry:ExtensionRegistry) {
    registry.addExtension(TestOptimizedForSizetestExtensionStatic)
    registry.addExtension(TestOptimizedForSizetestExtension2Static)
  }
}

internal func == (lhs: TestOptimizedForSize, rhs: TestOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasI == rhs.hasI) && (!lhs.hasI || lhs.i == rhs.i)
  fieldCheck = fieldCheck && (lhs.hasIntegerField == rhs.hasIntegerField) && (!lhs.hasIntegerField || lhs.integerField == rhs.integerField)
  fieldCheck = fieldCheck && (lhs.hasStringField == rhs.hasStringField) && (!lhs.hasStringField || lhs.stringField == rhs.stringField)
  fieldCheck = fieldCheck && (lhs.hasMsg == rhs.hasMsg) && (!lhs.hasMsg || lhs.msg == rhs.msg)
  fieldCheck = fieldCheck && lhs.isEqualExtensionsInOther(rhs, startInclusive:Int32(1000), endExclusive:Int32(536870912))
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal func == (lhs: TestRequiredOptimizedForSize, rhs: TestRequiredOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasX == rhs.hasX) && (!lhs.hasX || lhs.x == rhs.x)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

internal func == (lhs: TestOptionalOptimizedForSize, rhs: TestOptionalOptimizedForSize) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasO == rhs.hasO) && (!lhs.hasO || lhs.o == rhs.o)
  return (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
}

final internal class TestOptimizedForSize : ExtendableMessage {


  //OneOf declaration start

  internal enum Foo {
    case FooOneOfNotSet

    internal func checkOneOfIsSet() -> Bool {
         switch self {
         case .FooOneOfNotSet:
              return false
         default:
              return true
         }
    }
    case IntegerField(Int32)

    internal static func getIntegerField(value:Foo) ->Int32? {
         switch value {
         case .IntegerField(let enumValue):
              return enumValue
         default:
              return nil
         }
    }
    case StringField(String)

    internal static func getStringField(value:Foo) ->String? {
         switch value {
         case .StringField(let enumValue):
              return enumValue
         default:
              return nil
         }
    }
  }



  //OneOf declaration end

  private var storageFoo:TestOptimizedForSize.Foo =  TestOptimizedForSize.Foo.FooOneOfNotSet
  private(set) var hasI:Bool = false
  private(set) var i:Int32 = Int32(0)

  private(set) var hasMsg:Bool = false
  private(set) var msg:ForeignMessage = ForeignMessage()
  private(set) var hasIntegerField:Bool {
        get {
             if TestOptimizedForSize.Foo.getIntegerField(storageFoo) == nil {
                 return false
             }
             return true
        }
        set(newValue) {
        }
  }
  private(set) var integerField:Int32!{
       get {
            return TestOptimizedForSize.Foo.getIntegerField(storageFoo)
       }
       set (newvalue) {
            storageFoo = TestOptimizedForSize.Foo.IntegerField(newvalue)
       }
  }
  private(set) var hasStringField:Bool {
        get {
             if TestOptimizedForSize.Foo.getStringField(storageFoo) == nil {
                 return false
             }
             return true
        }
        set(newValue) {
        }
  }
  private(set) var stringField:String!{
       get {
            return TestOptimizedForSize.Foo.getStringField(storageFoo)
       }
       set (newvalue) {
            storageFoo = TestOptimizedForSize.Foo.StringField(newvalue)
       }
  }
  internal class func testExtension() -> ConcreateExtensionField {
       return TestOptimizedForSizetestExtension
  }
  internal class func testExtension2() -> ConcreateExtensionField {
       return TestOptimizedForSizetestExtension2
  }
  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !extensionsAreInitialized() {
     return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasI {
      output.writeInt32(1, value:i)
    }
    if hasIntegerField {
      output.writeInt32(2, value:integerField)
    }
    if hasStringField {
      output.writeString(3, value:stringField)
    }
    if hasMsg {
      output.writeMessage(19, value:msg)
    }
    writeExtensionsToCodedOutputStream(output, startInclusive:Int32(1000), endExclusive:Int32(536870912))
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasI {
      size += WireFormat.computeInt32Size(1, value:i)
    }
    if hasIntegerField {
      size += WireFormat.computeInt32Size(2, value:integerField)
    }
    if hasStringField {
      size += WireFormat.computeStringSize(3, value:stringField)
    }
    if hasMsg {
      size += WireFormat.computeMessageSize(19, value:msg)
    }
    size += extensionsSerializedSize()
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  internal class func parseFromData(data:NSData) -> TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromData(data).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestOptimizedForSize {
    return TestOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> TestOptimizedForSizeBuilder {
    return TestOptimizedForSize.classBuilder() as TestOptimizedForSizeBuilder
  }
  internal func builder() -> TestOptimizedForSizeBuilder {
    return classBuilder() as TestOptimizedForSizeBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return TestOptimizedForSizeBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return TestOptimizedForSize.builder()
  }
  internal func toBuilder() -> TestOptimizedForSizeBuilder {
    return TestOptimizedForSize.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:TestOptimizedForSize) -> TestOptimizedForSizeBuilder {
    return TestOptimizedForSize.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasI {
      output += "\(indent) i: \(i) \n"
    }
    if hasIntegerField {
      output += "\(indent) integerField: \(integerField) \n"
    }
    if hasStringField {
      output += "\(indent) stringField: \(stringField) \n"
    }
    if hasMsg {
      output += "\(indent) msg {\n"
      msg.writeDescriptionTo(&output, indent:"\(indent)  ")
      output += "\(indent) }\n"
    }
    writeExtensionDescription(&output, startInclusive:Int32(1000), endExclusive:Int32(536870912), indent:indent)
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasI {
             hashCode = (hashCode &* 31) &+ i.hashValue
          }
          if hasIntegerField {
             hashCode = (hashCode &* 31) &+ integerField.hashValue
          }
          if hasStringField {
             hashCode = (hashCode &* 31) &+ stringField.hashValue
          }
          if hasMsg {
            hashCode = (hashCode &* 31) &+ msg.hashValue
          }
          hashCode = (hashCode &* 31) &+ Int(hashExtensionsFrom(Int32(1000), endExclusive:Int32(536870912)))
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "TestOptimizedForSize"
  }
  override internal func className() -> String {
      return "TestOptimizedForSize"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return TestOptimizedForSize.self
  }


  //Meta information declaration end

}

final internal class TestOptimizedForSizeBuilder : ExtendableMessageBuilder {
  private var builderResult:TestOptimizedForSize

  required override internal init () {
     builderResult = TestOptimizedForSize()
     super.init()
  }
  var hasI:Bool {
       get {
            return builderResult.hasI
       }
  }
  var i:Int32 {
       get {
            return builderResult.i
       }
       set (value) {
           builderResult.hasI = true
           builderResult.i = value
       }
  }
  internal func clearI() -> TestOptimizedForSizeBuilder{
       builderResult.hasI = false
       builderResult.i = Int32(0)
       return self
  }
  var hasMsg:Bool {
       get {
           return builderResult.hasMsg
       }
  }
  var msg:ForeignMessage {
       get {
           return builderResult.msg
       }
       set (value) {
           builderResult.hasMsg = true
           builderResult.msg = value
       }
  }
  internal func setMsgBuilder(builderForValue:ForeignMessageBuilder) -> TestOptimizedForSizeBuilder {
    msg = builderForValue.build()
    return self
  }
  internal func mergeMsg(value:ForeignMessage) -> TestOptimizedForSizeBuilder {
    if (builderResult.hasMsg) {
      builderResult.msg = ForeignMessage.builderWithPrototype(builderResult.msg).mergeFrom(value).buildPartial()
    } else {
      builderResult.msg = value
    }
    builderResult.hasMsg = true
    return self
  }
  internal func clearMsg() -> TestOptimizedForSizeBuilder {
    builderResult.hasMsg = false
    builderResult.msg = ForeignMessage()
    return self
  }
  var hasIntegerField:Bool {
       get {
            return builderResult.hasIntegerField
       }
  }
  var integerField:Int32 {
       get {
            return builderResult.integerField
       }
       set (value) {
           builderResult.hasIntegerField = true
           builderResult.integerField = value
       }
  }
  internal func clearIntegerField() -> TestOptimizedForSizeBuilder{
       builderResult.hasIntegerField = false
       builderResult.integerField = Int32(0)
       return self
  }
  var hasStringField:Bool {
       get {
            return builderResult.hasStringField
       }
  }
  var stringField:String {
       get {
            return builderResult.stringField
       }
       set (value) {
           builderResult.hasStringField = true
           builderResult.stringField = value
       }
  }
  internal func clearStringField() -> TestOptimizedForSizeBuilder{
       builderResult.hasStringField = false
       builderResult.stringField = ""
       return self
  }
  override internal var internalGetResult:ExtendableMessage {
       get {
           return builderResult
       }
  }
  internal override func clear() -> TestOptimizedForSizeBuilder {
    builderResult = TestOptimizedForSize()
    return self
  }
  internal override func clone() -> TestOptimizedForSizeBuilder {
    return TestOptimizedForSize.builderWithPrototype(builderResult)
  }
  internal override func build() -> TestOptimizedForSize {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> TestOptimizedForSize {
    var returnMe:TestOptimizedForSize = builderResult
    return returnMe
  }
  internal func mergeFrom(other:TestOptimizedForSize) -> TestOptimizedForSizeBuilder {
    if (other == TestOptimizedForSize()) {
     return self
    }
    if other.hasI {
         i = other.i
    }
    if (other.hasMsg) {
        mergeMsg(other.msg)
    }
    if other.hasIntegerField {
         integerField = other.integerField
    }
    if other.hasStringField {
         stringField = other.stringField
    }
    mergeExtensionFields(other)
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->TestOptimizedForSizeBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestOptimizedForSizeBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        i = input.readInt32()

      case 16 :
        integerField = input.readInt32()

      case 26 :
        stringField = input.readString()

      case 154 :
        var subBuilder:ForeignMessageBuilder = ForeignMessage.builder()
        if hasMsg {
          subBuilder.mergeFrom(msg)
        }
        input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
        msg = subBuilder.buildPartial()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

final internal class TestRequiredOptimizedForSize : GeneratedMessage {
  private(set) var hasX:Bool = false
  private(set) var x:Int32 = Int32(0)

  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if !hasX {
      return false
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasX {
      output.writeInt32(1, value:x)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasX {
      size += WireFormat.computeInt32Size(1, value:x)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  internal class func parseFromData(data:NSData) -> TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromData(data).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestRequiredOptimizedForSize {
    return TestRequiredOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> TestRequiredOptimizedForSizeBuilder {
    return TestRequiredOptimizedForSize.classBuilder() as TestRequiredOptimizedForSizeBuilder
  }
  internal func builder() -> TestRequiredOptimizedForSizeBuilder {
    return classBuilder() as TestRequiredOptimizedForSizeBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return TestRequiredOptimizedForSizeBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return TestRequiredOptimizedForSize.builder()
  }
  internal func toBuilder() -> TestRequiredOptimizedForSizeBuilder {
    return TestRequiredOptimizedForSize.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:TestRequiredOptimizedForSize) -> TestRequiredOptimizedForSizeBuilder {
    return TestRequiredOptimizedForSize.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasX {
      output += "\(indent) x: \(x) \n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasX {
             hashCode = (hashCode &* 31) &+ x.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "TestRequiredOptimizedForSize"
  }
  override internal func className() -> String {
      return "TestRequiredOptimizedForSize"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return TestRequiredOptimizedForSize.self
  }


  //Meta information declaration end

}

final internal class TestRequiredOptimizedForSizeBuilder : GeneratedMessageBuilder {
  private var builderResult:TestRequiredOptimizedForSize

  required override internal init () {
     builderResult = TestRequiredOptimizedForSize()
     super.init()
  }
  var hasX:Bool {
       get {
            return builderResult.hasX
       }
  }
  var x:Int32 {
       get {
            return builderResult.x
       }
       set (value) {
           builderResult.hasX = true
           builderResult.x = value
       }
  }
  internal func clearX() -> TestRequiredOptimizedForSizeBuilder{
       builderResult.hasX = false
       builderResult.x = Int32(0)
       return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> TestRequiredOptimizedForSizeBuilder {
    builderResult = TestRequiredOptimizedForSize()
    return self
  }
  internal override func clone() -> TestRequiredOptimizedForSizeBuilder {
    return TestRequiredOptimizedForSize.builderWithPrototype(builderResult)
  }
  internal override func build() -> TestRequiredOptimizedForSize {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> TestRequiredOptimizedForSize {
    var returnMe:TestRequiredOptimizedForSize = builderResult
    return returnMe
  }
  internal func mergeFrom(other:TestRequiredOptimizedForSize) -> TestRequiredOptimizedForSizeBuilder {
    if (other == TestRequiredOptimizedForSize()) {
     return self
    }
    if other.hasX {
         x = other.x
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->TestRequiredOptimizedForSizeBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestRequiredOptimizedForSizeBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 8 :
        x = input.readInt32()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}

final internal class TestOptionalOptimizedForSize : GeneratedMessage {
  private(set) var hasO:Bool = false
  private(set) var o:TestRequiredOptimizedForSize = TestRequiredOptimizedForSize()
  required internal init() {
       super.init()
  }
  override internal func isInitialized() -> Bool {
    if hasO {
     if !o.isInitialized() {
       return false
     }
    }
   return true
  }
  override internal func writeToCodedOutputStream(output:CodedOutputStream) {
    if hasO {
      output.writeMessage(1, value:o)
    }
    unknownFields.writeToCodedOutputStream(output)
  }
  override internal func serializedSize() -> Int32 {
    var size:Int32 = memoizedSerializedSize
    if size != -1 {
     return size
    }

    size = 0
    if hasO {
      size += WireFormat.computeMessageSize(1, value:o)
    }
    size += unknownFields.serializedSize()
    memoizedSerializedSize = size
    return size
  }
  internal class func parseFromData(data:NSData) -> TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromData(data).build()
  }
  internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) -> TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromInputStream(input:NSInputStream) -> TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromInputStream(input).build()
  }
  internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) ->TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream) -> TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromCodedInputStream(input).build()
  }
  internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestOptionalOptimizedForSize {
    return TestOptionalOptimizedForSize.builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
  }
  internal class func builder() -> TestOptionalOptimizedForSizeBuilder {
    return TestOptionalOptimizedForSize.classBuilder() as TestOptionalOptimizedForSizeBuilder
  }
  internal func builder() -> TestOptionalOptimizedForSizeBuilder {
    return classBuilder() as TestOptionalOptimizedForSizeBuilder
  }
  internal override class func classBuilder() -> MessageBuilder {
    return TestOptionalOptimizedForSizeBuilder()
  }
  internal override func classBuilder() -> MessageBuilder {
    return TestOptionalOptimizedForSize.builder()
  }
  internal func toBuilder() -> TestOptionalOptimizedForSizeBuilder {
    return TestOptionalOptimizedForSize.builderWithPrototype(self)
  }
  internal class func builderWithPrototype(prototype:TestOptionalOptimizedForSize) -> TestOptionalOptimizedForSizeBuilder {
    return TestOptionalOptimizedForSize.builder().mergeFrom(prototype)
  }
  override internal func writeDescriptionTo(inout output:String, indent:String) {
    if hasO {
      output += "\(indent) o {\n"
      o.writeDescriptionTo(&output, indent:"\(indent)  ")
      output += "\(indent) }\n"
    }
    unknownFields.writeDescriptionTo(&output, indent:indent)
  }
  override internal var hashValue:Int {
      get {
          var hashCode:Int = 7
          if hasO {
            hashCode = (hashCode &* 31) &+ o.hashValue
          }
          hashCode = (hashCode &* 31) &+  unknownFields.hashValue
          return hashCode
      }
  }


  //Meta information declaration start

  override internal class func className() -> String {
      return "TestOptionalOptimizedForSize"
  }
  override internal func className() -> String {
      return "TestOptionalOptimizedForSize"
  }
  override internal func classMetaType() -> GeneratedMessage.Type {
      return TestOptionalOptimizedForSize.self
  }


  //Meta information declaration end

}

final internal class TestOptionalOptimizedForSizeBuilder : GeneratedMessageBuilder {
  private var builderResult:TestOptionalOptimizedForSize

  required override internal init () {
     builderResult = TestOptionalOptimizedForSize()
     super.init()
  }
  var hasO:Bool {
       get {
           return builderResult.hasO
       }
  }
  var o:TestRequiredOptimizedForSize {
       get {
           return builderResult.o
       }
       set (value) {
           builderResult.hasO = true
           builderResult.o = value
       }
  }
  internal func setOBuilder(builderForValue:TestRequiredOptimizedForSizeBuilder) -> TestOptionalOptimizedForSizeBuilder {
    o = builderForValue.build()
    return self
  }
  internal func mergeO(value:TestRequiredOptimizedForSize) -> TestOptionalOptimizedForSizeBuilder {
    if (builderResult.hasO) {
      builderResult.o = TestRequiredOptimizedForSize.builderWithPrototype(builderResult.o).mergeFrom(value).buildPartial()
    } else {
      builderResult.o = value
    }
    builderResult.hasO = true
    return self
  }
  internal func clearO() -> TestOptionalOptimizedForSizeBuilder {
    builderResult.hasO = false
    builderResult.o = TestRequiredOptimizedForSize()
    return self
  }
  override internal var internalGetResult:GeneratedMessage {
       get {
          return builderResult
       }
  }
  internal override func clear() -> TestOptionalOptimizedForSizeBuilder {
    builderResult = TestOptionalOptimizedForSize()
    return self
  }
  internal override func clone() -> TestOptionalOptimizedForSizeBuilder {
    return TestOptionalOptimizedForSize.builderWithPrototype(builderResult)
  }
  internal override func build() -> TestOptionalOptimizedForSize {
       checkInitialized()
       return buildPartial()
  }
  internal func buildPartial() -> TestOptionalOptimizedForSize {
    var returnMe:TestOptionalOptimizedForSize = builderResult
    return returnMe
  }
  internal func mergeFrom(other:TestOptionalOptimizedForSize) -> TestOptionalOptimizedForSizeBuilder {
    if (other == TestOptionalOptimizedForSize()) {
     return self
    }
    if (other.hasO) {
        mergeO(other.o)
    }
    mergeUnknownFields(other.unknownFields)
    return self
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream) ->TestOptionalOptimizedForSizeBuilder {
       return mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
  }
  internal override func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) -> TestOptionalOptimizedForSizeBuilder {
    var unknownFieldsBuilder:UnknownFieldSetBuilder = UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
    while (true) {
      var tag = input.readTag()
      switch tag {
      case 0: 
        self.unknownFields = unknownFieldsBuilder.build()
        return self

      case 10 :
        var subBuilder:TestRequiredOptimizedForSizeBuilder = TestRequiredOptimizedForSize.builder()
        if hasO {
          subBuilder.mergeFrom(o)
        }
        input.readMessage(subBuilder, extensionRegistry:extensionRegistry)
        o = subBuilder.buildPartial()

      default:
        if (!parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag)) {
           unknownFields = unknownFieldsBuilder.build()
           return self
        }
      }
    }
  }
}


// @@protoc_insertion_point(global_scope)
