void show_rule_panel(float x, float y, float w, float h){
  fill(255);
  rect(x,y,w,h);
  fill(0);
  if(rule==4){
    fill(0,255,0);
    rect(x1,y1,w1/2,h1);
  }else if(rule==3){
    fill(0,255,0);
    rect(x1+w1/2,y1,w1/2,h1);
  }
  line(x+w/2,y,x+w/2,y+h);
  textAlign(CENTER,CENTER);
  fill(0);
  text("四人",x+w/4, y+h/2);
  text("三人",x+3*w/4, y+h/2);
}

void show_chitoi_panel(float x, float y, float w, float h){
  fill(255);
  rect(x,y,w,h);
  fill(0);
  if(chitoi==1){
    fill(0,255,0);
    rect(x,y,w/2,h);
  }else if(chitoi==2){
    fill(0,255,0);
    rect(x+w/2,y,w/2,h);
  }
  line(x+w/2,y,x+w/2,y+h);
  textAlign(CENTER,CENTER);
  fill(0);
  text("通常手",x+w/4, y+h/2);
  text("七対子",x+3*w/4, y+h/2);
}

void show_han_panel(float x, float y, float w, float h){//翻数を指定するパネルを表示する
  fill(255);
  rect(x, y, w, h);
  line(x+w/3, y, x+w/3, y+h);
  line(x+2*w/3, y, x+2*w/3, y+h);
  textAlign(RIGHT,CENTER);
  fill(0);
  text("翻数",x,y+h/2);
  textAlign(CENTER,CENTER);
  String han_s=str(han);
  text(han_s, x+w/6, y+h/2);
  text("▲", x+w/2, y+h/2);
  text("▼", x+5*w/6, y+h/2);
}

void show_tsumiba_panel(float x, float y, float w, float h){//積み場を指定するパネルを表示する
  fill(255);
  rect(x, y, w, h);
  line(x+w/3, y, x+w/3, y+h);
  line(x+2*w/3, y, x+2*w/3, y+h);
  textAlign(RIGHT,CENTER);
  fill(0);
  text("積み場",x,y+h/2);
  textAlign(CENTER,CENTER);
  String tsumiba_s=str(tsumiba);
  text(tsumiba_s, x+w/6, y+h/2);
  text("▲", x+w/2, y+h/2);
  text("▼", x+5*w/6, y+h/2);
}

void show_janto_panel(float x, float y, float w1, float w2, float w3, float h){//雀頭を指定するパネルを表示する
  String janto[]={"数字牌","客風牌","風牌","自風","三元牌"};
  String fu[]={"0符","0符","2符","2符","2符"};
  for(int i=0;i<janto.length;i++){
    fill(255);
    rect(x,y+h*i/5,w1,h/5);
    rect(x+w1,y+h*i/5,w2,h/5);
    rect(x+w1+w2,y+h*i/5,w3,h/5);
    textAlign(CENTER,CENTER);
    fill(0);
    text(janto[i],x+w1/2,y+(h/10+i*h/5));
    text(fu[i],x+w1+w2/2,y+(h/10+i*h/5));
    if(Janto==i+1){
      text("●",x+w1+w2+w3/2,y+(Janto-1)*h/5+h/10);//選択したところに●を表示
    }
  }
  textAlign(LEFT,BOTTOM);
  text("雀頭",x,y);
  textAlign(CENTER,CENTER);
}

void show_machi_panel(float x, float y, float w1, float w2, float w3, float h){//待ちの形を指定するパネルを表示する
  String machi[]={"両面","双ポン","単騎","嵌張","辺張"};
  String fu[]={"0符","0符","2符","2符","2符"};
  for(int i=0;i<machi.length;i++){
    fill(255);
    rect(x,y+h*i/5,w1,h/5);
    rect(x+w1,y+h*i/5,w2,h/5);
    rect(x+w1+w2,y+h*i/5,w3,h/5);
    textAlign(CENTER,CENTER);
    fill(0);
    text(machi[i],x+w1/2,y+(h/10+i*h/5));
    text(fu[i],x+w1+w2/2,y+(h/10+i*h/5));
    if(Machi==i+1){
      text("●",x+w1+w2+w3/2,y+(Machi-1)*h/5+h/10);//選択したところに●を表示
    }
  }
  textAlign(LEFT,BOTTOM);
  text("待ちの形",x,y);
}

void show_tsumofu_panel(float x, float y, float w1, float w2, float w3, float h){//ツモかロンかを指定するパネルを表示する
  String tsumo[]={"ロン","ツモ"};
  String fu[]={"0符","2符"};
  for(int i=0;i<tsumo.length;i++){
    fill(255);
    rect(x,y+h*i/2,w1,h/2);
    rect(x+w1,y+h*i/2,w2,h/2);
    rect(x+w1+w2,y+h*i/2,w3,h/2);
    textAlign(CENTER,CENTER);
    fill(0);
    text(tsumo[i],x+w1/2,y+(h/4+i*h/2));
    text(fu[i],x+w1+w2/2,y+(h/4+i*h/2));
    if(Tsumo==i+1){
      text("●",x+w1+w2+w3/2,y+(Tsumo-1)*h/2+h/4);//選択したところに●を表示
    }
  }
  textAlign(LEFT,BOTTOM);
  text("ツモ符",x,y);
}

