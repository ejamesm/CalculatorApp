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
				# @result = @firstNum + @secondNum
			  obj = Calculator.new
			  @result = obj.add(@firstNum, @secondNum)
			  @countString = Calculator.getCount
			else
				render "add"
			end
		
		end

		def subtract
		end

		def dosubtract
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
				# @result = @secondNum - @firstNum
				obj = Calculator.new
				@result = obj.subtract(@firstNum, @secondNum)
			else
				render "subtract"
			end

		end

		def multiply
		end

		def domultiply
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
				# @result = @firstNum * @secondNum
				obj = Calculator.new
				@result = obj.multiply(@firstNum, @secondNum)
			else
				render "multiply"
			end
		end


		def divide
		end

		def dodivide
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
				@firstNum = calc_params[:firstNum].to_f
				@secondNum = calc_params[:secondNum].to_f
				# @result = @firstNum / @secondNum
				obj = Calculator.new
				@result = obj.divide(@firstNum, @secondNum)
			else
				render "divide"
			end
		end

	private

		def calc_params
			params.permit(:firstNum, :secondNum)
		end


end
