package o;

class ᴫ
  extends ᚁ
{
  public ᴫ(ᒳ paramᒳ)
  {
    super(paramᒳ);
    paramᒳ.ˊ(ب.ӌ());
  }
  
  public void ˊ(প paramপ, long paramLong, boolean paramBoolean)
  {
    paramপ.ʰ(4);
    while (paramপ.ϋ() > 1)
    {
      int i = 0;
      int k;
      int j;
      do
      {
        k = paramপ.readUnsignedByte();
        j = i + k;
        i = j;
      } while (k == 255);
      i = 0;
      int m;
      do
      {
        m = paramপ.readUnsignedByte();
        k = i + m;
        i = k;
      } while (m == 255);
      if (ƫ.ˊ(j, k, paramপ))
      {
        this.wZ.ˊ(paramপ, k);
        this.wZ.ˊ(paramLong, 1, k, 0, null);
      }
      else
      {
        paramপ.ʰ(k);
      }
    }
  }
  
  public void ᒮ() {}
  
  public void ᴫ() {}
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´«
 * JD-Core Version:    0.7.0.1
 */