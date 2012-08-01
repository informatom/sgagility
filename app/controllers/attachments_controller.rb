class AttachmentsController < ApplicationController

  hobo_model_controller

  auto_actions :all

  def show
    attachment = Attachment.find(params[:id])
    send_file attachment.document.path(params[:style])
  end
  
  def create
    @project = Project.find(params[:project_id])
    @attachment = @project.attachments.new(params[:attachment])
    if @attachment.save
      @this = @project
      hobo_ajax_response
    end
  end
  
  def destroy
    @attachment = Attachment.find(params[:id])
    if @attachment.destroy
      render :js => "$('#attachment_#{@attachment.id}').fadeOut();"
    end
  end

end
