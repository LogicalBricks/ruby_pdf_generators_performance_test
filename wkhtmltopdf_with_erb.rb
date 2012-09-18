# encoding: utf-8
require 'rubygems'
require 'erb'

template_file = './test/html/index.html.erb'
input_file = './test/html/index_generated.html'
output_file = './results/test-wk.pdf'
10.times do |i|
  @cliente = {
    'nombre'=> 'Pieles finas para caballero',
    'rfc'=> 'XBXX010101000',
    'direccion'=> 'PRINCIPAL 400 D CENTRO OAXACA DE JUAREZ OAXAC MÉXICO 68000',
    'lugar_y_fecha'=> 'Oaxaca de Juárez, Oaxaca a 15 de Septiembre de 2012' 
  }
	template_erb = File.read(template_file)
	template = ERB.new(template_erb)
	input_file_generated = File.new(input_file, "w")
	input_file_generated.write(template.result)
	input_file_generated.close
  %x[wkhtmltopdf #{input_file} ./results/test-#{i.to_s}.pdf] 
end
