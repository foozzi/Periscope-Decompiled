package o;

class ᴬ$if
  extends ῑ.ˊ
{
  public ᴬ$if(ᴬ paramᴬ)
  {
    super(paramᴬ);
  }
  
  public ῑ Ӏ()
  {
    if (ᴬ.ˊ(this.ﻪ) != null) {
      return ᴬ.ˊ(this.ﻪ).Ӏ();
    }
    return null;
  }
  
  protected boolean ײ()
  {
    if ((ᴬ.ˋ(this.ﻪ) != null) && (ᴬ.ˋ(this.ﻪ).ˊ(ᴬ.ˎ(this.ﻪ))))
    {
      ῑ localῑ = Ӏ();
      return (localῑ != null) && (localῑ.isShowing());
    }
    return false;
  }
  
  protected boolean ᑉ()
  {
    ῑ localῑ = Ӏ();
    if (localῑ != null)
    {
      localῑ.dismiss();
      return true;
    }
    return false;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´¬.if
 * JD-Core Version:    0.7.0.1
 */