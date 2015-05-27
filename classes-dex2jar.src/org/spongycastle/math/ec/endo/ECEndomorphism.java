package org.spongycastle.math.ec.endo;

import org.spongycastle.math.ec.ECPointMap;

public abstract interface ECEndomorphism
{
  public abstract ECPointMap qk();
  
  public abstract boolean ql();
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.math.ec.endo.ECEndomorphism
 * JD-Core Version:    0.7.0.1
 */