class Utilizador
	#falta notificacoes....
	attr_accessor :nome, :mail, :password, :nickname

	def initialize(nome,mail,password,nickname)
		@nome=nome
		@mail=mail
		@password=password
		@nickname=nickname
	end

	# get and set nome

	def getNome()
		return @nome
	end

	def setNome(nome)
		@nome=nome
	end

	# get and set mail
	def getMail()
		return @mail
	end

	def setMail(mail)
		@mail=mail
	end

	#get and set password

	def isPassword()
		return @password
	end

	def setPassword(pass)
		@password=pass
	end

	#get and set nickname

	def getNickname()
		return @nickname
	end

	def setNickname(nick)
		@nickname=nick
	end

	def verificaUtilizador(nome,password)
		@nome == nome && @password == password
	end

	#To_string

	def to_String()
		return "Nome: #{nome}, Email: #{mail}, Password: #{password}, NickName: #{nickname}"
	end
	
end


#Classe Apostador

#class Apostador < Utilizador
#	attr_accessor :disponivel

 #       def mostraNome
  #              puts "O Nome: #{nome}"
#		puts "Mail: #{mail}"
#		puts "Disponivel: #{disponivel}"
 #       end
#end

#Class Bookie

#class Bookie < Utilizador

#end

nUtilizador = Utilizador.new("Luis","lbrbrito@gmail.com","123456","Lbr1")
cenas=nUtilizador.to_String
igual = nUtilizador.verificaUtilizador("luis2","123456")
igual2 = nUtilizador.verificaUtilizador("Luis","123456")
puts igual
puts igual2
#apostador = Apostador.new("Luisinho","lbrbrito@gmail.com","2356","Lb")
#apostador.disponivel=8
#apostador.mostraNome
