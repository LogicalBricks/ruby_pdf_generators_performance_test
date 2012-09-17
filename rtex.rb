require 'rubygems'

require 'open3'

textile = <<-EOF
h1. Titulo
*Enfasis*
_cursiva_
* Lista 1
** Lista 2

|_. Header |_. Header |_. Header |
| Cell 1 | Cell 2 | Cell 3 |
| Cell 1 | Cell 2 | Cell 3 |

EOF

command = Open3.capture2("rtex -f textile -l hola.tex.erb -o hola-tex.pdf", stdin_data: textile)


