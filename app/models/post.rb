class Post < ApplicationRecord

    attr_accessor :title, :slug, :blurb, :content

    validates :body, :blurb, :title, :presence => true

    validates :blurb, :length => {:in => 10..255}, :format => {:with => /^\A[a-zA-Z\d ]+\z/, :message => "Only letters allowed", :multiline => true}



end
