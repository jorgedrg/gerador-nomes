#!/usr/bin/ruby
require 'csv'

nomes_csv = CSV.read("nomes.csv", encoding: "UTF-8", headers: false)

@nomes_array = []

nomes_csv.each do |n|
	@nomes_array.push(n)
end

puts @nomes_array.join('","')

#@apelidos_csv = CSV.read("apelidos.csv", encoding: "UTF-8", headers: true)
#
#@apelidos_array = []
#
#@apelidos_csv.each do |a|
#	@apelidos_array.push(a)
#end
#
#@apelidos = @apelidos_array.join('","').strip.delete!("\n")
#
#puts @apelidos
#
#
#@apelidos = ["Abasto","Abelho","Abranches","Abrantes","Abreu","Adão","Adarga","Afonso","Águeda","Aguiar","Aires","Albernaz","Albuquerque","Alcaide","Alcântara","Alcoforado","Aldeia","Aleixo","Alencar","Almada","Almeida","Alpuim","Alvarenga","Álvares","Álvaro","Alvelos","Alves","Alvim","Amado","Amaral","Amarante","Amaro","Amoedo","Amorim","Andrade","Anes","Angelim","Anhaia","Anjos","Anlicoara","Antas","Antunes","Aquino","Aragão","Aranha","Arantes","Araújo","Areosa","Argolo","Arouca","Arruda","Assis","Assunção","Ataíde","Atilano","Aveiro","Avelar","Ávila","Azambuja","Azenha","Azeredo","Azevedo","Bacelar","Baía","Baião","Bairros","Baldaia","Balsemão","Bandeira","Banha","Baptista","Barata","Barateiro","Barbalho","Barbosa","Barcelos","Barra","Barreira","Barreiros","Barrico","Barrela","Barreno","Barreto","Barroca","Barrocas","Barroqueiro","Barros","Barroso","Basílio","Bastos","Batata","Beiriz","Belchior","Belchiorinho","Belém","Belmonte","Belo","Beltrão","Bencatel","Benevides","Bensaúde","Bentes","Bettencourt","Bento","Berenguer","Bernardes","Bessa","Bezerra","Bezerril","Bicalho","Bicudo","Bilhalva","Bingre","Bivar","Boaventura","Boeira","Boga","Bogado","Bonilha","Bonito","Borba","Borges","Borja","Botelho","Botica","Boto","Bouça","Bouças","Brandão","Braga","Bragança","Branco","Brás","Brásio","Brasil","Breia","Brião","Brites","Brito","Brochado","Brum","Bugalho","Bulhões","Bulhosa","Cabeça","Cabeça de Vaca","Cabral","Cabreira","Cachão","Cachoeira","Caçoilo","Cadaval","Cadavez","Caeira","Caeiro","Caetano","Café","Caiado","Caires","Calado","Calçada","Caldas","Caldeira","Calheiros","Camacho","Câmara","Camargo","Camarinho","Cambezes","Camelo","Camilo","Caminha","Campelo","Campos","Canadas","Canário","Cancela","Candal","Candeias","Canedo","Caneira","Canejo","Canela","Cangueiro","Canhão","Caniça","Cantanhede","Canto","Caparica","Capistrano","Capucho","Cardim","Cardoso","Carlos","Carmo","Carmona","Carneiro","Coronel","Carqueijeiro","Carrasco","Carrasqueira","Carreira","Carregueiro","Carreiro","Carrilho","Carromeu","Cartaxo","Carvalhais","Carvalhal","Carvalheira","Carvalheiro","Carvalho","Carvalhosa","Carvalhoso","Casado","Casalinho","Cascais","Casqueira","Castanheira","Castanho","Castanheda","Castelhano","Castelo","Castelo Branco","Castilho","Castilhos","Castro","Catela","Cavadas","Cavaco","Cavalheiro","Cedraz","Cedro","Cerqueira","Cerveira","César","Cesário","Chagas","Chainho","Chamusca","Charneca","Chaves","Chousa","Cidreira","Cipriano","Cirne","Cisneiros","Clementino","Cobra","Coelho","Coimbra","Colaço","Colares","Conceição","Conde","Condorcet","Cordeiro","Correia","Corte-Real","Cortês","Cortesão","Costa, da Costa","Cotrim","Couceiro","Coutinho","Couto","Covilhã","Covinha","Craveiro","Cruz","Cunha","Curvelo","Custódio","Curado","Damasceno","Damásio","Dâmaso","Dantas","Delgado","Dias","Diegues","Dinis","Dourado","Doutel","Doutis","Domingos","Domingues","Dorneles","Duarte","Durão","Durães","Dutra","Eanes","Eiró","Escobar","Espargosa","Esparteiro","Espinosa","Espírito Santo","Esteves","Estrada","Estrela","Faia","Fagundes","Falcão","Faleiro","Faria","Farias","Farinha","Faro","Fartaria","Faustino","Fazendeiro","Feijó","Feira","Feitosa","Félix","Fernandes","Ferraço","Ferrão","Ferraz","Ferreira","Ferro","Festas","Fiães","Fialho","Fidalgo","Figueira","Figueiredo","Figueiró","Figueiroa","Filgueiras","Filipe","Fitas","Fiúza","Flávio","Flores","Fogaça","Fonseca","Fontes","Fontinha","Fontoura","Foquiço","Fortes","Fortunato","Frade","Fraga","Fragoso","Frajuca","Franca","França","Franco","Franca","Franqueira","Frazão","Freire","Freiria","Freitas","Freixo","Frias","Frois","Frota","Furquim","Furtado","Gabeira","Gadelha","Gago","Galante","Galindo","Galvão","Gama","Gameiro","Garcez","Garcia","Garrau","Garrido","Gaspar","Gentil","Gil","Ginjeira","Girão","Godinho","Godoi","Gois","Gomes","Gomide","Gonçalves","Gorjão","Goulart","Gouveia","Goulão","Graça","Grande","Grangeia","Granja","Granjeiro","Gravato","Grilo","Guedelha","Guedes","Guerra","Guerreiro","Guilheiro","Guimarães","Gusmão","Guterres","Henriques","Hernandes","Hilário","Hipólito","Holanda","Homem","Horta","Igrejas","Ilha","Imperial","Inácio","Inês","Infante","Jamandas","Janes","Jardim","Jesus","Jobim","Jordão","Jorge","Júdice","Junqueira","Keil","Lacerda","Lage","Lages","Lago","Lagoa","Lagos","Lalanda","Lamego","Lameira","Lameirinhas","Lameiras","Lamenha","Lampreia","Lancastre","Landim","Lara","Laranjeira","Lários","Laureano","Leal","Leão","Leiria","Leitão","Leite","Leme","Lemes","Lemos","Lessa","Letras","Liberato","Lima","Linhares","Lindim","Lins","Lira","Lisboa","Lobato","Lobo","Loio","Lopes","Lourenço","Loureiro","Lousã","Lousada","Lousado","Lucas","Lucena","Lustosa","Luz","Macedo","Macena","Machado","Macieira","Maciel","Madeira","Madruga","Madureira","Mafra","Magalhães","Maia","Mainha","Maior","Malafaia","Malheiro","Malho","Malta","Mamouros","Mangueira","Mansilha","Manso","Mantas","Maranhão","Marçal","Marcondes","Marinho","Marins","Mariz","Marmou","Marques","Marreiro","Marroquim","Martinho","Martins","Mascarenhas","Mata","Mateus","Matias","Matos","Matosinhos","Matoso","Medeiros","Medina","Meira","Meireles","Melancia","Melgaço","Mena","Melo","Mendes","Mendonça","Meneses","Mesquita","Mexia","Miguel","Miguéis","Mieiro","Milhães","Milheirão","Milheiriço","Milheiro","Minho","Miranda","Mirandela","Modesto","Moita","Mondragão","Monforte","Monjardim","Monsanto","Mont'Alverne","Monte","Montenegro","Monteiro","Morais","Morão","Moreira","Moreno","Morgado","Mortágua","Mota","Moura","Mourão","Mourato","Mourinho","Moutinho","Muniz","Murteira","Murtinho","Muxagata","Narvais","Nascimento","Natal","Naves","Nazário","Negrão","Negreiros","Negromonte","Neiva","Neres","Neto","Neves","Ninharelhos","Nobre","Nóbrega","Nogueira","Noite","Nolasco","Noleto","Norões","Noronha","Novais","Nunes","Olaio","Oleiro","Olivares","Oliveira","Onofre","Ornelas","Orriça","Osório","Ourique","Ouro","Outeiro","Pacheco","Padilha","Pádua","Paião","Pais","Paiva","Paixão","Palha","Palhares","Palma","Palmeira","Palos","Parafita","Paranhos","Pardo","Paredes","Parente","Parracho","Parreira","Passarinho","Passos","Pastana","Patrício","Paula","Paulos","Paz","Peçanha","Pêcego","Pederneiras","Pedro","Pedroso","Pegado","Peixoto","Penha","Penteado","Pequeno","Peralta","Perdigão","Pereira","Pescada","Peseiro","Pessoa","Pestana","Picanço","Picão","Pimenta","Pimentel","Pinhal","Pinheiro","Pinho","Pinto","Piteira","Pires","Poças","Ponte","Pontes","Porciúncula","Portela","Porto","Portugal","Póvoas","Prada","Prado","Prates","Prestes","Proença","Protásio","Prudente","Pureza","Quadros","Quaresma","Queiroga","Queirós","Quental","Quesado","Quina","Quinaz","Quinta","Quintal","Quintana","Quintanilha","Quintas","Quintais","Quintão","Quinteiro","Quintela","Quinterno","Quinzeiro","Quirino","Rabelo","Ramalho","Raminhos","Ramires","Ramos","Rangel","Raposo","Rebelo","Rebimbas","Rebocho","Rebotim","Rebouças","Redondo","Regalado","Rego","Regodeiro (muito raro)","Regueira","Rei","Reino","Reis","Remígio","Resende","Ribas","Ribeiro","Rico","Rijo","Rios","Robalinho","Robalo","Roçadas (muito raro)","Rocha","Rodovalho","Rodrigues","Rolim","Roriz","Rosa","Rosado","Rosário","Rosmaninho","Rua","Ruas","Ruela","Rufino","Sá","Sabala","Sabrosa","Sacadura","Sacramento","Salazar","Saldanha","Sales","Salgado","Salgueiro","Salvado","Saloio","Salomão","Saltão","Sampaio","Sanches","Sandinha","Santana","Santarém","Santiago","Santos","Saraiva","Sardinha","Sardo","Sarmento","Seabra","Seixas","Semedo","Serpa","Serralheiro","Serro","Sesimbra","Setúbal","Severiano","Severo","Silva","Silveira","Silvestre","Simas","Simões","Simão","Sintra","Sítima","Sequeira","Soares","Sobral","Sobreira","Sodré","Soeiro","Sousa","Souto","Souto Maior","Soveral","Soverosa","Tabanez","Taborda","Tabosa","Talhão","Tavares","Taveira","Taveiros","Távora","Teixeira","Tedim","Teles","Telinhos","Temes","Teodoro","Terra","Teves","Tigre","Tinoco","Toledo","Tomé","Torquato","Torrado","Torreiro","Torres","Toscano","Travassos","Toste","Trigueiro","Trindade","Tristão","Tuna","Uchoa","Ulhoa","Úria","Urias","Valadão","Valadares","Valadim","Valcácer","Valcanaia","Vale","Valente","Valentim","Valério","Valgueiro","Valido","Valim","Valverde","Varanda","Varão","Varejão","Varela","Vargas","Vasconcelos","Vasques","Vaz","Veiga","Velasco","Velasques","Veleda","Veloso","Ventura","Vergueiro","Veríssimo","Viana","Vidal","Vides","Vidigal","Viegas","Vieira","Vigário","Vila-Chã","Vilaça","Vilalobos","Vilanova","Vilante","Vilar","Vilariça","Vilarinho","Vilas Boas","Vilaverde","Vilela","Vilhena","Vinhas","Vital","Viveiros","Xavier","Ximenes","Xisto","Zagalo","Zambujal","Zarco"]
#
#puts @apelidos.size