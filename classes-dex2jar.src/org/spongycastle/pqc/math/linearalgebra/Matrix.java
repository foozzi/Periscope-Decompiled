package org.spongycastle.pqc.math.linearalgebra;

public abstract class Matrix
{
  protected int bjp;
  protected int numColumns;
  
  public int getNumColumns()
  {
    return this.numColumns;
  }
  
  public int getNumRows()
  {
    return this.bjp;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.Matrix
 * JD-Core Version:    0.7.0.1
 */