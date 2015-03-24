class Questionmailer < ApplicationMailer
	default from: "engrohitjain5@gmail.com"
	def welcome_email(question)
		# @question.ans_mail_id
    	@question = question
    	# @question_mail_id[] = @question.ans_mail_id.split(",")
	    @url  = "https://question-ans.herokuapp.com/answeres/new/"
    	mail(to: @question.ans_mail_id.split(","), subject: 'Question from localhost')
    	# mail(to: @question.sender.ans_mail_id, subject: 'Question from localhost')
  	end
end
