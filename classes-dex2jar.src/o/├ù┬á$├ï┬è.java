package o;

class נ$ˊ
  implements Runnable
{
  private נ$ˊ(נ paramנ) {}
  
  public void run()
  {
    if (!נ.ˊ(this.ךּ)) {
      return;
    }
    if (נ.ˋ(this.ךּ))
    {
      נ.ˊ(this.ךּ, false);
      נ.ˎ(this.ךּ).start();
    }
    נ.if localif = נ.ˎ(this.ךּ);
    if ((localif.isFinished()) || (!נ.ˏ(this.ךּ)))
    {
      נ.ˋ(this.ךּ, false);
      return;
    }
    if (נ.ᐝ(this.ךּ))
    {
      נ.ˎ(this.ךּ, false);
      נ.ʻ(this.ךּ);
    }
    localif.ᖮ();
    int i = localif.ᵙ();
    int j = localif.ᵛ();
    this.ךּ.ʻ(i, j);
    ﺑ.ˊ(נ.ʼ(this.ךּ), this);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.× .Ë
 * JD-Core Version:    0.7.0.1
 */