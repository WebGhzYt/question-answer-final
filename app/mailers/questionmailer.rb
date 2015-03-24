class Questionmailer < ApplicationMailer
	default from: "engrohitjain5@gmail.com"
	def welcome_email(question)
    	@question = question
	    @url  = 'localhost:3000'
    	mail(to: @question.ans_mail_id, subject: 'Question from localhost')
  	end
end
