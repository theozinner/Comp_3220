#
#  Class Token - Encapsulates the tokens in TINY
#
#   @type - the type of token (Category)
#   @text - the text the token represents (Lexeme)
#
class Token
	attr_accessor :type
	attr_accessor :text

# This is the only part of this class that you need to 
#  "TINY" Grammar
#
# PGM        -->   STMT+
# STMT       -->   ASSIGN   |   "print"  EXP                           
# ASSIGN     -->   ID  "="  EXP
# EXP        -->   TERM   ETAIL
# ETAIL      -->   "+" TERM   ETAIL  | "-" TERM   ETAIL | EPSILON
# TERM       -->   FACTOR  TTAIL
# TTAIL      -->   "*" FACTOR TTAIL  | "/" FACTOR TTAIL | EPSILON
# FACTOR     -->   "(" EXP ")" | INT | ID   
#                  
# ID         -->   ALPHA+
# ALPHA      -->   a  |  b  | … | z  or done
#                  A  |  B  | … | Z done
# INT        -->   DIGIT+
# DIGIT      -->   0  |  1  | …  |  9 done
# WHITESPACE -->   Ruby Whitespace done
# modify.
	EOF = "eof"
	LPAREN = "("
	RPAREN = ")"
	ADDOP  = "+"
	WS = "whitespace"
	ASSIGN = "="
	INT = "int"
	PRINT = "print"
	ID = "id"
	DIOPP = "/"
	MUOPP = "*"
	SUOPP = "-"



# add the rest of the tokens needed based on the grammar
# specified in the Scanner class "TinyScanner.rb"

#constructor
	def initialize(type,text)
		@type = type
		@text = text
	end
	
	def get_type
		return @type
	end
	
	def get_text
		return @text
	end
	
# to string method
	def to_s
		return "#{@type} #{@text}"
	end
end
