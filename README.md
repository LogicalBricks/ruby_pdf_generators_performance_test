ruby_pdf_generators_performance_test
====================================

Group of performance test using ERB and PDF generators.

The main goal is to get information to choice the best PDF generator for our project.

Tested PDF generators:
- wkhtmltopdf (executing the command)
- rtex (Using a latex layout)
- acts_as_flying_saucer (Without nailgun)
- acts_as_flying_saucer (With nailgun)

Testing with wkhtmltopdf
------------------------

In ubuntu you need to install

    sudo apt-get install wkhtmltopdf

