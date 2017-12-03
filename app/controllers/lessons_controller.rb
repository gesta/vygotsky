class LessonsController < ApplicationController

  def new
    @lesson = Lesson.new
    @homework = Homework.new
  end

  def edit
    @lesson = Lesson.find(params[:id])
  end

  def create
    Lesson.create(lesson_attributes)
    render 'welcome/index'
  end

  def update
    Lesson.find(params[:id]).update_attributes(lesson_attributes)
    render 'welcome/index'
  end

  def destroy
    @lesson = Lesson.find(params[:id])
    if @lesson.destroy
      flash[:success] = "Урокът #{@lesson.name} е заличен"
    else
      flash[:error] = "Урокът #{@lesson.name} не може да бъде заличен"
    end
  end

  def list
    @title = 'Уроци'
    @lessons = Lesson.all.order(updated_at: :desc)
    render 'list'
  end

  def show
    @lesson = Lesson.find(params[:id])
    @title = "Урок #{@lesson.name}"
  end

  def lesson_attributes
    params
      .require(:lesson)
      .permit(:group, homework: [:content],
              exercise: [:content],
              preface:
                [:"length(1i)", :"length(2i)", :"length(3i)", :"length(4i)", :"length(5i)", :description, :content],
              primary:
                [:"length(1i)", :"length(2i)", :"length(3i)", :"length(4i)", :"length(5i)", :description, :content, sections: []]
             )
  end
end
