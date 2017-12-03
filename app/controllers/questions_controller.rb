class QuestionsController < ApplicationController
  before_action :load_question, only: [:edit, :update, :destroy]
  before_action :authorize_user, except: [:create]

  def create
    @question = Question.new(question_params)
    @question.author = current_user
    if @question.save
      redirect_to user_path(@question.user), notice: 'Question added'
    else
      render :edit
    end
  end

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to user_path(@question.user), notice: 'Question updated'
    end
  end

  def destroy
    user = @question.user
    @question.destroy
    redirect_to user_path(user), notice: "Question deleted"
  end


  private

  def authorize_user
    reject_user unless @question.user == current_user
  end

  def load_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:user_id, :text, :answer)
  end

end