void show_mentsu_panel(float x, float y, float w1, float w2, float w3, float h){//面子構成を指定するパネルを表示する
  String mentsu[]={"明順子","暗順子","中張牌・明刻子","中張牌・暗刻子","中張牌・明槓子",
  "中張牌・暗槓子","么九牌・明刻子","么九牌・暗刻子","么九牌・明槓子","么九牌・暗槓子"};
  String fu[]={"0符","0符","2符","4符","8符","16符","4符","8符","16符","32符"};
  for(int i=0;i<mentsu.length+1;i++){
    fill(255);
    rect(x,y+h*i/11,w1,h/11);
    rect(x+w1,y+h*i/11,w2,h/11);
    for(int j=0;j<4;j++){
      fill(255);
      rect(x+w1+w2+j*w3,y+h*i/11,w3,h/11);
      String num=str(j+1);
      fill(0);
      textAlign(CENTER,CENTER);
      text(num,(x+w1+w2+w3/2)+j*w3,y+h/22);
    }
  }for(int i=1;i<=10;i++){
    if(Mentsu[0]==i){
      text("●",x+w1+w2+w3/2,y+h/11+h/22+(i-1)*h/11);//選択したところに●を表示
    }
  }for(int i=1;i<=10;i++){
    if(Mentsu[1]==i){
      text("●",x+w1+w2+w3/2+w3,y+h/11+h/22+(i-1)*h/11);
    }
  }for(int i=1;i<=10;i++){
    if(Mentsu[2]==i){
      text("●",x+w1+w2+w3/2+w3*2,y+h/11+h/22+(i-1)*h/11);
    }
  }for(int i=1;i<=10;i++){
    if(Mentsu[3]==i){
      text("●",x+w1+w2+w3/2+w3*3,y+h/11+h/22+(i-1)*h/11);
    }
  }
  
  for(int i=0;i<mentsu.length;i++){
    textAlign(CENTER,CENTER);
    fill(0);
    text(mentsu[i],x+w1/2,y+(h/22+(i+1)*h/11));
    text(fu[i],x+w1+w2/2,y+(h/22+(i+1)*h/11));
  }
  textAlign(LEFT,BOTTOM);
  text("面子構成",x,y);
}

void show_cal_panel(float x, float y, float w, float h){//計算ボタンとリセットボタンを表示
  fill(255);
  rect(x, y, w, h);
  line(x+w/2, y, x+w/2, y+h);
  textAlign(CENTER,CENTER);
  fill(0);
  text("計算",x+w/4, y+h/2);
  text("リセット",x+3*w/4, y+h/2);
}

void show_res_panel1(float x, float y, float w1, float w2, float h){//子の計算結果が表示されるパネルを表示
  textAlign(CENTER,CENTER);
  String ko[]={"子","ロン上がり","ツモ上がり","ツモ合計"};
  for(int i=0;i<4;i++){
    fill(255);
    rect(x,y+(h/4)*i,w1,h/4);
    rect(x+w1,y+(h/4)*i,w2*2,h/4);
    fill(0);
    text(ko[i],x+w1/2,y+h/8+i*h/4);
  }
  fill(255);
  line(x+w1+w2,y,x+w1+w2,y+h);
  fill(0);
  text("積み符なし",x+w1+w2/2,y+h/8);
  text("積み符あり",x+w1+3*w2/2,y+h/8);
  textAlign(LEFT,CENTER);
  if(cal==1){//計算ボタンが押されたとき計算結果を表示
      text(score_rkn,x+w1,y+h/8+h/4);
      text(score_rka,x+w1+w2,y+h/8+h/4);
    }else if(cal==2){
      text(score_tkn,x+w1,y+h/8+h*2/4);
      text(score_tka,x+w1+w2,y+h/8+h*2/4);
      text(score_gkn,x+w1,y+h/8+h*3/4);
      text(score_gka,x+w1+w2,y+h/8+h*3/4);
  }
}

void show_res_panel2(float x, float y, float w1, float w2, float h){//親の計算結果が表示されるパネルを表示
  textAlign(CENTER,CENTER);
  String oya[]={"親","ロン上がり","ツモ上がり","ツモ合計"};
  for(int i=0;i<4;i++){
    fill(255);
    rect(x,y+(h/4)*i,w1,h/4);
    rect(x+w1,y+(h/4)*i,w2*2,h/4);
    fill(0);
    text(oya[i],x+w1/2,y+h/8+i*h/4);
  }
  fill(255);
  line(x+w1+w2,y,x+w1+w2,y+h);
  fill(0);
  text("積み符なし",x+w1+w2/2,y+h/8);
  text("積み符あり",x+w1+3*w2/2,y+h/8);
  textAlign(LEFT,CENTER);
  if(cal==1){//計算ボタンが押されたとき計算結果を表示
      text(score_ron,x+w1,y+h/8+h/4);
      text(score_roa,x+w1+w2,y+h/8+h/4);
    }else if(cal==2){
      text(score_ton,x+w1,y+h/8+h*2/4);
      text(score_toa,x+w1+w2,y+h/8+h*2/4);
      text(score_gon,x+w1,y+h/8+h*3/4);
      text(score_goa,x+w1+w2,y+h/8+h*3/4);
  }
}

    
    
