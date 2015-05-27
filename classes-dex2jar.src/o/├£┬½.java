package o;

public final class ܫ
{
  public static final byte[] AY = { 0, 0, 0, 1 };
  
  public static int ˊ(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean[] paramArrayOfBoolean)
  {
    int i = paramInt2 - paramInt1;
    boolean bool;
    if (i >= 0) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    if (i == 0) {
      return paramInt2;
    }
    if (paramArrayOfBoolean != null)
    {
      if (paramArrayOfBoolean[0] != 0)
      {
        ˊ(paramArrayOfBoolean);
        return paramInt1 - 3;
      }
      if ((i > 1) && (paramArrayOfBoolean[1] != 0) && (paramArrayOfByte[paramInt1] == 1))
      {
        ˊ(paramArrayOfBoolean);
        return paramInt1 - 2;
      }
      if ((i > 2) && (paramArrayOfBoolean[2] != 0) && (paramArrayOfByte[paramInt1] == 0) && (paramArrayOfByte[(paramInt1 + 1)] == 1))
      {
        ˊ(paramArrayOfBoolean);
        return paramInt1 - 1;
      }
    }
    paramInt1 += 2;
    while (paramInt1 < paramInt2 - 1)
    {
      if ((paramArrayOfByte[paramInt1] & 0xFE) == 0)
      {
        if ((paramArrayOfByte[(paramInt1 - 2)] == 0) && (paramArrayOfByte[(paramInt1 - 1)] == 0) && (paramArrayOfByte[paramInt1] == 1))
        {
          if (paramArrayOfBoolean != null) {
            ˊ(paramArrayOfBoolean);
          }
          return paramInt1 - 2;
        }
        paramInt1 -= 2;
      }
      paramInt1 += 3;
    }
    if (paramArrayOfBoolean != null)
    {
      if (i > 2)
      {
        if ((paramArrayOfByte[(paramInt2 - 3)] == 0) && (paramArrayOfByte[(paramInt2 - 2)] == 0) && (paramArrayOfByte[(paramInt2 - 1)] == 1)) {
          bool = true;
        } else {
          bool = false;
        }
      }
      else if (i == 2)
      {
        if ((paramArrayOfBoolean[2] != 0) && (paramArrayOfByte[(paramInt2 - 2)] == 0) && (paramArrayOfByte[(paramInt2 - 1)] == 1)) {
          bool = true;
        } else {
          bool = false;
        }
      }
      else if ((paramArrayOfBoolean[1] != 0) && (paramArrayOfByte[(paramInt2 - 1)] == 1)) {
        bool = true;
      } else {
        bool = false;
      }
      paramArrayOfBoolean[0] = bool;
      if (i > 1)
      {
        if ((paramArrayOfByte[(paramInt2 - 2)] == 0) && (paramArrayOfByte[(paramInt2 - 1)] == 0)) {
          bool = true;
        } else {
          bool = false;
        }
      }
      else if ((paramArrayOfBoolean[2] != 0) && (paramArrayOfByte[(paramInt2 - 1)] == 0)) {
        bool = true;
      } else {
        bool = false;
      }
      paramArrayOfBoolean[1] = bool;
      if (paramArrayOfByte[(paramInt2 - 1)] == 0) {
        bool = true;
      } else {
        bool = false;
      }
      paramArrayOfBoolean[2] = bool;
    }
    return paramInt2;
  }
  
  public static void ˊ(boolean[] paramArrayOfBoolean)
  {
    paramArrayOfBoolean[0] = false;
    paramArrayOfBoolean[1] = false;
    paramArrayOfBoolean[2] = false;
  }
  
  public static byte[] ͺ(প paramপ)
  {
    int i = paramপ.readUnsignedShort();
    int j = paramপ.getPosition();
    paramপ.ʰ(i);
    return ܐ.ͺ(paramপ.fw, j, i);
  }
  
  public static int ᐝ(byte[] paramArrayOfByte, int paramInt)
  {
    return paramArrayOfByte[(paramInt + 3)] & 0x1F;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ü«
 * JD-Core Version:    0.7.0.1
 */