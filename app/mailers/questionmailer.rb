class Questionmailer < ApplicationMailer
	default from: "engrohitjain5@gmail.com"
	def welcome_email(question)
		# @question.ans_mail_id
    	@question = question
    	# @question_mail_id[] = @question.ans_mail_id.split(",")
	    @url  = 'localhost:3000'
    	mail(to: @question.ans_mail_id.split(","), subject: 'Question from localhost')
  	end
end
