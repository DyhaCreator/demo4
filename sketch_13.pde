int qua = 1000;
float x[] = new float[qua];
float y[] = new float[qua];
float z[] = new float[qua];
void setup(){
  size(400,400);
  for(int i=0;i<qua;i++){
    x[i]=random(width);
    y[i]=random(height);
    z[i]=random(3);
  }
  noStroke();
}
void draw(){
  background(0);
  for(int i=0;i<qua;i++){
    circle(x[i],y[i],z[i]);
    z[i]+=abs(width/2-x[i])/10000+abs(width/2-y[i])/10000;
    x[i]-=z[i]*((width/2-x[i])/900);
    y[i]-=z[i]*((height/2-y[i])/900);
    if(x[i]>width||y[i]>height||x[i]<0||y[i]<0){
      x[i]=random(width);
      y[i]=random(height);
      z[i]=0;
    }
  }
}
