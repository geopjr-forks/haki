require "../src/layout"

builder = Layout::Transpiler::Builder.new
builder.build_from_document(document: "#{__DIR__}/dist/index.html")
