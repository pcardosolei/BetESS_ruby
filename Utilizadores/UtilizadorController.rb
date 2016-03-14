class UtilizadorController
	
	attr_accessor :utilizadorView,:utilizador

	def initialize()
		@utilizadorView=UtilizadorView.new
		@utilizador=Utilizador.new
	end

	def initialize(nome,mail,password,nickname)
		@utilizador.nome=nome
		@utilizador.mail=mail
		@utilizador.password=password
		@utilizador.nickname=nickname
	end

	
	def isPassword()
		@utilizador.password
	end

	def verificaUtilizador(nome,password)
		@utilizador.nome == nome && @utilizador.password == password
	end

end