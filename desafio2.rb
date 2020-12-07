class Person
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end
    def birthday
        @age += 1
    end
    def talk
        if @type == "Student"
            puts "Aquí es la clase de programación con Ruby?"
        elsif @type == "Teacher"
            puts "Bienvenidos a la clase de programación con Ruby!"
        elsif @type == "Parent"
            puts "Aquí es la reunión de apoderados?"
        end
    end
    def introduce
        if @type == "Student"
            puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Teacher"
            puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
        elsif @type == "Parent"
            puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #
            {@last_name}."
        end 
    end
end

student1 = Person.new('Diego', 'Eterovic', 30, 'Student')

student1.introduce


#TAREA 2

module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end
        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end
    module Nadador
        def nadar
            'Estoy nadando!'
        end
        def sumergir
            'glu glub glub glu'
        end
    end
    module Caminante
        def caminar
            'Puedo caminar!'
        end
    end
end
module Alimentacion
    module Herbivoro
      def comer
        'Puedo comer plantas!'
        end
    end
    module Carnivoro
        def comer
        'Puedo comer carne!'
        end
    end
end

class Animal
attr_accessor :nombre
    def initialize(nombre)
    end
end

class Ave < Animal
    module Habilidades::Volador
end
class Mamifero < Animal
end
class Insecto < Animal
end

class Pinguino < Ave
end
class Paloma < Ave
end
class Pato < Ave
end

class Perro < Mamifero
end
class Gato < Mamifero
end
class Vaca < Mamifero
end

class Mosca < Insecto
end
class Mariposa < Insecto
end
class Abeja < Insecto
end