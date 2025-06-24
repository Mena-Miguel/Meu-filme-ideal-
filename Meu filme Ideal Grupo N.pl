
  % GRUPO NÚMERO: 
  % filme(Titulo, Genero, Ano, Diretor, AtorPrincipal, Avaliacao, ClassEtaria).

 filme('The Godfather', crime, 1972, 'Francis Ford Coppola', 'Marlon Brando', 9, 18).
 filme('The Dark Knight', acao, 2008, 'Christopher Nolan', 'Christian Bale', 9, 13).
 filme('Inception', ficcao, 2010, 'Christopher Nolan', 'Leonardo DiCaprio', 9, 13).
 filme('Spirited Away', animacao, 2001, 'Hayao Miyazaki', 'Rumi Hiiragi', 9, 10).
 filme('Oppenheimer', biografia, 2023, 'Christopher Nolan', 'Cillian Murphy', 9, 16).
 filme('Get Out', terror, 2017, 'Jordan Peele', 'Daniel Kaluuya', 9, 18).
 filme('La La Land', romance, 2016, 'Damien Chazelle', 'Ryan Gosling', 9, 13).
 filme('The Shawshank Redemption', drama, 1994, 'Frank Darabont', 'Tim Robbins', 10, 18).
 filme('The Godfather Part II', crime, 1974, 'Francis Ford Coppola', 'Al Pacino', 9, 18).
 filme('Jurassic Park', aventura, 1993,'Steven Spielberg', 'Sam Neill', 8, 13).
 filme('Drive', acao, 2011, 'Nicolas Winding Refn', 'Ryan Gosling', 8, 18).
 filme('Oldboy', thriller, 2003, 'Park Chan-wook', 'Choi Min-sik', 8, 18).
 filme('Logan', acao, 2017, 'James Mangold', 'Hugh Jackman', 8, 18).
 filme('Titanic', romance, 1997, 'James Cameron', 'Leonardo DiCaprio', 8, 13).
 filme('Mad Max: Fury Road', acao, 2015, 'George Miller', 'Tom Hardy', 8, 18).

  % usuario(Nome, Idade, GenerosFavoritos, DiretoresFavoritos, AtoresFavoritos, HistoricoAssistido).

 usuario('Ana', 16, [romance, animacao], ['James Cameron', 'Hayao Miyazaki'], ['LeonardoDiCaprio'], ['Titanic']).
 usuario('Bruno', 20, [acao, ficcao], ['Christopher Nolan', 'George Miller'], ['Christian Bale'],['Aneth Drime']).
 usuario('Carla', 25, [terror, thriller], ['Jordan Peele', 'Park Chan-wook'], ['Daniel Kaluuya'],['Get Out']).
 usuario('Daniel', 13, [animacao, aventura], ['Hayao Miyazaki', 'Steven Spielberg'], ['Sam Neill'],['Red Nice']).
 usuario('Eduarda', 18, [drama, biografia], ['Frank Darabont', 'Christopher Nolan'], ['CillianMurphy'], ['Comedy the Grow']).
 usuario('Fábio', 17, [romance, musical], ['Damien Chazelle'], ['Ryan Gosling'], ['La La Land'])

  % Verifica se a classificação é adequada para a idade do usuário

 classificacao_adequada(Classe, Idade) :- Idade >= Classe.

  % Regra principal: recomenda_filme(Usuario, Filme)
  
  recomenda_filme(Usuario, Filme) :
    usuario(Usuario, Idade, Generos, Diretores, Atores, Historico),
    filme(Titulo, Genero, _, Diretor, Ator, Avaliacao, Classe),
    Avaliacao >= 8,
    classificacao_adequada(Classe, Idade),
    membro(Genero, Generos),
    membro(Diretor, Diretores),
    membro(Ator, Atores),
    \+ membro(Filme, Historico).
