package o;

abstract class ᔦ$ʻ
{
  private final ʻ[] oS;
  private final int tag;
  
  public ᔦ$ʻ(int paramInt, ʻ... paramVarArgs)
  {
    this.tag = paramInt;
    if (paramVarArgs == null) {
      paramVarArgs = ᔦ.ᓺ();
    }
    this.oS = paramVarArgs;
  }
  
  public int getSize()
  {
    int i = ᓾ();
    return i + ɤ.ﺗ(i) + ɤ.ﯾ(this.tag);
  }
  
  public void ˊ(ɤ paramɤ) {}
  
  public void ˋ(ɤ paramɤ)
  {
    paramɤ.ו(this.tag, 2);
    paramɤ.ﹰ(ᓾ());
    ˊ(paramɤ);
    ʻ[] arrayOfʻ = this.oS;
    int j = arrayOfʻ.length;
    int i = 0;
    while (i < j)
    {
      arrayOfʻ[i].ˋ(paramɤ);
      i += 1;
    }
  }
  
  public int ᓻ()
  {
    return 0;
  }
  
  public int ᓾ()
  {
    int j = ᓻ();
    ʻ[] arrayOfʻ = this.oS;
    int k = arrayOfʻ.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfʻ[i].getSize();
      i += 1;
    }
    return j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦.Ê»
 * JD-Core Version:    0.7.0.1
 */