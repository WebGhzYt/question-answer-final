class QuestionsController < ApplicationController
	# before_action :student_signed_in?, only: [:create, :destroy]

	def index
		# @questions = Question.all
		# @students = Student.all
	end

	def new
		@students = Student.where(:role => false)  	
		@question = Question.new
	end

	def create		
	    @question = Question.new(question_params)
	    if @question.save
		    flash[:success] = "Question created!"
		    # UserMailer.welcome_email(@user).deliver_later
 			Questionmailer.welcome_email(@question).deliver
		    #we need to send a message to other students
		    redirect_to root_url
	    else
	      redirect_to 'new'
	    end
  	end

  private

    def question_params
      params.require(:question).permit(:content,:student_id,:behaf_id,:ans_mail_id)

    end

end
