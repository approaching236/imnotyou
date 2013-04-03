class Show < ActiveRecord::Base
  attr_accessible :cover,
                  :link,
                  :bands,
                  :date,
                  :venue,
                  :all_ages
  def all_ages?
    @all_ages
  end
end
