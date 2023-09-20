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
			ds_grid_add_text("O primeiro é um bumerangue, dispara lento, mas doí na ida e na volta, muito bom contra os tornados do major",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("O segundo dispara água, uma arminha d'agua no caso, muitos disparos, mas pouco dano",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("O terceiro é um estilingue, recarrega igual a um arco e dispara três fragmentos",Spr_mercador_feliz69,0,"Mercador");
				ds_grid_add_text("Sinta-se livre para perguntar qualquer coisa",Spr_mercador_feliz,0,"Mercador");
				add_op("Sair","Resposta 3");
				add_op("Quero Enfrentar o major","Resposta 1");
				add_op("O que cada objeto faz?","Resposta 2");
				
			
		break;
			case "Resposta 2":
			ds_grid_add_text("O primeiro é um bumerangue, dispara lento, mas doí na ida e na volta, muito bom contra os tornados do major",Spr_mercador_feliz69,0,"Mercador");
			ds_grid_add_text("O segundo dispara água, uma arminha d'água no caso, muitos disparos, mas pouco dano cada um deles",Spr_mercador_feliz,0,"Mercador");
			ds_grid_add_text("O terceiro é um estilingue, recarrega igual a um arco e dispara três fragmentos",Spr_mercador_feliz69,0,"Mercador");
				add_op("Sair","Resposta 3");
				add_op("Quero Enfrentar o major","Resposta 1");
		break;
			case "Resposta 1":
				ds_grid_add_text("já pegou o item que combina mais com você?",Spr_mercador,0,"Mercador");
				add_op("Não","Resposta 5");
				add_op("Sim","Resposta 4");
		break;
				case "Resposta 3":
				ds_grid_add_text("Adeus",Spr_mercador_feliz,0,"Mercador");
				
				
		break;
			case "Resposta 4":
				ds_grid_add_text("Qual você escolheu",Spr_mercador,0,"Mercador");
				add_op("Bumerangue","Resposta 6");
				add_op("Arminha d'água","Resposta 7");
				add_op("estilingue","Resposta 8");
		break;
			case "Resposta 5":
				ds_grid_add_text("Então...o que quer saber ou fazer?",Spr_mercador,0,"Mercador");
					add_op("Sair","Resposta 3");
					add_op("O que cada objeto faz?","Resposta 2");
		break;
			case "Resposta 6":
				ds_grid_add_text("Certo",Spr_mercador_feliz,0,"Mercador");
						TransitionStart(Ambiente12_boo,fade_out,fade_in)
		break;
				case "Resposta 7":
				ds_grid_add_text("Certo",Spr_mercador_feliz,0,"Mercador");
						TransitionStart(Ambiente12_aqua,fade_out,fade_in)
		break;
			case "Resposta 8":
				ds_grid_add_text("Certo",Spr_mercador_feliz,0,"Mercador");
						TransitionStart(Ambiente12_esti,fade_out,fade_in)
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
	