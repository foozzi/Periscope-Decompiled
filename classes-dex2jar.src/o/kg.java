package o;

import java.util.Hashtable;
import java.util.Vector;

abstract class kg
  extends lu
{
  protected volatile int NI = 5;
  protected volatile int NJ = 5000;
  protected volatile int NK = 0;
  
  kg(Vector paramVector, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, Hashtable paramHashtable)
  {
    super(paramVector, paramInt1, paramInt2, paramHashtable);
    this.NI = paramInt3;
    this.NJ = paramInt4;
    this.NK = paramInt5;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.kg
 * JD-Core Version:    0.7.0.1
 */