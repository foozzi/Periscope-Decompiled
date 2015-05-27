package org.spongycastle.crypto.tls;

public abstract class DefaultTlsClient
  extends AbstractTlsClient
{
  public TlsKeyExchange mi()
  {
    switch (this.aSI)
    {
    default: 
      break;
    case 13: 
    case 48: 
    case 54: 
    case 62: 
    case 66: 
    case 104: 
    case 133: 
    case 151: 
    case 164: 
    case 165: 
    case 187: 
    case 193: 
    case 49282: 
    case 49283: 
      return ܖ(7);
    case 16: 
    case 49: 
    case 55: 
    case 63: 
    case 67: 
    case 105: 
    case 134: 
    case 152: 
    case 160: 
    case 161: 
    case 188: 
    case 194: 
    case 49278: 
    case 49279: 
      return ܖ(9);
    case 19: 
    case 50: 
    case 56: 
    case 64: 
    case 68: 
    case 106: 
    case 135: 
    case 153: 
    case 162: 
    case 163: 
    case 189: 
    case 195: 
    case 49280: 
    case 49281: 
      return ܢ(3);
    case 22: 
    case 51: 
    case 57: 
    case 69: 
    case 103: 
    case 107: 
    case 136: 
    case 154: 
    case 158: 
    case 159: 
    case 190: 
    case 196: 
    case 49276: 
    case 49277: 
    case 49310: 
    case 49311: 
    case 49314: 
    case 49315: 
    case 52245: 
    case 58398: 
    case 58399: 
      return ܢ(5);
    case 49153: 
    case 49154: 
    case 49155: 
    case 49156: 
    case 49157: 
    case 49189: 
    case 49190: 
    case 49197: 
    case 49198: 
    case 49268: 
    case 49269: 
    case 49288: 
    case 49289: 
      return ა(16);
    case 49163: 
    case 49164: 
    case 49165: 
    case 49166: 
    case 49167: 
    case 49193: 
    case 49194: 
    case 49201: 
    case 49202: 
    case 49272: 
    case 49273: 
    case 49292: 
    case 49293: 
      return ა(18);
    case 49158: 
    case 49159: 
    case 49160: 
    case 49161: 
    case 49162: 
    case 49187: 
    case 49188: 
    case 49195: 
    case 49196: 
    case 49266: 
    case 49267: 
    case 49286: 
    case 49287: 
    case 52244: 
    case 58388: 
    case 58389: 
      return ი(17);
    case 49168: 
    case 49169: 
    case 49170: 
    case 49171: 
    case 49172: 
    case 49191: 
    case 49192: 
    case 49199: 
    case 49200: 
    case 49270: 
    case 49271: 
    case 49290: 
    case 49291: 
    case 52243: 
    case 58386: 
    case 58387: 
      return ი(19);
    case 1: 
    case 2: 
    case 4: 
    case 5: 
    case 10: 
    case 47: 
    case 53: 
    case 59: 
    case 60: 
    case 61: 
    case 65: 
    case 132: 
    case 150: 
    case 156: 
    case 157: 
    case 186: 
    case 192: 
    case 49274: 
    case 49275: 
    case 49308: 
    case 49309: 
    case 49312: 
    case 49313: 
    case 58384: 
    case 58385: 
      return mk();
    }
    throw new TlsFatalAlert((short)80);
  }
  
  public TlsCipher mj()
  {
    switch (this.aSI)
    {
    default: 
      break;
    case 10: 
    case 13: 
    case 16: 
    case 19: 
    case 22: 
    case 49155: 
    case 49160: 
    case 49165: 
    case 49170: 
      return this.aSC.ˊ(this.aSD, 7, 2);
    case 52243: 
    case 52244: 
    case 52245: 
      return this.aSC.ˊ(this.aSD, 102, 0);
    case 47: 
    case 48: 
    case 49: 
    case 50: 
    case 51: 
    case 49156: 
    case 49161: 
    case 49166: 
    case 49171: 
      return this.aSC.ˊ(this.aSD, 8, 2);
    case 60: 
    case 62: 
    case 63: 
    case 64: 
    case 103: 
    case 49187: 
    case 49189: 
    case 49191: 
    case 49193: 
      return this.aSC.ˊ(this.aSD, 8, 3);
    case 49308: 
    case 49310: 
      return this.aSC.ˊ(this.aSD, 15, 0);
    case 49312: 
    case 49314: 
      return this.aSC.ˊ(this.aSD, 16, 0);
    case 156: 
    case 158: 
    case 160: 
    case 162: 
    case 164: 
    case 49195: 
    case 49197: 
    case 49199: 
    case 49201: 
      return this.aSC.ˊ(this.aSD, 10, 0);
    case 53: 
    case 54: 
    case 55: 
    case 56: 
    case 57: 
    case 49157: 
    case 49162: 
    case 49167: 
    case 49172: 
      return this.aSC.ˊ(this.aSD, 9, 2);
    case 61: 
    case 104: 
    case 105: 
    case 106: 
    case 107: 
      return this.aSC.ˊ(this.aSD, 9, 3);
    case 49188: 
    case 49190: 
    case 49192: 
    case 49194: 
      return this.aSC.ˊ(this.aSD, 9, 4);
    case 49309: 
    case 49311: 
      return this.aSC.ˊ(this.aSD, 17, 0);
    case 49313: 
    case 49315: 
      return this.aSC.ˊ(this.aSD, 18, 0);
    case 157: 
    case 159: 
    case 161: 
    case 163: 
    case 165: 
    case 49196: 
    case 49198: 
    case 49200: 
    case 49202: 
      return this.aSC.ˊ(this.aSD, 11, 0);
    case 65: 
    case 66: 
    case 67: 
    case 68: 
    case 69: 
      return this.aSC.ˊ(this.aSD, 12, 2);
    case 186: 
    case 187: 
    case 188: 
    case 189: 
    case 190: 
    case 49266: 
    case 49268: 
    case 49270: 
    case 49272: 
      return this.aSC.ˊ(this.aSD, 12, 3);
    case 49274: 
    case 49276: 
    case 49278: 
    case 49280: 
    case 49282: 
    case 49286: 
    case 49288: 
    case 49290: 
    case 49292: 
      return this.aSC.ˊ(this.aSD, 19, 0);
    case 132: 
    case 133: 
    case 134: 
    case 135: 
    case 136: 
      return this.aSC.ˊ(this.aSD, 13, 2);
    case 192: 
    case 193: 
    case 194: 
    case 195: 
    case 196: 
      return this.aSC.ˊ(this.aSD, 13, 3);
    case 49275: 
    case 49277: 
    case 49279: 
    case 49281: 
    case 49283: 
    case 49287: 
    case 49289: 
    case 49291: 
    case 49293: 
      return this.aSC.ˊ(this.aSD, 20, 0);
    case 49267: 
    case 49269: 
    case 49271: 
    case 49273: 
      return this.aSC.ˊ(this.aSD, 13, 4);
    case 58384: 
    case 58386: 
    case 58388: 
    case 58398: 
      return this.aSC.ˊ(this.aSD, 100, 2);
    case 1: 
      return this.aSC.ˊ(this.aSD, 0, 1);
    case 2: 
    case 49153: 
    case 49158: 
    case 49163: 
    case 49168: 
      return this.aSC.ˊ(this.aSD, 0, 2);
    case 59: 
      return this.aSC.ˊ(this.aSD, 0, 3);
    case 4: 
      return this.aSC.ˊ(this.aSD, 2, 1);
    case 5: 
    case 49154: 
    case 49159: 
    case 49164: 
    case 49169: 
      return this.aSC.ˊ(this.aSD, 2, 2);
    case 58385: 
    case 58387: 
    case 58389: 
    case 58399: 
      return this.aSC.ˊ(this.aSD, 101, 2);
    case 150: 
    case 151: 
    case 152: 
    case 153: 
    case 154: 
      return this.aSC.ˊ(this.aSD, 14, 2);
    }
    throw new TlsFatalAlert((short)80);
  }
  
  protected TlsKeyExchange mk()
  {
    return new TlsRSAKeyExchange(this.aSE);
  }
  
  protected TlsKeyExchange ܖ(int paramInt)
  {
    return new TlsDHKeyExchange(paramInt, this.aSE, null);
  }
  
  protected TlsKeyExchange ܢ(int paramInt)
  {
    return new TlsDHEKeyExchange(paramInt, this.aSE, null);
  }
  
  protected TlsKeyExchange ა(int paramInt)
  {
    return new TlsECDHKeyExchange(paramInt, this.aSE, this.aSF, this.aSG, this.aSH);
  }
  
  protected TlsKeyExchange ი(int paramInt)
  {
    return new TlsECDHEKeyExchange(paramInt, this.aSE, this.aSF, this.aSG, this.aSH);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     org.spongycastle.crypto.tls.DefaultTlsClient
 * JD-Core Version:    0.7.0.1
 */