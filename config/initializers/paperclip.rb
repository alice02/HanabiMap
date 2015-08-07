# @content_typeとfileコマンドの結果が違うとアップロードできない。
# このオプションにfileコマンドが出力する結果を渡せばOK
Paperclip.options[:content_type_mappings] = { jpeg: 'image/jpeg' }