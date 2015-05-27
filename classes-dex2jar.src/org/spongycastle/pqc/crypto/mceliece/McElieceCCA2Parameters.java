package org.spongycastle.pqc.crypto.mceliece;

import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA256Digest;

public class McElieceCCA2Parameters
  extends McElieceParameters
{
  public Digest aFH = new SHA256Digest();
  
  public McElieceCCA2Parameters() {}
  
  public McElieceCCA2Parameters(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
  }
  
  public Digest rh()
  {
    return this.aFH;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.crypto.mceliece.McElieceCCA2Parameters
 * JD-Core Version:    0.7.0.1
 */