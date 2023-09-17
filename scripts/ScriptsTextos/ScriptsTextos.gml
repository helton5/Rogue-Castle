// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function ScriptsTextos(){
	switch npc_nome{
		case "Primeiro Texto":
			ds_grid_add_text("Quem é você?",Spr_Ronin_profile,1,"Ronin")
			ds_grid_add_text("Depende de quem Pergunta",Spr_mercador,0,"???");
			ds_grid_add_text("O que isso significa exatamente?",Spr_Ronin_profile,0,"Ronin");
			ds_grid_add_text("...",Spr_mercador,0,"???",2);
			ds_grid_add_text("Nada...só tirando com a sua cara mesmo",Spr_mercador_feliz,0,"???");
			ds_grid_add_text("...",Spr_Ronin_profile,0,"Ronin",2);
			ds_grid_add_text(">:(",Spr_Ronin_puto,0,"Ronin",2);
			ds_grid_add_text("HA HA engraçadinho",Spr_Ronin_puto2,0,"Ronin",2);
			ds_grid_add_text("enfim...meu nome não importa, pode me chamar de mercador",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("Então você vende essas coisas ai na mesa?",Spr_Ronin_profile,0,"Ronin",2);
			ds_grid_add_text("Não, eu só doou mesmo",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("então porque não doador?",Spr_Ronin_profile,0,"Ronin",2)
			ds_grid_add_text("Porque mercador é bem mais show que doador",Spr_mercador,0,"Mercador");
			ds_grid_add_text("Na verdade, eu quero que você faça algo por mim",Spr_mercador_shy,0,"Mercador");
			ds_grid_add_text("quero que derrote quem está prendendo os animais aqui",Spr_mercador,0,"Mercador");
			ds_grid_add_text("Julgando por esse lugar eu achava que era você que estava fazendo isso",Spr_Ronin_puto,1,"Ronin")
			ds_grid_add_text("Eu já fui líder dos arqueiros caçadores",Spr_mercador_shy,0,"Mercador");
			ds_grid_add_text("Mas isso é passado, o major tornado tomou meu lugar faz muito tempo...",Spr_mercador_shy,0,"Mercador");
			ds_grid_add_text("Ele está no poder a quanto tempo?",Spr_Ronin_profile,0,"Ronin",2);
			ds_grid_add_text("mais ou menos três dias",Spr_mercador,0,"Mercador");
			ds_grid_add_text("íncrivel o que alguém competente pode fazer em tão pouco tempo",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("Então porque você não me ajuda? você era chefe...deve saber alguma coisa",Spr_Ronin_profile,0,"Ronin");
			ds_grid_add_text("estou fora de forma",Spr_mercador_shy,0,"Mercador");
			ds_grid_add_text("Mas eu tenho esses três itens que podem te ajudar",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("O primeiro é um boomerangue, dispara lento mais doí na ida e na volta, muito bom contra os tornados do major",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("O segundo dispara água pressuriada, uma arminha d'agua no caso, muitos disparos, mas pouco dano cada um deles",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("O terceiro é um estilingue, recarrega igual a um arco e dispara três fragmentos",Spr_mercador_feliz69,0,"Mercador");
				ds_grid_add_text("Sinta-se livre para perguntar qualquer coisa",Spr_mercador_feliz,0,"Mercador");
				add_op("O que cada objeto faz?","Resposta 1");
				add_op("Como você conseguiu eles?","Resposta 2");
				add_op("Você gostava de capturar os animais?","Resposta 3");
			
		break;
			case "Resposta 1":
			ds_grid_add_text("O primeiro é um boomerangue, dispara lento mais doí na ida e na volta, muito bom contra os tornados do major",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("O segundo dispara água pressurizada, uma arminha d'agua no caso, muitos disparos, mas pouco dano cada um deles",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("O terceiro é um estilingue, recarrega igual a um arco e dispara três fragmentos",Spr_mercador_feliz69,0,"Mercador");
		break;
			case "Resposta 2":
				ds_grid_add_text("Quando eu era líder dos caçadores eu tinha acesso a todas as técnologias de ponta",Spr_mercador,0,"Mercador");
				ds_grid_add_text("Diante de você está as mais formidaveis armas para captura de animais",Spr_mercador,0,"Mercador",2);
				ds_grid_add_text("Mesmo que hoje em dia eu não me orgulho disso",Spr_mercador_shy,0,"Mercador");
				add_op("Você gostava de capturar os animais?","Resposta 3");
				add_op("O que cada objeto faz?","Resposta 1");
		break;
				case "Resposta 3":
				ds_grid_add_text("Claro que não",Spr_mercador,0,"Mercador");
				ds_grid_add_text("Eu odiava ver o rosto triste deles",Spr_mercador,0,"Mercador",2);
				ds_grid_add_text("Faz anos que eu estava soltando eles escondidos",Spr_mercador,0,"Mercador");
				ds_grid_add_text("Mas...três dias atrás eles me pegaram soltando uma capivara",Spr_mercador_shy,0,"Mercador",2)
				ds_grid_add_text("Agora estou preso junto com os bichinhos que soltei",Spr_mercador_shy,0,"Mercador",2)
				add_op("Como você conseguiu eles?","Resposta 2");
				add_op("O que cada objeto faz?","Resposta 1");
				
				
		break;
}
}
function ds_grid_add_row(){
	///@arg ds_grid
 
	var _grid = argument[0];
	ds_grid_resize(_grid,ds_grid_width(_grid),ds_grid_height(_grid)+1);
	return(ds_grid_height(_grid)-1);	
}
 
function ds_grid_add_text(){
	///@arg texto
	///@arg retrato
	///@arg lado
	///@arg nome
 
	var _grid = texto_grid;
	var _y = ds_grid_add_row(_grid);
 
	_grid[# 0, _y] = argument[0];
	_grid[# 1, _y] = argument[1];
	_grid[# 2, _y] = argument[2];
	_grid[# 3, _y] = argument[3];
}
function add_op(_texto, _resposta){
	op[op_num] = _texto;
	op_resposta[op_num] = _resposta;
	op_num++;
}
	