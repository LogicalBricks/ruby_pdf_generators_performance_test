require 'rubygems'
require 'acts_as_flying_saucer'
require 'digest/sha1'

input_file = 'index.html.erb'
output_file = 'results/test-aafs2.pdf'

class Pdf
  include ActsAsFlyingSaucer::Controller
  acts_as_flying_saucer
  def generate_pdf(input_file_html,output_pdf)
    options = ActsAsFlyingSaucer::Config.options.merge({:url=>input_file_html,:pdf_file=>output_pdf})
    render_pdf(options)
    #ActsAsFlyingSaucer::Xhtml2Pdf.write_pdf(options)
  end
end

generator = Pdf.new
file = File.read(input_file)
generator.generate_pdf(input_file, output_file)



