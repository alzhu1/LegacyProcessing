String snarkItems[]= {
  "Think of a yes/no question, \n then click the ball to find an answer.", 
  "Dude, I said click the ball.", 
  "Hell no.", 
  "It probably won't happen, bro.", 
  "Why bother?\n It'll turn out bad for you anyways.", 
  "I mean, sure...", 
  "Probably. Good luck with that.", 
  "Go for it, man.\n But if you get hurt, don't blame me.", 
  "Yeah..... no.", 
  "If you're seriously relying on me\n to answer your question,\n that's really sad. Figure it out yourself.", 
  "Dude, I don't know. Try again later.", 
  "I have better things to do, man.\n Ask me later.", 
  "I'm just going to say yes.\n That way you won't ask me again.", 
  "Let me be quite frank here:\n Nobody cares.", 
  "How about I ask you a question:\n Is 1+1=2? That's your answer.", 
  "I could just give you an answer,\n but I'm way too lazy. Ask again.", 
  "Yes, no snark here.", 
  "No, no snark here."
};
boolean answerer=false;
void setup()
{
  size(500, 500);
  noLoop();
}
void draw()
{
  background(230, 230, 30);
  fill(0);
  ellipse(250, 250, 400, 400);
  fill(255);
  ellipse(250, 140, 150, 100);
  noFill();
  stroke(0);
  ellipse(250, 150, 70, 40);
  ellipse(250, 117, 50, 25);
  snark();
}
void snark()
{
  fill(255);
  textAlign(CENTER);
  textSize(20);
  int k=int(random(2, 16));
  int l=int(random(16, 18));
  if (answerer==false)
  {
    text(snarkItems[0], 250, 250);
  }
  if (answerer==true)
  {
    if (get(mouseX, mouseY) == color(230, 230, 30))
    {
      text(snarkItems[1], 250, 250);
    } else
    {
      if (random(0, 1)<.9)
      {
        text(snarkItems[k], 250, 250);
      } else
      {
        text(snarkItems[l], 250, 250);
      }
    }
  }
}
void mousePressed()
{
  if (mouseButton==LEFT)
  {
    answerer=!answerer;
    redraw();
  }
}

