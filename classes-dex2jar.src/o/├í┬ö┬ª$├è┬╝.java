package o;

final class ᔦ$ʼ
  extends ᔦ.ʻ
{
  private final ᔦ.ʻ[] oT;
  
  public ᔦ$ʼ(ᔦ.ʻ... paramVarArgs)
  {
    super(0, new ᔦ.ʻ[0]);
    this.oT = paramVarArgs;
  }
  
  public int getSize()
  {
    int j = 0;
    ᔦ.ʻ[] arrayOfʻ = this.oT;
    int k = arrayOfʻ.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfʻ[i].getSize();
      i += 1;
    }
    return j;
  }
  
  public void ˋ(ɤ paramɤ)
  {
    ᔦ.ʻ[] arrayOfʻ = this.oT;
    int j = arrayOfʻ.length;
    int i = 0;
    while (i < j)
    {
      arrayOfʻ[i].ˋ(paramɤ);
      i += 1;
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦.Ê¼
 * JD-Core Version:    0.7.0.1
 */