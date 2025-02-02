require 'zlib'

input_file = "Data/Scripts.rxdata"
output_file = "documentacao_scripts.txt"

scripts = File.open(input_file, "rb") { |f| Marshal.load(f) }

File.open(output_file, "w") do |file|
  scripts.each do |script|
    name = script[1] # Nome do script
    data = Zlib::Inflate.inflate(script[2]) # Descompactar

    file.puts "### #{name} ###\n\n#{data}\n\n"
    file.puts "--------------------------------------\n\n"
  end
end

puts "Documentação de scripts gerada em #{output_file}"
