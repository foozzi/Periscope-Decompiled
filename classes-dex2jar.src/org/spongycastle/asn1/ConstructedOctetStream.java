package org.spongycastle.asn1;

import java.io.InputStream;

class ConstructedOctetStream
  extends InputStream
{
  private final ASN1StreamParser aaT;
  private boolean aaW = true;
  private InputStream aaX;
  
  ConstructedOctetStream(ASN1StreamParser paramASN1StreamParser)
  {
    this.aaT = paramASN1StreamParser;
  }
  
  public int read()
  {
    ASN1OctetStringParser localASN1OctetStringParser;
    if (this.aaX == null)
    {
      if (!this.aaW) {
        return -1;
      }
      localASN1OctetStringParser = (ASN1OctetStringParser)this.aaT.eU();
      if (localASN1OctetStringParser == null) {
        return -1;
      }
      this.aaW = false;
    }
    for (this.aaX = localASN1OctetStringParser.eL();; this.aaX = localASN1OctetStringParser.eL())
    {
      int i = this.aaX.read();
      if (i >= 0) {
        return i;
      }
      localASN1OctetStringParser = (ASN1OctetStringParser)this.aaT.eU();
      if (localASN1OctetStringParser == null)
      {
        this.aaX = null;
        return -1;
      }
    }
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    ASN1OctetStringParser localASN1OctetStringParser;
    if (this.aaX == null)
    {
      if (!this.aaW) {
        return -1;
      }
      localASN1OctetStringParser = (ASN1OctetStringParser)this.aaT.eU();
      if (localASN1OctetStringParser == null) {
        return -1;
      }
      this.aaW = false;
      this.aaX = localASN1OctetStringParser.eL();
    }
    int i = 0;
    for (;;)
    {
      int j = this.aaX.read(paramArrayOfByte, paramInt1 + i, paramInt2 - i);
      if (j >= 0)
      {
        j = i + j;
        i = j;
        if (j == paramInt2) {
          return j;
        }
      }
      else
      {
        localASN1OctetStringParser = (ASN1OctetStringParser)this.aaT.eU();
        if (localASN1OctetStringParser == null)
        {
          this.aaX = null;
          if (i < 1) {
            return -1;
          }
          return i;
        }
        this.aaX = localASN1OctetStringParser.eL();
      }
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.asn1.ConstructedOctetStream
 * JD-Core Version:    0.7.0.1
 */