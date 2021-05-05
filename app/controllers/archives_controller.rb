class ArchivesController < ApplicationController
  def index
    # group by day
    @entries = Entry.all.group_by(&:day)
  end
end
