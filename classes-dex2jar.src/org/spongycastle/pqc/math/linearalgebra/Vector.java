package org.spongycastle.pqc.math.linearalgebra;

public abstract class Vector
{
  protected int length;
  
  public final int getLength()
  {
    return this.length;
  }
  
  public abstract Vector ˏ(Vector paramVector);
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.Vector
 * JD-Core Version:    0.7.0.1
 */