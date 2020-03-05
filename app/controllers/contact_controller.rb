class ContactController < ApplicationController
  	def contact
  	end

	def contact_success
		@name = params[:contact_from_name]
		@email = params[:contact_from_email]
		@company = params[:contact_from_company]
		@tel = params[:contact_from_contact]
		@contents = params[:contact_from_contents]
			
		body = "<HTML><BODY>" \
		"<h1>회사명</h1> : #{@company}" \
		"<h5>FROM</h5> : #{@email}" \
		"<h5>CONTENT</h5> : " \
		"#{@contents.to_s}" \
		"<h5>NAME :</h5> #{@name}" \
		"<h5>TEL : #{@tel}" \
		"</BODY></HTML>"
		body = body.gsub(/\r?\n/, "<br />") 

		subject = "홈페이지 문의 메일이 도착하였습니다."
		sendMailLIst = ["dev@caramella.kr", "pm@caramella.kr"]
		sendMailLIst.each do |targetEmail|
			ContactMailer.send_email_contact(targetEmail, subject, body ).deliver_later
		end
	end
  
	def page_title
		"CONTACT | 회사문의"
	end

	def page_content
		"CONTACT"
	end


end