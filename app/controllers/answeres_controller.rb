class AnsweresController < ApplicationController
  	def show
  		# @new_student_mail_id = params[:id]
  	end
  	
  	def new		
  		@new_student_mail_id = params[:id]
  		@question_id = Question.where(id: 35 )
  		#behaf_id find
		  @answere = Answere.new
	end

	def create		
	    @answere = Answere.new(answere_params)
	    if @answere.save
		    flash[:success] = "Answare created!"
		    # UserMailer.welcome_email(@user).deliver_later
 			#Questionmailer.welcome_email(@question).deliver
		    #we need to send a message to other students
		    redirect_to root_url
	    else
	    	redirect_to 'new'
	    end
  	end

  private

    def answere_params
      params.require(:answere).permit(:content,:mail_id)
    end

end
