require 'zlib'
require 'fileutils'

# Pastas de entrada e saída
input_folder = "Data"
output_folder = "Scripts"

# Criar a pasta de saída se não existir
FileUtils.mkdir_p(output_folder)

# Percorre todos os arquivos .rxdata
Dir.glob("#{input_folder}/*.rxdata").each do |file_path|
  file_name = File.basename(file_path, ".rxdata")
  output_file = "#{output_folder}/#{file_name}.rb"

  begin
    # Ler e carregar os dados do arquivo
    data = File.open(file_path, "rb") { |f| Marshal.load(f) }

    # Se for Scripts.rxdata, descompacta e salva os scripts individualmente
    if file_name == "Scripts"
      scripts_folder = "#{output_folder}/Scripts"
      FileUtils.mkdir_p(scripts_folder)

      data.each do |script|
        script_name = script[1].gsub(/[\/:*?"<>|]/, '_') # Evita caracteres inválidos
        script_content = Zlib::Inflate.inflate(script[2]) # Descompacta

        File.write("#{scripts_folder}/#{script_name}.rb", script_content)
      end

      puts "✅ Scripts extraídos para #{scripts_folder}"

    else
      # Salva os outros arquivos em formato Ruby legível
      File.open(output_file, "w") do |f|
        f.puts "# Arquivo: #{file_name}.rxdata"
        f.puts "# ============================"
        f.puts data.inspect
      end

      puts "📁 Arquivo #{file_name}.rxdata convertido para #{output_file}"
    end

  rescue => e
    puts "⚠️ Erro ao processar #{file_name}: #{e.message}"
  end
end

puts "📦 Extração concluída! Os arquivos estão na pasta '#{output_folder}'"
