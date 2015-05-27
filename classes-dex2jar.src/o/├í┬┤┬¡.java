package o;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class ᴭ
{
  public static int ʻ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 4);
    return paramParcel.readInt();
  }
  
  public static Integer ʼ(Parcel paramParcel, int paramInt)
  {
    int i = ˊ(paramParcel, paramInt);
    if (i == 0) {
      return null;
    }
    ˊ(paramParcel, paramInt, i, 4);
    return Integer.valueOf(paramParcel.readInt());
  }
  
  public static long ʽ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 8);
    return paramParcel.readLong();
  }
  
  public static String ʾ(Parcel paramParcel, int paramInt)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    String str = paramParcel.readString();
    paramParcel.setDataPosition(i + paramInt);
    return str;
  }
  
  public static IBinder ʿ(Parcel paramParcel, int paramInt)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    IBinder localIBinder = paramParcel.readStrongBinder();
    paramParcel.setDataPosition(i + paramInt);
    return localIBinder;
  }
  
  public static Bundle ˈ(Parcel paramParcel, int paramInt)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    Bundle localBundle = paramParcel.readBundle();
    paramParcel.setDataPosition(i + paramInt);
    return localBundle;
  }
  
  public static int ˉ(Parcel paramParcel)
  {
    return paramParcel.readInt();
  }
  
  public static byte[] ˉ(Parcel paramParcel, int paramInt)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    byte[] arrayOfByte = paramParcel.createByteArray();
    paramParcel.setDataPosition(i + paramInt);
    return arrayOfByte;
  }
  
  public static int ˊ(Parcel paramParcel, int paramInt)
  {
    if ((0xFFFF0000 & paramInt) != -65536) {
      return paramInt >> 16 & 0xFFFF;
    }
    return paramParcel.readInt();
  }
  
  public static <T extends Parcelable> T ˊ(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = (Parcelable)paramCreator.createFromParcel(paramParcel);
    paramParcel.setDataPosition(i + paramInt);
    return paramCreator;
  }
  
  private static void ˊ(Parcel paramParcel, int paramInt1, int paramInt2)
  {
    paramInt1 = ˊ(paramParcel, paramInt1);
    if (paramInt1 != paramInt2) {
      throw new ᴭ.if("Expected size " + paramInt2 + " got " + paramInt1 + " (0x" + Integer.toHexString(paramInt1) + ")", paramParcel);
    }
  }
  
  private static void ˊ(Parcel paramParcel, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt2 != paramInt3) {
      throw new ᴭ.if("Expected size " + paramInt3 + " got " + paramInt2 + " (0x" + Integer.toHexString(paramInt2) + ")", paramParcel);
    }
  }
  
  public static void ˊ(Parcel paramParcel, int paramInt, List paramList, ClassLoader paramClassLoader)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return;
    }
    paramParcel.readList(paramList, paramClassLoader);
    paramParcel.setDataPosition(i + paramInt);
  }
  
  public static void ˋ(Parcel paramParcel, int paramInt)
  {
    paramInt = ˊ(paramParcel, paramInt);
    paramParcel.setDataPosition(paramParcel.dataPosition() + paramInt);
  }
  
  public static <T> T[] ˋ(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArray(paramCreator);
    paramParcel.setDataPosition(i + paramInt);
    return paramCreator;
  }
  
  public static int ˌ(Parcel paramParcel)
  {
    int j = ˉ(paramParcel);
    int k = ˊ(paramParcel, j);
    int i = paramParcel.dataPosition();
    if (ᴬ(j) != 20293) {
      throw new ᴭ.if("Expected object header. Got 0x" + Integer.toHexString(j), paramParcel);
    }
    j = i + k;
    if ((j < i) || (j > paramParcel.dataSize())) {
      throw new ᴭ.if("Size read is invalid start=" + i + " end=" + j, paramParcel);
    }
    return j;
  }
  
  public static ArrayList<Integer> ˌ(Parcel paramParcel, int paramInt)
  {
    int i = ˊ(paramParcel, paramInt);
    int j = paramParcel.dataPosition();
    if (i == 0) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    int k = paramParcel.readInt();
    paramInt = 0;
    while (paramInt < k)
    {
      localArrayList.add(Integer.valueOf(paramParcel.readInt()));
      paramInt += 1;
    }
    paramParcel.setDataPosition(j + i);
    return localArrayList;
  }
  
  public static <T> ArrayList<T> ˎ(Parcel paramParcel, int paramInt, Parcelable.Creator<T> paramCreator)
  {
    paramInt = ˊ(paramParcel, paramInt);
    int i = paramParcel.dataPosition();
    if (paramInt == 0) {
      return null;
    }
    paramCreator = paramParcel.createTypedArrayList(paramCreator);
    paramParcel.setDataPosition(i + paramInt);
    return paramCreator;
  }
  
  public static boolean ˎ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 4);
    return paramParcel.readInt() != 0;
  }
  
  public static byte ˏ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 4);
    return (byte)paramParcel.readInt();
  }
  
  public static float ͺ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 4);
    return paramParcel.readFloat();
  }
  
  public static short ᐝ(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 4);
    return (short)paramParcel.readInt();
  }
  
  public static int ᴬ(int paramInt)
  {
    return 0xFFFF & paramInt;
  }
  
  public static double ι(Parcel paramParcel, int paramInt)
  {
    ˊ(paramParcel, paramInt, 8);
    return paramParcel.readDouble();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á´­
 * JD-Core Version:    0.7.0.1
 */