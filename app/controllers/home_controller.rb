class HomeController < ApplicationController

def index
  @exhibitions = Scrubyt::Extractor.define do
    fetch          'http://www.lacma.org/art/ExhibCurrent.aspx'
        
    link_title "//td[@class='contentcolumn' and position()=2]/table/tbody/tr/td/table/tbody/tr[*]/td[2]/a[1]", :write_text => true do
      url 'href', :type => :attribute
      end
    end
  end
end