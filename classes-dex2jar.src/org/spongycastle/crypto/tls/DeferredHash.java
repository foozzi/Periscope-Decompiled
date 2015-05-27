package org.spongycastle.crypto.tls;

import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Shorts;

class DeferredHash
  implements TlsHandshakeHash
{
  protected TlsContext aSQ;
  private DigestInputBuffer aTJ;
  private Hashtable aTK;
  private Short aTL;
  
  DeferredHash()
  {
    this.aTJ = new DigestInputBuffer();
    this.aTK = new Hashtable();
    this.aTL = null;
  }
  
  private DeferredHash(Short paramShort, Digest paramDigest)
  {
    this.aTJ = null;
    this.aTK = new Hashtable();
    this.aTL = paramShort;
    this.aTK.put(paramShort, paramDigest);
  }
  
  public int doFinal(byte[] paramArrayOfByte, int paramInt)
  {
    throw new IllegalStateException("Use fork() to get a definite Digest");
  }
  
  public String iG()
  {
    throw new IllegalStateException("Use fork() to get a definite Digest");
  }
  
  public int iJ()
  {
    throw new IllegalStateException("Use fork() to get a definite Digest");
  }
  
  public TlsHandshakeHash lT()
  {
    int i = this.aSQ.lH().mC();
    if (i == 0)
    {
      CombinedHash localCombinedHash = new CombinedHash();
      localCombinedHash.ˊ(this.aSQ);
      this.aTJ.ˎ(localCombinedHash);
      return localCombinedHash.lT();
    }
    this.aTL = Shorts.valueOf(TlsUtils.Ỉ(i));
    ˊ(this.aTL);
    return this;
  }
  
  public void lU()
  {
    ml();
  }
  
  public TlsHandshakeHash lV()
  {
    Object localObject = TlsUtils.ˊ(this.aTL.shortValue(), (Digest)this.aTK.get(this.aTL));
    if (this.aTJ != null) {
      this.aTJ.ˎ((Digest)localObject);
    }
    localObject = new DeferredHash(this.aTL, (Digest)localObject);
    ((DeferredHash)localObject).ˊ(this.aSQ);
    return localObject;
  }
  
  public Digest lW()
  {
    ml();
    if (this.aTJ != null)
    {
      Digest localDigest = TlsUtils.ͺ(this.aTL.shortValue());
      this.aTJ.ˎ(localDigest);
      return localDigest;
    }
    return TlsUtils.ˊ(this.aTL.shortValue(), (Digest)this.aTK.get(this.aTL));
  }
  
  protected void ml()
  {
    if ((this.aTJ != null) && (this.aTK.size() <= 4))
    {
      Enumeration localEnumeration = this.aTK.elements();
      while (localEnumeration.hasMoreElements())
      {
        Digest localDigest = (Digest)localEnumeration.nextElement();
        this.aTJ.ˎ(localDigest);
      }
      this.aTJ = null;
    }
  }
  
  public void reset()
  {
    if (this.aTJ != null)
    {
      this.aTJ.reset();
      return;
    }
    Enumeration localEnumeration = this.aTK.elements();
    while (localEnumeration.hasMoreElements()) {
      ((Digest)localEnumeration.nextElement()).reset();
    }
  }
  
  public void update(byte paramByte)
  {
    if (this.aTJ != null)
    {
      this.aTJ.write(paramByte);
      return;
    }
    Enumeration localEnumeration = this.aTK.elements();
    while (localEnumeration.hasMoreElements()) {
      ((Digest)localEnumeration.nextElement()).update(paramByte);
    }
  }
  
  public void update(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.aTJ != null)
    {
      this.aTJ.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
    Enumeration localEnumeration = this.aTK.elements();
    while (localEnumeration.hasMoreElements()) {
      ((Digest)localEnumeration.nextElement()).update(paramArrayOfByte, paramInt1, paramInt2);
    }
  }
  
  protected void ˊ(Short paramShort)
  {
    if (!this.aTK.containsKey(paramShort))
    {
      Digest localDigest = TlsUtils.ͺ(paramShort.shortValue());
      this.aTK.put(paramShort, localDigest);
    }
  }
  
  public void ˊ(TlsContext paramTlsContext)
  {
    this.aSQ = paramTlsContext;
  }
  
  public void ˎ(short paramShort)
  {
    if (this.aTJ == null) {
      throw new IllegalStateException("Too late to track more hash algorithms");
    }
    ˊ(Shorts.valueOf(paramShort));
  }
  
  public byte[] ˏ(short paramShort)
  {
    Digest localDigest = (Digest)this.aTK.get(Shorts.valueOf(paramShort));
    if (localDigest == null) {
      throw new IllegalStateException("HashAlgorithm " + paramShort + " is not being tracked");
    }
    localDigest = TlsUtils.ˊ(paramShort, localDigest);
    if (this.aTJ != null) {
      this.aTJ.ˎ(localDigest);
    }
    byte[] arrayOfByte = new byte[localDigest.iJ()];
    localDigest.doFinal(arrayOfByte, 0);
    return arrayOfByte;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DeferredHash
 * JD-Core Version:    0.7.0.1
 */