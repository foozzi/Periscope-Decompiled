package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.PublicKey;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPublicKey;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.provider.util.KeyUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPublicKeySpec;
import org.spongycastle.util.Arrays;

public class BCRainbowPublicKey
  implements PublicKey
{
  private int bid;
  private short[][] bif;
  private short[][] big;
  private short[] bih;
  
  public BCRainbowPublicKey(int paramInt, short[][] paramArrayOfShort1, short[][] paramArrayOfShort2, short[] paramArrayOfShort)
  {
    this.bid = paramInt;
    this.bif = paramArrayOfShort1;
    this.big = paramArrayOfShort2;
    this.bih = paramArrayOfShort;
  }
  
  public BCRainbowPublicKey(RainbowPublicKeyParameters paramRainbowPublicKeyParameters)
  {
    this(paramRainbowPublicKeyParameters.qD(), paramRainbowPublicKeyParameters.qE(), paramRainbowPublicKeyParameters.qF(), paramRainbowPublicKeyParameters.qG());
  }
  
  public BCRainbowPublicKey(RainbowPublicKeySpec paramRainbowPublicKeySpec)
  {
    this(paramRainbowPublicKeySpec.qD(), paramRainbowPublicKeySpec.qE(), paramRainbowPublicKeySpec.qF(), paramRainbowPublicKeySpec.qG());
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof BCRainbowPublicKey))) {
      return false;
    }
    paramObject = (BCRainbowPublicKey)paramObject;
    return (this.bid == paramObject.qD()) && (RainbowUtil.ˋ(this.bif, paramObject.qE())) && (RainbowUtil.ˋ(this.big, paramObject.qF())) && (RainbowUtil.equals(this.bih, paramObject.qG()));
  }
  
  public final String getAlgorithm()
  {
    return "Rainbow";
  }
  
  public byte[] getEncoded()
  {
    RainbowPublicKey localRainbowPublicKey = new RainbowPublicKey(this.bid, this.bif, this.big, this.bih);
    return KeyUtil.ˊ(new AlgorithmIdentifier(PQCObjectIdentifiers.bdP, DERNull.abj), localRainbowPublicKey);
  }
  
  public String getFormat()
  {
    return "X.509";
  }
  
  public int hashCode()
  {
    return ((this.bid * 37 + Arrays.ˎ(this.bif)) * 37 + Arrays.ˎ(this.big)) * 37 + Arrays.hashCode(this.bih);
  }
  
  public int qD()
  {
    return this.bid;
  }
  
  public short[][] qE()
  {
    return this.bif;
  }
  
  public short[][] qF()
  {
    short[][] arrayOfShort = new short[this.big.length][];
    int i = 0;
    while (i != this.big.length)
    {
      arrayOfShort[i] = Arrays.ᐝ(this.big[i]);
      i += 1;
    }
    return arrayOfShort;
  }
  
  public short[] qG()
  {
    return Arrays.ᐝ(this.bih);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.BCRainbowPublicKey
 * JD-Core Version:    0.7.0.1
 */