package o;

import java.util.Collections;

public final class ٻ
{
  private static final int[] AU = { 48000, 44100, 32000 };
  private static final int[] AV = { 2, 1, 2, 3, 3, 4, 4, 5 };
  private static final int[] AW = { 32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, 320, 384, 448, 512, 576, 640 };
  private static final int[] AX = { 69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, 1114, 1253, 1393 };
  
  public static ب ʼ(প paramপ)
  {
    int i = paramপ.readUnsignedByte();
    int k = AU[((i & 0xC0) >> 6)];
    int m = paramপ.readUnsignedByte();
    int j = AV[((m & 0x38) >> 3)];
    i = j;
    if ((m & 0x4) != 0) {
      i = j + 1;
    }
    return ب.ˋ("audio/ac3", -1, -1L, i, k, Collections.emptyList());
  }
  
  public static ب ʽ(প paramপ)
  {
    paramপ.ʰ(2);
    int i = paramপ.readUnsignedByte();
    int k = AU[((i & 0xC0) >> 6)];
    int m = paramপ.readUnsignedByte();
    int j = AV[((m & 0xE) >> 1)];
    i = j;
    if ((m & 0x1) != 0) {
      i = j + 1;
    }
    return ب.ˋ("audio/eac3", -1, i, k, Collections.emptyList());
  }
  
  public static ب ˊ(ন paramন)
  {
    paramন.ɪ(32);
    int j = paramন.ɾ(2);
    paramন.ɪ(14);
    int i = paramন.ɾ(3);
    if (((i & 0x1) != 0) && (i != 1)) {
      paramন.ɪ(2);
    }
    if ((i & 0x4) != 0) {
      paramন.ɪ(2);
    }
    if (i == 2) {
      paramন.ɪ(2);
    }
    boolean bool = paramন.ʎ();
    int k = AV[i];
    if (bool) {
      i = 1;
    } else {
      i = 0;
    }
    return ب.ˋ("audio/ac3", -1, -1L, k + i, AU[j], Collections.emptyList());
  }
  
  public static int ˋ(ন paramন)
  {
    paramন.ɪ(32);
    int j = paramন.ɾ(2);
    int i = paramন.ɾ(6);
    j = AU[j];
    int k = AW[(i / 2)];
    if (j == 32000) {
      return k * 6;
    }
    if (j == 44100) {
      return (AX[(i / 2)] + i % 2) * 2;
    }
    return k * 4;
  }
  
  public static int เ(int paramInt1, int paramInt2)
  {
    return (768000 + paramInt1 * 8 * paramInt2) / 1536000;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ù»
 * JD-Core Version:    0.7.0.1
 */