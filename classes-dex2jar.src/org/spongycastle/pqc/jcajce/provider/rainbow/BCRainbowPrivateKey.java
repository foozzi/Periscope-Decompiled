package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;

public class BCRainbowPrivateKey
  implements PrivateKey
{
  private Layer[] bem;
  private short[][] bhU;
  private short[] bhV;
  private short[][] bhX;
  private short[] bhY;
  private int[] bhZ;
  
  public BCRainbowPrivateKey(RainbowPrivateKeyParameters paramRainbowPrivateKeyParameters)
  {
    this(paramRainbowPrivateKeyParameters.qx(), paramRainbowPrivateKeyParameters.qy(), paramRainbowPrivateKeyParameters.qA(), paramRainbowPrivateKeyParameters.qz(), paramRainbowPrivateKeyParameters.qC(), paramRainbowPrivateKeyParameters.qB());
  }
  
  public BCRainbowPrivateKey(RainbowPrivateKeySpec paramRainbowPrivateKeySpec)
  {
    this(paramRainbowPrivateKeySpec.qx(), paramRainbowPrivateKeySpec.qy(), paramRainbowPrivateKeySpec.qA(), paramRainbowPrivateKeySpec.qz(), paramRainbowPrivateKeySpec.qC(), paramRainbowPrivateKeySpec.qB());
  }
  
  public BCRainbowPrivateKey(short[][] paramArrayOfShort1, short[] paramArrayOfShort2, short[][] paramArrayOfShort3, short[] paramArrayOfShort4, int[] paramArrayOfInt, Layer[] paramArrayOfLayer)
  {
    this.bhU = paramArrayOfShort1;
    this.bhV = paramArrayOfShort2;
    this.bhX = paramArrayOfShort3;
    this.bhY = paramArrayOfShort4;
    this.bhZ = paramArrayOfInt;
    this.bem = paramArrayOfLayer;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof BCRainbowPrivateKey))) {
      return false;
    }
    paramObject = (BCRainbowPrivateKey)paramObject;
    if ((1 != 0) && (RainbowUtil.ˋ(this.bhU, paramObject.qx()))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) && (RainbowUtil.ˋ(this.bhX, paramObject.qA()))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) && (RainbowUtil.equals(this.bhV, paramObject.qy()))) {
      i = 1;
    } else {
      i = 0;
    }
    if ((i != 0) && (RainbowUtil.equals(this.bhY, paramObject.qz()))) {
      i = 1;
    } else {
      i = 0;
    }
    boolean bool;
    if ((i != 0) && (java.util.Arrays.equals(this.bhZ, paramObject.qC()))) {
      bool = true;
    } else {
      bool = false;
    }
    if (this.bem.length != paramObject.qB().length) {
      return false;
    }
    int i = this.bem.length - 1;
    while (i >= 0)
    {
      bool &= this.bem[i].equals(paramObject.qB()[i]);
      i -= 1;
    }
    return bool;
  }
  
  public final String getAlgorithm()
  {
    return "Rainbow";
  }
  
  public byte[] getEncoded()
  {
    Object localObject = new RainbowPrivateKey(this.bhU, this.bhV, this.bhX, this.bhY, this.bhZ, this.bem);
    try
    {
      localObject = new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.bdP, DERNull.abj), (ASN1Encodable)localObject);
    }
    catch (IOException localIOException1)
    {
      localIOException1.printStackTrace();
      return null;
    }
    try
    {
      byte[] arrayOfByte = localIOException1.getEncoded();
      return arrayOfByte;
    }
    catch (IOException localIOException2)
    {
      localIOException2.printStackTrace();
    }
    return null;
  }
  
  public String getFormat()
  {
    return "PKCS#8";
  }
  
  public int hashCode()
  {
    int j = ((((this.bem.length * 37 + org.spongycastle.util.Arrays.ˎ(this.bhU)) * 37 + org.spongycastle.util.Arrays.hashCode(this.bhV)) * 37 + org.spongycastle.util.Arrays.ˎ(this.bhX)) * 37 + org.spongycastle.util.Arrays.hashCode(this.bhY)) * 37 + org.spongycastle.util.Arrays.hashCode(this.bhZ);
    int i = this.bem.length - 1;
    while (i >= 0)
    {
      j = j * 37 + this.bem[i].hashCode();
      i -= 1;
    }
    return j;
  }
  
  public short[][] qA()
  {
    return this.bhX;
  }
  
  public Layer[] qB()
  {
    return this.bem;
  }
  
  public int[] qC()
  {
    return this.bhZ;
  }
  
  public short[][] qx()
  {
    return this.bhU;
  }
  
  public short[] qy()
  {
    return this.bhV;
  }
  
  public short[] qz()
  {
    return this.bhY;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.rainbow.BCRainbowPrivateKey
 * JD-Core Version:    0.7.0.1
 */