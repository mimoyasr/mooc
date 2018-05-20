class LecturesController < InheritedResources::Base

  before_action :ckeck_user!, only: [ :edit , :update , :destroy]

  def ckeck_user! 
    lec = Lecture.find(params[:id])
    if lec.course.user != current_user
      redirect_to lec, notice: 'you dont have permition' 
    end
  end

  def upvote 
    @lecture = Lecture.find(params[:id])
    @lecture.upvote_by current_user
    redirect_to :lecture
  end  
  
  def downvote
    @lecture = Lecture.find(params[:id])
    @lecture.downvote_by current_user
    redirect_to :lecture
  end

  def report
    @lecture = Lecture.find(params[:id])
    is_reported = Report.find_by(user: current_user , lecture: @lecture)
    if(!is_reported)
      @report = Report.new
      @report.user = current_user
      @report.lecture = @lecture
      @report.save
    end
    redirect_to :lecture
  end

  private

    def lecture_params
      params.require(:lecture).permit(:title, :content, :file, :course_id)
    end
end

