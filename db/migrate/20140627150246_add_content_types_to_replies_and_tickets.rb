class AddContentTypesToRepliesAndTickets < ActiveRecord::Migration
  def change
    Brimir::Reply.all.each do |reply|
      if reply.content_type == 'markdown'
        reply.content_type = 'html'
        reply.save
      end
    end

    Brimir::Ticket.all.each do |ticket|
      if ticket.content_type == 'markdown'
        ticket.content_type = 'html'
        ticket.save
      end
    end
  end
end
