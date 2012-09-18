require 'rubygems'

input_file = './test/html/index.html'
output_file = './results/test-wk.pdf'
10.times do 
%x[wkhtmltopdf #{input_file} #{output_file}]
end
