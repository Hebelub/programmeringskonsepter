# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: schema.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import descriptor_pool as _descriptor_pool
from google.protobuf import symbol_database as _symbol_database
from google.protobuf.internal import builder as _builder
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor_pool.Default().AddSerializedFile(b'\n\x0cschema.proto\"N\n\x06Puzzle\x12\r\n\x05sizeX\x18\x01 \x01(\r\x12\r\n\x05sizeY\x18\x02 \x01(\r\x12\x12\n\nblackHints\x18\x03 \x03(\r\x12\x12\n\nwhiteHints\x18\x04 \x03(\r\"\"\n\x07Puzzles\x12\x17\n\x06puzzle\x18\x01 \x03(\x0b\x32\x07.Puzzle\"0\n\nConnection\x12\x11\n\tindexFrom\x18\x01 \x01(\r\x12\x0f\n\x07indexTo\x18\x02 \x01(\r\"E\n\x08Solution\x12\x17\n\x06puzzle\x18\x01 \x01(\x0b\x32\x07.Puzzle\x12 \n\x0b\x63onnections\x18\x02 \x03(\x0b\x32\x0b.Connection\"(\n\tSolutions\x12\x1b\n\x08solution\x18\x01 \x03(\x0b\x32\t.Solutionb\x06proto3')

_globals = globals()
_builder.BuildMessageAndEnumDescriptors(DESCRIPTOR, _globals)
_builder.BuildTopDescriptorsAndMessages(DESCRIPTOR, 'schema_pb2', _globals)
if _descriptor._USE_C_DESCRIPTORS == False:
  DESCRIPTOR._options = None
  _globals['_PUZZLE']._serialized_start=16
  _globals['_PUZZLE']._serialized_end=94
  _globals['_PUZZLES']._serialized_start=96
  _globals['_PUZZLES']._serialized_end=130
  _globals['_CONNECTION']._serialized_start=132
  _globals['_CONNECTION']._serialized_end=180
  _globals['_SOLUTION']._serialized_start=182
  _globals['_SOLUTION']._serialized_end=251
  _globals['_SOLUTIONS']._serialized_start=253
  _globals['_SOLUTIONS']._serialized_end=293
# @@protoc_insertion_point(module_scope)
