package org.spongycastle.pqc.math.linearalgebra;

public class GF2mMatrix
  extends Matrix
{
  protected GF2mField bfX;
  protected int[][] biL;
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof GF2mMatrix))) {
      return false;
    }
    paramObject = (GF2mMatrix)paramObject;
    if ((!this.bfX.equals(paramObject.bfX)) || (paramObject.bjp != this.numColumns) || (paramObject.numColumns != this.numColumns)) {
      return false;
    }
    int i = 0;
    while (i < this.bjp)
    {
      int j = 0;
      while (j < this.numColumns)
      {
        if (this.biL[i][j] != paramObject.biL[i][j]) {
          return false;
        }
        j += 1;
      }
      i += 1;
    }
    return true;
  }
  
  public int hashCode()
  {
    int j = (this.bfX.hashCode() * 31 + this.bjp) * 31 + this.numColumns;
    int i = 0;
    while (i < this.bjp)
    {
      int k = 0;
      while (k < this.numColumns)
      {
        j = j * 31 + this.biL[i][k];
        k += 1;
      }
      i += 1;
    }
    return j;
  }
  
  public String toString()
  {
    String str = this.bjp + " x " + this.numColumns + " Matrix over " + this.bfX.toString() + ": \n";
    int i = 0;
    while (i < this.bjp)
    {
      int j = 0;
      while (j < this.numColumns)
      {
        str = str + this.bfX.แ(this.biL[i][j]) + " : ";
        j += 1;
      }
      str = str + "\n";
      i += 1;
    }
    return str;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.math.linearalgebra.GF2mMatrix
 * JD-Core Version:    0.7.0.1
 */