package org.spongycastle.asn1;

import java.io.InputStream;

abstract class LimitedInputStream
  extends InputStream
{
  protected final InputStream aaA;
  private int aaB;
  
  LimitedInputStream(InputStream paramInputStream, int paramInt)
  {
    this.aaA = paramInputStream;
    this.aaB = paramInt;
  }
  
  int getRemaining()
  {
    return this.aaB;
  }
  
  protected void ᵄ(boolean paramBoolean)
  {
    if ((this.aaA instanceof IndefiniteLengthInputStream)) {
      ((IndefiniteLengthInputStream)this.aaA).ᘁ(paramBoolean);
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.LimitedInputStream
 * JD-Core Version:    0.7.0.1
 */