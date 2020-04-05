class RecordsController < ApplicationController

    def create
        Record.create(tag_id: tag.id, event_id: params[:event_id])
	end
	
end
