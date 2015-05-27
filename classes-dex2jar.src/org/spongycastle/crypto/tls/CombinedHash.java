package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Digest;

class CombinedHash
  implements TlsHandshakeHash
{
  protected Digest aKa;
  protected TlsContext aSQ;
  protected Digest aTc;
  
  CombinedHash()
  {
    this.aTc = TlsUtils.ͺ((short)1);
    this.aKa = TlsUtils.ͺ((short)2);
  }
  
  CombinedHash(CombinedHash paramCombinedHash)
  {
    this.aSQ = paramCombinedHash.aSQ;
    this.aTc = TlsUtils.ˊ((short)1, paramCombinedHash.aTc);
    this.aKa = TlsUtils.ˊ((short)2, paramCombinedHash.aKa);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    if ((this.aSQ != null) && (TlsUtils.ˎ(this.aSQ)))
    {
      ˊ(this.aTc, SSL3Mac.aUp, SSL3Mac.aUq, 48);
      ˊ(this.aKa, SSL3Mac.aUp, SSL3Mac.aUq, 40);
    }
    int i = this.aTc.doFinal(paramArrayOfByte, paramInt);
    return i + this.aKa.doFinal(paramArrayOfByte, paramInt + i);
  }
  
  public String iG()
  {
    return this.aTc.iG() + " and " + this.aKa.iG();
  }
  
  public int iJ()
  {
    return this.aTc.iJ() + this.aKa.iJ();
  }
  
  public TlsHandshakeHash lT()
  {
    return this;
  }
  
  public void lU() {}
  
  public TlsHandshakeHash lV()
  {
    return new CombinedHash(this);
  }
  
  public Digest lW()
  {
    return new CombinedHash(this);
  }
  
  public void reset()
  {
    this.aTc.reset();
    this.aKa.reset();
  }
  
  public void update(byte paramByte)
  {
    this.aTc.update(paramByte);
    this.aKa.update(paramByte);
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aTc.update(paramArrayOfByte, paramInt1, paramInt2);
    this.aKa.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected void ˊ(Digest paramDigest, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt)
  {
    byte[] arrayOfByte = this.aSQ.lH().aUy;
    paramDigest.update(arrayOfByte, 0, arrayOfByte.length);
    paramDigest.update(paramArrayOfByte1, 0, paramInt);
    paramArrayOfByte1 = new byte[paramDigest.iJ()];
    paramDigest.doFinal(paramArrayOfByte1, 0);
    paramDigest.update(arrayOfByte, 0, arrayOfByte.length);
    paramDigest.update(paramArrayOfByte2, 0, paramInt);
    paramDigest.update(paramArrayOfByte1, 0, paramArrayOfByte1.length);
  }
  
  public void ˊ(TlsContext paramTlsContext)
  {
    this.aSQ = paramTlsContext;
  }
  
  public void ˎ(short paramShort)
  {
    throw new IllegalStateException("CombinedHash only supports calculating the legacy PRF for handshake hash");
  }
  
  public byte[] ˏ(short paramShort)
  {
    throw new IllegalStateException("CombinedHash doesn't support multiple hashes");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.CombinedHash
 * JD-Core Version:    0.7.0.1
 */