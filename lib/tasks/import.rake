require 'spreadsheet'

# The rake task to upload the bank excel file into the branch table
namespace :import do
   desc "Import Authors from Excel"
   task authors: :environment do 
     filename = File.join Rails.root, "author.xls"
     excel = Spreadsheet.open filename
     sheet = excel.worksheet 0
     sheet.each do |item|
       value = { name: item[0] }
       Author.create(value)
     end
   end
end