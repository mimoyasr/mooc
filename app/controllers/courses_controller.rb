class CoursesController < InheritedResources::Base

  before_action :ckeck_user!, only: [ :edit , :update , :destroy]

  def ckeck_user! 
    course = Course.find(params[:id])
    if course.user != current_user
      redirect_to course, notice: 'you dont have permition' 
    end
  end


  def create
    @course = Course.new(course_params)

    @course.user = current_user ;

    respond_to do |format|
      if @course.save
        format.html { redirect_to @course, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def course_params
      params.require(:course).permit(:title, :desc, :user_id)
    end
end

