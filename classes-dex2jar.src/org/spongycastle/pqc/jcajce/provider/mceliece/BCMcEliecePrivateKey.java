package org.spongycastle.pqc.jcajce.provider.mceliece;

import java.io.IOException;
import java.security.PrivateKey;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.pqc.asn1.McEliecePrivateKey;
import org.spongycastle.pqc.crypto.mceliece.McElieceParameters;
import org.spongycastle.pqc.crypto.mceliece.McEliecePrivateKeyParameters;
import org.spongycastle.pqc.math.linearalgebra.GF2Matrix;
import org.spongycastle.pqc.math.linearalgebra.GF2mField;
import org.spongycastle.pqc.math.linearalgebra.Permutation;
import org.spongycastle.pqc.math.linearalgebra.PolynomialGF2mSmallM;

public class BCMcEliecePrivateKey
  implements CipherParameters, PrivateKey
{
  private int aQb;
  private String aby;
  private int avM;
  private GF2mField bfX;
  private PolynomialGF2mSmallM bfY;
  private GF2Matrix bga;
  private PolynomialGF2mSmallM[] bgb;
  private GF2Matrix bgk;
  private Permutation bgl;
  private Permutation bgm;
  private McElieceParameters biw;
  
  public BCMcEliecePrivateKey(String paramString, int paramInt1, int paramInt2, GF2mField paramGF2mField, PolynomialGF2mSmallM paramPolynomialGF2mSmallM, GF2Matrix paramGF2Matrix1, Permutation paramPermutation1, Permutation paramPermutation2, GF2Matrix paramGF2Matrix2, PolynomialGF2mSmallM[] paramArrayOfPolynomialGF2mSmallM)
  {
    this.aby = paramString;
    this.aQb = paramInt1;
    this.avM = paramInt2;
    this.bfX = paramGF2mField;
    this.bfY = paramPolynomialGF2mSmallM;
    this.bgk = paramGF2Matrix1;
    this.bgl = paramPermutation1;
    this.bgm = paramPermutation2;
    this.bga = paramGF2Matrix2;
    this.bgb = paramArrayOfPolynomialGF2mSmallM;
  }
  
  public BCMcEliecePrivateKey(McEliecePrivateKeyParameters paramMcEliecePrivateKeyParameters)
  {
    this(paramMcEliecePrivateKeyParameters.rp(), paramMcEliecePrivateKeyParameters.kC(), paramMcEliecePrivateKeyParameters.ri(), paramMcEliecePrivateKeyParameters.rk(), paramMcEliecePrivateKeyParameters.rl(), paramMcEliecePrivateKeyParameters.rt(), paramMcEliecePrivateKeyParameters.ru(), paramMcEliecePrivateKeyParameters.rv(), paramMcEliecePrivateKeyParameters.rn(), paramMcEliecePrivateKeyParameters.ro());
    this.biw = paramMcEliecePrivateKeyParameters.rr();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BCMcEliecePrivateKey)) {
      return false;
    }
    paramObject = (BCMcEliecePrivateKey)paramObject;
    return (this.aQb == paramObject.aQb) && (this.avM == paramObject.avM) && (this.bfX.equals(paramObject.bfX)) && (this.bfY.equals(paramObject.bfY)) && (this.bgk.equals(paramObject.bgk)) && (this.bgl.equals(paramObject.bgl)) && (this.bgm.equals(paramObject.bgm)) && (this.bga.equals(paramObject.bga));
  }
  
  public String getAlgorithm()
  {
    return "McEliece";
  }
  
  public byte[] getEncoded()
  {
    Object localObject = new McEliecePrivateKey(new ASN1ObjectIdentifier(this.aby), this.aQb, this.avM, this.bfX, this.bfY, this.bgk, this.bgl, this.bgm, this.bga, this.bgb);
    try
    {
      localObject = new PrivateKeyInfo(new AlgorithmIdentifier(nV(), DERNull.abj), (ASN1Encodable)localObject);
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
    return null;
  }
  
  public int hashCode()
  {
    return this.avM + this.aQb + this.bfX.hashCode() + this.bfY.hashCode() + this.bgk.hashCode() + this.bgl.hashCode() + this.bgm.hashCode() + this.bga.hashCode();
  }
  
  public int kC()
  {
    return this.aQb;
  }
  
  protected ASN1ObjectIdentifier nV()
  {
    return new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
  }
  
  public McElieceParameters rZ()
  {
    return this.biw;
  }
  
  public int ri()
  {
    return this.avM;
  }
  
  public GF2mField rk()
  {
    return this.bfX;
  }
  
  public PolynomialGF2mSmallM rl()
  {
    return this.bfY;
  }
  
  public GF2Matrix rn()
  {
    return this.bga;
  }
  
  public PolynomialGF2mSmallM[] ro()
  {
    return this.bgb;
  }
  
  public String rp()
  {
    return this.aby;
  }
  
  public GF2Matrix rt()
  {
    return this.bgk;
  }
  
  public Permutation ru()
  {
    return this.bgl;
  }
  
  public Permutation rv()
  {
    return this.bgm;
  }
  
  public String toString()
  {
    String str = " length of the code          : " + this.aQb + "\n";
    str = str + " dimension of the code       : " + this.avM + "\n";
    str = str + " irreducible Goppa polynomial: " + this.bfY + "\n";
    str = str + " (k x k)-matrix S^-1         : " + this.bgk + "\n";
    str = str + " permutation P1              : " + this.bgl + "\n";
    return str + " permutation P2              : " + this.bgm;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.pqc.jcajce.provider.mceliece.BCMcEliecePrivateKey
 * JD-Core Version:    0.7.0.1
 */