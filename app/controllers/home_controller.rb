class HomeController < ApplicationController

def index
  @google_data = Scrubyt::Extractor.define do
    fetch          'http://www.lacma.org/art/ExhibCurrent.aspx'
        
    link "//td[@class='contentcolumn' and position()=2]/table/tbody/tr/td/table/tbody/tr[*]/td[2]" do
    end
  end
  @google_data.to_xml.write($stdout, 1)
end

end