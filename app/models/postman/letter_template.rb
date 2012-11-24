module Postman
  class LetterTemplate < ActiveRecord::Base
    attr_accessible :html_content, :name, :text_content
    validates :name, :html_content, :text_content, presence: true

    def letter_variables
      [
       html_content.to_s.
       scan(/{{?[^}}]*}}/).map{|j| j.gsub(/}}|{{/, '').gsub(/#|\^|\/|=|!|<|>|&|\{/, '') }.uniq.select{ |j| j !~ /^attachments/},

       text_content.to_s.
       scan(/{{?[^}}]*}}/).map{|j| j.gsub(/}}|{{/, '').gsub(/#|\^|\/|=|!|<|>|&|\{/, '') }.uniq.select{ |j| j !~ /^attachments/}
      ].flatten.uniq
    end

  end
end
