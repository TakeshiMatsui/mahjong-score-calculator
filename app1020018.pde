import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer voice1,voice2,voice3,voice4,voice5;//サウンドデータ格納用の変数
float x1,w1,x2,x3,y1,h1,y2,w2,w3,w4,h2,x4,x5,y3,y4,y5,w5,w6,w7,h3;
void setup(){
  size(1100,800);
  background(255);
  PFont font = createFont("Yu Gothic",64,true);
  textFont(font);
  textSize(20);
  x1=10;
  w1=150;
  x2=x1+w1+60;
  x3=x2+w1+80;
  y1=10;
  h1=50;
  y2=y1+h1+30;
  w2=100;
  w3=50;
  w4=180;
  h2=40;
  x4=x2+w2+w3*2+10;
  x5=x4+w2+w3*2+10;
  y3=y2+h2*5+50;
  w5=200;
  w6=100;
  w7=250;
  h3=160;
  y4=y3+h1+10;
  y5=y4+h3+10;
  minim=new Minim(this);//初期化
}
void draw(){
show_han_panel(x2,y1,w1,h1);//翻数を指定するパネル
show_tsumiba_panel(x3,y1,w1,h1);//積み場
show_janto_panel(x1,y2,w2,w3,w3,h2*5);//雀頭
show_machi_panel(x2,y2,w2,w3,w3,h2*5);//待ちの形
show_tsumofu_panel(x4,y2,w2,w3,w3,h2*2);//ツモorロン
show_mentsu_panel(x5,y2,w4,w3,w3,h2*11);//面子構成
show_cal_panel(x1,y3,w5,h1);//計算、リセット
show_res_panel1(x1,y4,w6,w7,h3);//子の計算結果
show_res_panel2(x1,y5,w6,w7,h3);//親の計算結果
show_chitoi_panel(x5, y1, w1, h1);

if(Tsumo==1){
    if(Mentsu[0]%2==1 || Mentsu[1]%2==1 || Mentsu[2]%2==1 || Mentsu[3]%2==1){//面前ロンのとき面前加符10、鳴きのロンの時0
      Fu[2]=0;
    }else{
      Fu[2]=10;
    }
  }
}
