		var velocidade = 1.5;
		var direcao = point_direction(x, y, Ronin_p1.x, Ronin_p1.y);
        x += lengthdir_x(velocidade, direcao);
        y += lengthdir_y(velocidade, direcao);