int rule=0;
int han=1;
int tsumiba=0;
int Fu[]={0,0,0,0,0,0,0};
int fu_sum=20;
int Janto=0;
int Machi=0;
int Tsumo=0;
int Mentsu[]={0,0,0,0};
int cal=0;
int scoreK;
int scoreO;
int chitoi=1;
String score_rkn,score_rka,score_ron,score_roa,score_tkn,score_tka,score_ton,score_toa,score_gkn,score_gka,score_gon,score_goa;

int kiriage(int n){//百の位で切り上げ
  if(n%100!=0){
    return n+(100-n%100);
  }
  return n;
}


void mousePressed(){
  if(mouseX>x2+w1/3 && mouseX<x2+2*w1/3 && mouseY>y1 && mouseY<y1+h1){//翻数を＋１
    han++;
  }else if(mouseX>x2+2*w1/3 && mouseX<x2+w1 && mouseY>y1 && mouseY<y1+h1 && han>=2){//翻数を-１
    han--;
  }else if(mouseX>x3+w1/3 && mouseX<x3+2*w1/3 && mouseY>y1 && mouseY<y1+h1){//積み場を+1
    tsumiba++;
  }else if(mouseX>x3+2*w1/3 && mouseX<x3+w1 && mouseY>y1 && mouseY<y1+h1 && tsumiba>=1){//積み場を-1
    tsumiba--;
  }else if(mouseX>x1+w2+w3 && mouseX<x1+w2+w3*2){//指定したい雀頭の空欄をクリック
    for(int i=1;i<=5;i++){
      if(mouseY>y2+(i-1)*h2 && mouseY<y2+i*h2){
        Janto=i;
      }
    }if(Janto==1 || Janto==2){
      Fu[0]=0;
    }else if(Janto==3 || Janto==4 || Janto==5){
      Fu[0]=2;
    }
  }else if(mouseX>x2+w2+w3 && mouseX<x2+w2+w3*2){//指定したい待ちの形の空欄をクリック
    for(int i=1;i<=5;i++){
      if(mouseY>y2+(i-1)*h2 && mouseY<y2+i*h2){
        Machi=i;
      }
    }if(Machi==1 || Machi==2){
      Fu[1]=0;
    }else if(Machi==3 || Machi==4 || Machi==5){
      Fu[1]=2;
    }
  }else if(mouseX>x4+w2+w3 && mouseX<x4+w2+w3*2){//ツモかロンの空欄をクリック
    for(int i=1;i<=2;i++){
      if(mouseY>y2+(i-1)*h2 && mouseY<y2+h2*i){
        Tsumo=i;
      }
    }if(Tsumo==2){
      Fu[2]=2;
    }
  }else if(mouseX>x5+w4+w3 && mouseX<x5+w4+w3*2){//１つ目の面子をクリックして指定
    for(int i=1;i<=10;i++){
      if(mouseY>y2+i*h2 && mouseY<y2+h2*(i+1)){
        Mentsu[0]=i;
      }
    }if(Mentsu[0]==1 || Mentsu[0]==2){
      Fu[3]=0;
    }else if(Mentsu[0]==3){
      Fu[3]=2;
    }else if(Mentsu[0]==4 || Mentsu[0]==7){
      Fu[3]=4;
    }else if(Mentsu[0]==5 || Mentsu[0]==8){
      Fu[3]=8;
    }else if(Mentsu[0]==6 || Mentsu[0]==9){
      Fu[3]=16;
    }else if(Mentsu[0]==10){
      Fu[3]=32;
    }
  }else if(mouseX>x5+w4+w3*2 && mouseX<x5+w4+w3*3){//２つ目の面子をクリックして指定
    for(int i=1;i<=10;i++){
      if(mouseY>y2+i*h2 && mouseY<y2+h2*(i+1)){
        Mentsu[1]=i;
      }
    }if(Mentsu[1]==1 || Mentsu[1]==2){
      Fu[4]=0;
    }else if(Mentsu[1]==3){
      Fu[4]=2;
    }else if(Mentsu[1]==4 || Mentsu[1]==7){
      Fu[4]=4;
    }else if(Mentsu[1]==5 || Mentsu[1]==8){
      Fu[4]=8;
    }else if(Mentsu[1]==6 || Mentsu[1]==9){
      Fu[4]=16;
    }else if(Mentsu[1]==10){
      Fu[4]=32;
    }
  }else if(mouseX>x5+w4+w3*3 && mouseX<x5+w4+w3*4){//３つ目の面子をクリックして指定
    for(int i=1;i<=10;i++){
      if(mouseY>y2+i*h2 && mouseY<y2+h2*(i+1)){
        Mentsu[2]=i;
      }
    }if(Mentsu[2]==1 || Mentsu[2]==2){
      Fu[5]=0;
    }else if(Mentsu[2]==3){
      Fu[5]=2;
    }else if(Mentsu[2]==4 || Mentsu[2]==7){
      Fu[5]=4;
    }else if(Mentsu[2]==5 || Mentsu[2]==8){
      Fu[5]=8;
    }else if(Mentsu[2]==6 || Mentsu[2]==9){
      Fu[5]=16;
    }else if(Mentsu[2]==10){
      Fu[5]=32;
    }
  }else if(mouseX>x5+w4+w3*4 && mouseX<x5+w4+w3*5){//４つ目の面子をクリックして指定
    for(int i=1;i<=10;i++){
      if(mouseY>y2+i*h2 && mouseY<y2+h2*(i+1)){
        Mentsu[3]=i;
      }
    }if(Mentsu[3]==1 || Mentsu[3]==2){
      Fu[6]=0;
    }else if(Mentsu[3]==3){
      Fu[6]=2;
    }else if(Mentsu[3]==4 || Mentsu[3]==7){
      Fu[6]=4;
    }else if(Mentsu[3]==5 || Mentsu[3]==8){
      Fu[6]=8;
    }else if(Mentsu[3]==6 || Mentsu[3]==9){
      Fu[6]=16;
    }else if(Mentsu[3]==10){
      Fu[6]=32;
    }
  }
  
  
  else if(mouseX>x1 && mouseX<x1+w5/2 && mouseY>y3 && mouseY<y3+h1){//計算ボタンをクリックしたとき点数を計算
    if(Tsumo==1){
      cal=1;
    }else if(Tsumo==2){
      cal=2;
    }
    fu_sum=20;
    if(Tsumo!=2 || Mentsu[0]!=2 || Mentsu[1]!=2 || Mentsu[2]!=2 || Mentsu[3]!=2 || Machi!=1 || Janto!=1){//平和ツモ以外のとき符を計算
      for(int i=0;i<Fu.length;i++){
        fu_sum=fu_sum+Fu[i];
      }if(fu_sum%10!=0){
        fu_sum=fu_sum+10-fu_sum%10;
      }if(chitoi==2){
        fu_sum=25;
      }
    }
    if(kiriage(fu_sum*4*int(pow(2,han+2)))<8000){//満貫以下の点数のとき
    scoreK=kiriage(fu_sum*4*int(pow(2,han+2)));
    scoreO=kiriage(fu_sum*6*int(pow(2,han+2)));
    score_rkn=str(scoreK);
    score_rka=str(scoreK+tsumiba*300);
    score_tkn=str(kiriage(scoreK/4))+"/"+str(kiriage(scoreK/2));
    score_tka=str(kiriage(scoreK/4)+tsumiba*100)+"/"+str(kiriage(scoreK/2)+tsumiba*100);
    score_gkn=str(kiriage(scoreK/4)*2+kiriage(scoreK/2));
    score_gka=str(kiriage(scoreK/4)*2+kiriage(scoreK/2)+tsumiba*300);
    score_ron=str(scoreO);
    score_roa=str(scoreO+tsumiba*300);
    score_ton=str(kiriage(scoreO/3))+"all";
    score_toa=str(kiriage(scoreO/3)+tsumiba*100)+"all";
    score_gon=str(kiriage(scoreO/3)*3);
    score_goa=str(kiriage(scoreO/3)*3+tsumiba*300);
    }else if(kiriage(fu_sum*4*int(pow(2,han+2)))>=8000){//満貫以上の点数のとき
      if(han==3 && fu_sum>=70 || han==4 && fu_sum>=40 || han==5){
        scoreK=8000;
        scoreO=12000;
        voice1=minim.loadFile("満貫.mp3");//音声ファイルを読み込み
        voice1.play();//音声を再生
      }else if(han==6 || han==7){
        scoreK=12000;
        scoreO=18000;
        voice2=minim.loadFile("はねまん.mp3");
        voice2.play();
      }else if(han==8 || han==9 || han==10){
        scoreK=16000;
        scoreO=24000;
        voice3=minim.loadFile("倍満.mp3");
        voice3.play();
      }else if(han==11 || han==12){
        scoreK=24000;
        scoreO=36000;
        voice4=minim.loadFile("三倍万.mp3");
        voice4.play();
      }else if(han>=13){
        scoreK=32000;
        scoreO=48000;
        voice5=minim.loadFile("役満.mp3");
        voice5.play();
      }
    score_rkn=str(scoreK);
    score_rka=str(scoreK+tsumiba*300);
    score_tkn=str(kiriage(scoreK/4))+"/"+str(kiriage(scoreK/2));
    score_tka=str(kiriage(scoreK/4)+tsumiba*100)+"/"+str(kiriage(scoreK/2)+tsumiba*100);
    score_gkn=str(kiriage(scoreK/4)*2+kiriage(scoreK/2));
    score_gka=str(kiriage(scoreK/4)*2+kiriage(scoreK/2)+tsumiba*300);
    score_ron=str(scoreO);
    score_roa=str(scoreO+tsumiba*300);
    score_ton=str(kiriage(scoreO/3))+"all";
    score_toa=str(kiriage(scoreO/3)+tsumiba*100)+"all";
    score_gon=str(kiriage(scoreO/3)*3);
    score_goa=str(kiriage(scoreO/3)*3+tsumiba*300);
    }
  }else if(mouseX>x1+w5/2 && mouseX<x1+w5 && mouseY>y3 && mouseY<y3+h1){//リセットボタンを押したときすべての変数を初期値に
    rule=0;
    han=1;
    tsumiba=0;
    for(int i=0;i<Fu.length;i++){
      Fu[i]=0;
    }
    fu_sum=20;
    Janto=0;
    Machi=0;
    Tsumo=0;
    for(int i=0;i<Mentsu.length;i++){
      Mentsu[i]=0;
    }
    cal=0;
    chitoi=1;
  }else if(mouseX>x5 && mouseX<x5+w1/2 && mouseY>y1 && mouseY<y1+h1){
    chitoi=1;
  }else if(mouseX>x5+w1/2 && mouseX<x5+w1 && mouseY>y1 && mouseY<y1+h1){
    chitoi=2;
  }
}
    
    
