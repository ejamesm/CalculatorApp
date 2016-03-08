class CalcController < ApplicationController
		
		def index
		end

		def add
		end

		def doadd

			ok = true

			if calc_params[:firstNum].blank?
				flash.now[:notice1] = "The first number is required."
				ok = false
			end

			if calc_params[:secondNum].blank?
				flash.now[:notice2] = "The second number is required."
				ok = false
			end

			if ok
				@firstNum = calc_params[:firstNum].to_i
				@secondNum = calc_params[:secondNum].to_i
				@result = @firstNum + @secondNum
			else
				render "add"
			end
		
		end

		def subtract
		end

		def multiply
		end

		def divide
		end

	private

		def calc_params
			params.permit(:firstNum, :secondNum)
		end


end
