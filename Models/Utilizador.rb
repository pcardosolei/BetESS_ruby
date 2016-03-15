class Utilizador
	attr_accessor :nome, :mail, :password, :nickname

	def initialize(nome,mail,password,nickname)
		@nome=nome
		@mail=mail
		@password=password
		@nickname=nickname
	end
end
