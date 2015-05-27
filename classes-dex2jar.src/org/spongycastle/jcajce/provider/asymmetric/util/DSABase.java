package org.spongycastle.jcajce.provider.asymmetric.util;

import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;

public abstract class DSABase
  extends SignatureSpi
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  public Digest aFH;
  public DSA aWF;
  protected DSAEncoder aXM;
  
  public DSABase(Digest paramDigest, DSA paramDSA, DSAEncoder paramDSAEncoder)
  {
    this.aFH = paramDigest;
    this.aWF = paramDSA;
    this.aXM = paramDSAEncoder;
  }
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(String paramString, Object paramObject)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineSetParameter(AlgorithmParameterSpec paramAlgorithmParameterSpec)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected byte[] engineSign()
  {
    Object localObject = new byte[this.aFH.iJ()];
    this.aFH.doFinal((byte[])localObject, 0);
    try
    {
      localObject = this.aWF.ᵎ((byte[])localObject);
      localObject = this.aXM.ˎ(localObject[0], localObject[1]);
      return localObject;
    }
    catch (Exception localException)
    {
      throw new SignatureException(localException.toString());
    }
  }
  
  protected void engineUpdate(byte paramByte)
  {
    this.aFH.update(paramByte);
  }
  
  protected void engineUpdate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.aFH.update(paramArrayOfByte, paramInt1, paramInt2);
  }
  
  protected boolean engineVerify(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[this.aFH.iJ()];
    this.aFH.doFinal(arrayOfByte, 0);
    try
    {
      paramArrayOfByte = this.aXM.ᔉ(paramArrayOfByte);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SignatureException("error decoding signature bytes.");
    }
    return this.aWF.ˊ(arrayOfByte, paramArrayOfByte[0], paramArrayOfByte[1]);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.util.DSABase
 * JD-Core Version:    0.7.0.1
 */