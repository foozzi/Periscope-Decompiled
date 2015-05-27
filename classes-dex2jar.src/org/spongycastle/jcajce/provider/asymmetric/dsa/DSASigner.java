package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.SignatureException;
import java.security.SignatureSpi;
import java.security.interfaces.DSAKey;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;

public class DSASigner
  extends SignatureSpi
  implements PKCSObjectIdentifiers, X509ObjectIdentifiers
{
  private Digest aFH;
  private SecureRandom aFa;
  private DSA aWF;
  
  protected DSASigner(Digest paramDigest, DSA paramDSA)
  {
    this.aFH = paramDigest;
    this.aWF = paramDSA;
  }
  
  private byte[] ˋ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
  {
    return new DERSequence(new ASN1Integer[] { new ASN1Integer(paramBigInteger1), new ASN1Integer(paramBigInteger2) }).getEncoded("DER");
  }
  
  private BigInteger[] ᒡ(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (ASN1Sequence)ASN1Primitive.ՙ(paramArrayOfByte);
    return new BigInteger[] { ((ASN1Integer)paramArrayOfByte.ϲ(0)).eA(), ((ASN1Integer)paramArrayOfByte.ϲ(1)).eA() };
  }
  
  protected Object engineGetParameter(String paramString)
  {
    throw new UnsupportedOperationException("engineSetParameter unsupported");
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    AsymmetricKeyParameter localAsymmetricKeyParameter = DSAUtil.ˊ(paramPrivateKey);
    paramPrivateKey = localAsymmetricKeyParameter;
    if (this.aFa != null) {
      paramPrivateKey = new ParametersWithRandom(localAsymmetricKeyParameter, this.aFa);
    }
    this.aFH.reset();
    this.aWF.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey, SecureRandom paramSecureRandom)
  {
    this.aFa = paramSecureRandom;
    engineInitSign(paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    if ((paramPublicKey instanceof DSAKey)) {
      paramPublicKey = DSAUtil.ˊ(paramPublicKey);
    } else {
      try
      {
        paramPublicKey = new BCDSAPublicKey(SubjectPublicKeyInfo.ן(paramPublicKey.getEncoded()));
        if ((paramPublicKey instanceof DSAKey)) {
          paramPublicKey = DSAUtil.ˊ(paramPublicKey);
        } else {
          throw new InvalidKeyException("can't recognise key type in DSA based signer");
        }
      }
      catch (Exception paramPublicKey)
      {
        throw new InvalidKeyException("can't recognise key type in DSA based signer");
      }
    }
    this.aFH.reset();
    this.aWF.ˊ(false, paramPublicKey);
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
      localObject = ˋ(localObject[0], localObject[1]);
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
      paramArrayOfByte = ᒡ(paramArrayOfByte);
    }
    catch (Exception paramArrayOfByte)
    {
      throw new SignatureException("error decoding signature bytes.");
    }
    return this.aWF.ˊ(arrayOfByte, paramArrayOfByte[0], paramArrayOfByte[1]);
  }
  
  public static class detDSA
    extends DSASigner
  {
    public detDSA()
    {
      super(new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA1Digest())));
    }
  }
  
  public static class detDSA224
    extends DSASigner
  {
    public detDSA224()
    {
      super(new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA224Digest())));
    }
  }
  
  public static class detDSA256
    extends DSASigner
  {
    public detDSA256()
    {
      super(new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA256Digest())));
    }
  }
  
  public static class detDSA384
    extends DSASigner
  {
    public detDSA384()
    {
      super(new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA384Digest())));
    }
  }
  
  public static class detDSA512
    extends DSASigner
  {
    public detDSA512()
    {
      super(new org.spongycastle.crypto.signers.DSASigner(new HMacDSAKCalculator(new SHA512Digest())));
    }
  }
  
  public static class dsa224
    extends DSASigner
  {
    public dsa224()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
  
  public static class dsa256
    extends DSASigner
  {
    public dsa256()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
  
  public static class dsa384
    extends DSASigner
  {
    public dsa384()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
  
  public static class dsa512
    extends DSASigner
  {
    public dsa512()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
  
  public static class noneDSA
    extends DSASigner
  {
    public noneDSA()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
  
  public static class stdDSA
    extends DSASigner
  {
    public stdDSA()
    {
      super(new org.spongycastle.crypto.signers.DSASigner());
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.dsa.DSASigner
 * JD-Core Version:    0.7.0.1
 */