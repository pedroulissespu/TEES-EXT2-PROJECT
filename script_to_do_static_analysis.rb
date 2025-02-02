Dir.glob("Scripts/*.rb").each do |file|
  code = File.read(file)

  puts "Analisando #{file}..."

  if code =~ /\beval\s*\(/
    puts "⚠️  Possível uso de eval em #{file}"
  end

  if code.scan(/class\s+\w+/).size > 0 && code.scan(/def\s+\w+/).size == 0
    puts "⚠️  Classe sem métodos encontrada em #{file}"
  end

  globals = code.scan(/\$\w+/)
  unless globals.empty?
    puts "⚠️  Uso de variáveis globais em #{file}: #{globals.uniq.join(', ')}"
  end
end
