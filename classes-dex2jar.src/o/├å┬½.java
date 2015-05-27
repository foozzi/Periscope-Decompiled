package o;

import java.nio.ByteBuffer;
import java.util.ArrayList;

public class ƫ
{
  private static final int[] zA = { 174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251 };
  private static final int[] zB = { 193, 201, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, 200, 202, 203, 235, 206, 207, 239, 212, 217, 249, 219, 171, 187 };
  private static final int[] zC = { 195, 227, 205, 204, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, 126, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496 };
  private static final int[] zz = { 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632 };
  private final ন zD = new ন();
  private final StringBuilder zE = new StringBuilder();
  private final ArrayList<č> zF = new ArrayList();
  
  private void ˊ(byte paramByte1, byte paramByte2)
  {
    ﮋ();
    this.zF.add(new Ŷ(paramByte1, paramByte2));
  }
  
  public static boolean ˊ(int paramInt1, int paramInt2, প paramপ)
  {
    if ((paramInt1 != 4) || (paramInt2 < 8)) {
      return false;
    }
    paramInt1 = paramপ.getPosition();
    paramInt2 = paramপ.readUnsignedByte();
    int i = paramপ.readUnsignedShort();
    int j = paramপ.readInt();
    int k = paramপ.readUnsignedByte();
    paramপ.setPosition(paramInt1);
    return (paramInt2 == 181) && (i == 49) && (j == 1195456820) && (k == 3);
  }
  
  private static char ˋ(byte paramByte)
  {
    return (char)zz[((paramByte & 0x7F) - 32)];
  }
  
  private static char ˎ(byte paramByte)
  {
    return (char)zA[(paramByte & 0xF)];
  }
  
  private static char ˏ(byte paramByte)
  {
    return (char)zB[(paramByte & 0x1F)];
  }
  
  private static char ᐝ(byte paramByte)
  {
    return (char)zC[(paramByte & 0x1F)];
  }
  
  private void ﮋ()
  {
    if (this.zE.length() > 0)
    {
      this.zF.add(new ƨ(this.zE.toString()));
      this.zE.setLength(0);
    }
  }
  
  private void ﺏ()
  {
    ˊ((byte)20, (byte)33);
  }
  
  ż ˏ(ڋ paramڋ)
  {
    if (paramڋ.size < 10) {
      return null;
    }
    this.zF.clear();
    this.zE.setLength(0);
    this.zD.ʾ(paramڋ.ko.array());
    this.zD.ɪ(67);
    int j = this.zD.ɾ(5);
    this.zD.ɪ(8);
    int i = 0;
    while (i < j)
    {
      this.zD.ɪ(5);
      if (!this.zD.ʎ())
      {
        this.zD.ɪ(18);
      }
      else if (this.zD.ɾ(2) != 0)
      {
        this.zD.ɪ(16);
      }
      else
      {
        this.zD.ɪ(1);
        byte b1 = (byte)this.zD.ɾ(7);
        this.zD.ɪ(1);
        byte b2 = (byte)this.zD.ɾ(7);
        if ((b1 != 0) || (b2 != 0)) {
          if (((b1 == 17) || (b1 == 25)) && ((b2 & 0x70) == 48))
          {
            this.zE.append(ˎ(b2));
          }
          else if (((b1 == 18) || (b1 == 26)) && ((b2 & 0x60) == 32))
          {
            ﺏ();
            this.zE.append(ˏ(b2));
          }
          else if (((b1 == 19) || (b1 == 27)) && ((b2 & 0x60) == 32))
          {
            ﺏ();
            this.zE.append(ᐝ(b2));
          }
          else if (b1 < 32)
          {
            ˊ(b1, b2);
          }
          else
          {
            this.zE.append(ˋ(b1));
            if (b2 >= 32) {
              this.zE.append(ˋ(b2));
            }
          }
        }
      }
      i += 1;
    }
    ﮋ();
    if (this.zF.isEmpty()) {
      return null;
    }
    č[] arrayOfč = new č[this.zF.size()];
    this.zF.toArray(arrayOfč);
    return new ż(paramڋ.sJ, paramڋ.ח(), arrayOfč);
  }
  
  boolean ᵢ(String paramString)
  {
    return paramString.equals("application/eia-608");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Æ«
 * JD-Core Version:    0.7.0.1
 */