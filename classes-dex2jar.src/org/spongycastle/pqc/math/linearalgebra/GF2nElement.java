package org.spongycastle.pqc.math.linearalgebra;

public abstract class GF2nElement
  implements GFElement
{
  protected GF2nField biX;
  protected int biY;
  
  public abstract Object clone();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2nElement
 * JD-Core Version:    0.7.0.1
 */