package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.PrivateKey;
import java.security.PublicKey;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.NullDigest;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.digests.SHA224Digest;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.digests.SHA384Digest;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.signers.ECDSASigner;
import org.spongycastle.crypto.signers.ECNRSigner;
import org.spongycastle.crypto.signers.HMacDSAKCalculator;
import org.spongycastle.jcajce.provider.asymmetric.util.DSABase;
import org.spongycastle.jcajce.provider.asymmetric.util.DSAEncoder;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;

public class SignatureSpi
  extends DSABase
{
  SignatureSpi(Digest paramDigest, DSA paramDSA, DSAEncoder paramDSAEncoder)
  {
    super(paramDigest, paramDSA, paramDSAEncoder);
  }
  
  protected void engineInitSign(PrivateKey paramPrivateKey)
  {
    paramPrivateKey = ECUtil.ˊ(paramPrivateKey);
    this.aFH.reset();
    if (this.appRandom != null)
    {
      this.aWF.ˊ(true, new ParametersWithRandom(paramPrivateKey, this.appRandom));
      return;
    }
    this.aWF.ˊ(true, paramPrivateKey);
  }
  
  protected void engineInitVerify(PublicKey paramPublicKey)
  {
    paramPublicKey = ECUtil.ˊ(paramPublicKey);
    this.aFH.reset();
    this.aWF.ˊ(false, paramPublicKey);
  }
  
  static class PlainDSAEncoder
    implements DSAEncoder
  {
    private byte[] ͺ(BigInteger paramBigInteger)
    {
      paramBigInteger = paramBigInteger.toByteArray();
      if (paramBigInteger[0] == 0)
      {
        byte[] arrayOfByte = new byte[paramBigInteger.length - 1];
        System.arraycopy(paramBigInteger, 1, arrayOfByte, 0, arrayOfByte.length);
        return arrayOfByte;
      }
      return paramBigInteger;
    }
    
    public byte[] ˎ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      byte[] arrayOfByte = ͺ(paramBigInteger1);
      paramBigInteger2 = ͺ(paramBigInteger2);
      if (arrayOfByte.length > paramBigInteger2.length) {
        paramBigInteger1 = new byte[arrayOfByte.length * 2];
      } else {
        paramBigInteger1 = new byte[paramBigInteger2.length * 2];
      }
      System.arraycopy(arrayOfByte, 0, paramBigInteger1, paramBigInteger1.length / 2 - arrayOfByte.length, arrayOfByte.length);
      System.arraycopy(paramBigInteger2, 0, paramBigInteger1, paramBigInteger1.length - paramBigInteger2.length, paramBigInteger2.length);
      return paramBigInteger1;
    }
    
    public BigInteger[] ᔉ(byte[] paramArrayOfByte)
    {
      byte[] arrayOfByte1 = new byte[paramArrayOfByte.length / 2];
      byte[] arrayOfByte2 = new byte[paramArrayOfByte.length / 2];
      System.arraycopy(paramArrayOfByte, 0, arrayOfByte1, 0, arrayOfByte1.length);
      System.arraycopy(paramArrayOfByte, arrayOfByte1.length, arrayOfByte2, 0, arrayOfByte2.length);
      return new BigInteger[] { new BigInteger(1, arrayOfByte1), new BigInteger(1, arrayOfByte2) };
    }
  }
  
  static class StdDSAEncoder
    implements DSAEncoder
  {
    public byte[] ˎ(BigInteger paramBigInteger1, BigInteger paramBigInteger2)
    {
      ASN1EncodableVector localASN1EncodableVector = new ASN1EncodableVector();
      localASN1EncodableVector.ˊ(new ASN1Integer(paramBigInteger1));
      localASN1EncodableVector.ˊ(new ASN1Integer(paramBigInteger2));
      return new DERSequence(localASN1EncodableVector).getEncoded("DER");
    }
    
    public BigInteger[] ᔉ(byte[] paramArrayOfByte)
    {
      paramArrayOfByte = (ASN1Sequence)ASN1Primitive.ՙ(paramArrayOfByte);
      return new BigInteger[] { ASN1Integer.ﯨ(paramArrayOfByte.ϲ(0)).eA(), ASN1Integer.ﯨ(paramArrayOfByte.ϲ(1)).eA() };
    }
  }
  
  public static class ecCVCDSA
    extends SignatureSpi
  {
    public ecCVCDSA()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
  
  public static class ecCVCDSA224
    extends SignatureSpi
  {
    public ecCVCDSA224()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
  
  public static class ecCVCDSA256
    extends SignatureSpi
  {
    public ecCVCDSA256()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
  
  public static class ecCVCDSA384
    extends SignatureSpi
  {
    public ecCVCDSA384()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
  
  public static class ecCVCDSA512
    extends SignatureSpi
  {
    public ecCVCDSA512()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
  
  public static class ecDSA
    extends SignatureSpi
  {
    public ecDSA()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSA224
    extends SignatureSpi
  {
    public ecDSA224()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSA256
    extends SignatureSpi
  {
    public ecDSA256()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSA384
    extends SignatureSpi
  {
    public ecDSA384()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSA512
    extends SignatureSpi
  {
    public ecDSA512()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSARipeMD160
    extends SignatureSpi
  {
    public ecDSARipeMD160()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDSAnone
    extends SignatureSpi
  {
    public ecDSAnone()
    {
      super(new ECDSASigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDetDSA
    extends SignatureSpi
  {
    public ecDetDSA()
    {
      super(new ECDSASigner(new HMacDSAKCalculator(new SHA1Digest())), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDetDSA224
    extends SignatureSpi
  {
    public ecDetDSA224()
    {
      super(new ECDSASigner(new HMacDSAKCalculator(new SHA224Digest())), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDetDSA256
    extends SignatureSpi
  {
    public ecDetDSA256()
    {
      super(new ECDSASigner(new HMacDSAKCalculator(new SHA256Digest())), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDetDSA384
    extends SignatureSpi
  {
    public ecDetDSA384()
    {
      super(new ECDSASigner(new HMacDSAKCalculator(new SHA384Digest())), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecDetDSA512
    extends SignatureSpi
  {
    public ecDetDSA512()
    {
      super(new ECDSASigner(new HMacDSAKCalculator(new SHA512Digest())), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecNR
    extends SignatureSpi
  {
    public ecNR()
    {
      super(new ECNRSigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecNR224
    extends SignatureSpi
  {
    public ecNR224()
    {
      super(new ECNRSigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecNR256
    extends SignatureSpi
  {
    public ecNR256()
    {
      super(new ECNRSigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecNR384
    extends SignatureSpi
  {
    public ecNR384()
    {
      super(new ECNRSigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecNR512
    extends SignatureSpi
  {
    public ecNR512()
    {
      super(new ECNRSigner(), new SignatureSpi.StdDSAEncoder(null));
    }
  }
  
  public static class ecPlainDSARP160
    extends SignatureSpi
  {
    public ecPlainDSARP160()
    {
      super(new ECDSASigner(), new SignatureSpi.PlainDSAEncoder(null));
    }
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.jcajce.provider.asymmetric.ec.SignatureSpi
 * JD-Core Version:    0.7.0.1
 */