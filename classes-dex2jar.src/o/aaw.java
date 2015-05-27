package o;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class aaw
  extends aav
{
  private static final byte[] bvb = { 0, 0, 0, 1 };
  public static final UUID bvg = UUID.fromString("62100F9A-A411-4E11-9141-482A1368BFD3");
  private ب bvc = null;
  private int bvd;
  private int bve = 0;
  private aat.if bvf;
  private int γ;
  
  public aaw(int paramInt1, String paramString, int paramInt2, int paramInt3, aat.if paramif)
  {
    super(paramInt1, "video/avc", paramString);
    this.bvd = paramInt2;
    this.γ = paramInt3;
    this.bvf = paramif;
  }
  
  private ب ʴ(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramArrayOfByte1);
    localArrayList.add(paramArrayOfByte2);
    return ب.ˊ("video/avc", -1, this.bvd, this.γ, localArrayList);
  }
  
  private void ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, long paramLong)
  {
    int j = 1;
    int i = 0;
    while ((j < paramInt2) && ((paramArrayOfByte[(paramInt1 + j)] & 0xFF) == 255))
    {
      i += 255;
      j += 1;
    }
    int m = paramArrayOfByte[(paramInt1 + j)];
    j += 1;
    int k = 0;
    while ((j < paramInt2) && ((paramArrayOfByte[(paramInt1 + j)] & 0xFF) == 255))
    {
      k += 255;
      j += 1;
    }
    k += (paramArrayOfByte[(paramInt1 + j)] & 0xFF);
    j += 1;
    if ((i + (m & 0xFF) == 5) && (k > 16) && (k <= paramInt2 - j))
    {
      ByteBuffer localByteBuffer = ByteBuffer.wrap(paramArrayOfByte, paramInt1 + j, 16);
      if (new UUID(localByteBuffer.getLong(), localByteBuffer.getLong()).equals(bvg))
      {
        k -= 16;
        localByteBuffer = ByteBuffer.allocate(k);
        paramInt2 = 0;
        i = 0;
        while (i < k)
        {
          byte b = paramArrayOfByte[(paramInt1 + (j + 16) + i)];
          if (paramInt2 == 2)
          {
            if (b != 3) {
              return;
            }
            paramInt2 = 0;
          }
          else
          {
            if (b == 0) {
              paramInt2 += 1;
            } else {
              paramInt2 = 0;
            }
            localByteBuffer.put(b);
          }
          i += 1;
        }
        paramArrayOfByte = new byte[localByteBuffer.position()];
        localByteBuffer.rewind();
        localByteBuffer.get(paramArrayOfByte);
        paramArrayOfByte = akt.ᓪ(paramArrayOfByte);
        if ((paramArrayOfByte != null) && (paramArrayOfByte.length == 1))
        {
          paramArrayOfByte = (Map)paramArrayOfByte[0];
          this.bvf.ˊ(paramArrayOfByte, paramLong);
        }
      }
    }
  }
  
  public static long ᕀ(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    long l = 0L;
    int i = 0;
    while (i < paramInt2)
    {
      l = l << 8 | paramArrayOfByte[(paramInt1 + i)] & 0xFF;
      i += 1;
    }
    return l;
  }
  
  public int ˊ(int paramInt, long paramLong, م paramم, ڋ paramڋ, boolean paramBoolean)
  {
    if (paramBoolean) {
      return -2;
    }
    Object localObject;
    if (this.bvc == null)
    {
      paramInt = this.buW.indexOf(',');
      paramڋ = this.buW.substring(0, paramInt);
      localObject = this.buW.substring(paramInt + 1);
      paramڋ = Base64.decode(paramڋ, 0);
      localObject = Base64.decode((String)localObject, 0);
      byte[] arrayOfByte = new byte[paramڋ.length + bvb.length];
      System.arraycopy(bvb, 0, arrayOfByte, 0, bvb.length);
      System.arraycopy(paramڋ, 0, arrayOfByte, bvb.length, paramڋ.length);
      paramڋ = new byte[localObject.length + bvb.length];
      System.arraycopy(bvb, 0, paramڋ, 0, bvb.length);
      System.arraycopy(localObject, 0, paramڋ, bvb.length, localObject.length);
      this.bvc = ʴ(arrayOfByte, paramڋ);
      paramم.ry = this.bvc;
      return -4;
    }
    for (;;)
    {
      paramم = vM();
      if (paramم == null) {
        return -2;
      }
      localObject = paramم.Br().buffer;
      if (localObject[1] == 1) {
        break;
      }
      if (localObject[1] == 0)
      {
        if (this.bve == 0) {
          this.bve = ((localObject[9] & 0x3) + 1);
        }
        this.buM.ˎ(paramم);
      }
    }
    int m = paramم.Br().length;
    if (paramڋ.ko.capacity() < m) {
      paramڋ.ʶ(m);
    }
    int i = 5;
    int j;
    for (paramInt = 0; i < m - 4; paramInt = j)
    {
      int n = (int)ᕀ((byte[])localObject, i, this.bve);
      int k = i + this.bve;
      i = k;
      j = paramInt;
      if (k + n <= m)
      {
        switch (localObject[k] & 0x1F)
        {
        default: 
          break;
        case 5: 
          paramInt = 1;
          break;
        case 6: 
          ˊ((byte[])localObject, k, n, paramم.getTime());
        }
        paramڋ.ko.put(bvb, 0, bvb.length);
        paramڋ.ko.put((byte[])localObject, k, n);
        i = k + n;
        j = paramInt;
      }
    }
    if (paramInt != 0) {
      paramInt = 1;
    } else {
      paramInt = 0;
    }
    paramڋ.flags = paramInt;
    paramڋ.size = m;
    paramڋ.sJ = (paramم.getTime() * 1000L);
    this.buM.ˎ(paramم);
    return -3;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.aaw
 * JD-Core Version:    0.7.0.1
 */