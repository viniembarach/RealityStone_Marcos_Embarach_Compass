require 'os'

def my_os
    if OS.windows?
        "Windows"
    elsif OS.linux?
        "Linux"
    elsif OS.mac?
        "Mac"
    else 
        "Não consegui identificador"
    end
end

puts "Meu PC possui #{OS.cpu_count} cores, é #{OS.bits} bits e o sistema operacional é #{my_os}!"
# PAra desinstalar a gem é so rodar: gem uninstall os
# gem list: Para listar as gems