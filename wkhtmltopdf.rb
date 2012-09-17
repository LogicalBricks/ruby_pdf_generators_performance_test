require 'rubygems'

input_file = './test/index.html'
output_file = './test-wk.pdf'
10.times do 
%x[wkhtmltopdf #{input_file} #{output_file}]
end
