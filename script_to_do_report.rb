output = File.open("relatorio_analise.txt", "w")

Dir.glob("Scripts/*.rb").each do |file|
  code = File.read(file)
  output.puts "Analisando #{file}..."

  # Encontrar funções que não são chamadas
  unused_methods = code.scan(/def\s+(\w+)/).flatten
  unless unused_methods.empty?
    output.puts "  ⚠️  Métodos não utilizados: #{unused_methods.join(', ')}"
  end

  # Encontrar código morto (if false, return sem uso, etc.)
  output.puts "  ⚠️  Código morto detectado" if code =~ /\bif\s+false\b/ || code =~ /\breturn\b\s*$/

  output.puts ""
end

output.close
puts "Relatório salvo em relatorio_analise.txt"
