package o;

public class ċ<A, B>
{
  private final ｼ<ċ.if<A>, B> jJ;
  
  public ċ()
  {
    this(250);
  }
  
  public ċ(int paramInt)
  {
    this.jJ = new ĩ(this, paramInt);
  }
  
  public void ˊ(A paramA, int paramInt1, int paramInt2, B paramB)
  {
    paramA = ċ.if.ᐝ(paramA, paramInt1, paramInt2);
    this.jJ.put(paramA, paramB);
  }
  
  public B ˏ(A paramA, int paramInt1, int paramInt2)
  {
    paramA = ċ.if.ᐝ(paramA, paramInt1, paramInt2);
    Object localObject = this.jJ.get(paramA);
    paramA.release();
    return localObject;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ä
 * JD-Core Version:    0.7.0.1
 */