package o;

import android.annotation.TargetApi;
import android.media.MediaCodecInfo;
import android.media.MediaCodecInfo.CodecCapabilities;
import android.media.MediaCodecInfo.CodecProfileLevel;
import android.util.Log;
import android.util.Pair;
import java.util.HashMap;

@TargetApi(16)
public class ԁ
{
  private static final HashMap<ԁ.if, Pair<String, MediaCodecInfo.CodecCapabilities>> sa = new HashMap();
  
  private static int ɹ(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      break;
    case 1: 
      return 25344;
    case 2: 
      return 25344;
    case 8: 
      return 101376;
    case 16: 
      return 101376;
    case 32: 
      return 101376;
    case 64: 
      return 202752;
    case 128: 
      return 414720;
    case 256: 
      return 414720;
    case 512: 
      return 921600;
    case 1024: 
      return 1310720;
    case 2048: 
      return 2097152;
    case 4096: 
      return 2097152;
    case 8192: 
      return 2228224;
    case 16384: 
      return 5652480;
    case 32768: 
      return 9437184;
    }
    return -1;
  }
  
  private static Pair<String, MediaCodecInfo.CodecCapabilities> ˊ(ԁ.if paramif, ԁ.ˋ paramˋ)
  {
    try
    {
      paramif = ˋ(paramif, paramˋ);
      return paramif;
    }
    catch (Exception paramif)
    {
      throw new ԁ.ˊ(paramif, null);
    }
  }
  
  private static boolean ˊ(MediaCodecInfo.CodecCapabilities paramCodecCapabilities)
  {
    if (ผ.SDK_INT >= 19) {
      return ˋ(paramCodecCapabilities);
    }
    return false;
  }
  
  private static Pair<String, MediaCodecInfo.CodecCapabilities> ˋ(ԁ.if paramif, ԁ.ˋ paramˋ)
  {
    String str1 = paramif.mimeType;
    int k = paramˋ.getCodecCount();
    boolean bool1 = paramˋ.л();
    int i = 0;
    while (i < k)
    {
      MediaCodecInfo localMediaCodecInfo = paramˋ.getCodecInfoAt(i);
      String str2 = localMediaCodecInfo.getName();
      if ((!localMediaCodecInfo.isEncoder()) && (str2.startsWith("OMX.")) && ((bool1) || (!str2.endsWith(".secure"))))
      {
        String[] arrayOfString = localMediaCodecInfo.getSupportedTypes();
        int j = 0;
        while (j < arrayOfString.length)
        {
          Object localObject = arrayOfString[j];
          if (((String)localObject).equalsIgnoreCase(str1))
          {
            MediaCodecInfo.CodecCapabilities localCodecCapabilities = localMediaCodecInfo.getCapabilitiesForType((String)localObject);
            boolean bool2 = paramˋ.ˊ(paramif.mimeType, localCodecCapabilities);
            HashMap localHashMap;
            if (!bool1)
            {
              localHashMap = sa;
              if (paramif.sb) {
                localObject = new ԁ.if(str1, false);
              } else {
                localObject = paramif;
              }
              localHashMap.put(localObject, Pair.create(str2, localCodecCapabilities));
              if (bool2)
              {
                localHashMap = sa;
                if (paramif.sb) {
                  localObject = paramif;
                } else {
                  localObject = new ԁ.if(str1, true);
                }
                localHashMap.put(localObject, Pair.create(str2 + ".secure", localCodecCapabilities));
              }
            }
            else
            {
              localHashMap = sa;
              if (paramif.sb == bool2) {
                localObject = paramif;
              } else {
                localObject = new ԁ.if(str1, bool2);
              }
              localHashMap.put(localObject, Pair.create(str2, localCodecCapabilities));
            }
            if (sa.containsKey(paramif)) {
              return (Pair)sa.get(paramif);
            }
          }
          j += 1;
        }
      }
      i += 1;
    }
    return null;
  }
  
  public static ʄ ˋ(String paramString, boolean paramBoolean)
  {
    paramString = ˎ(paramString, paramBoolean);
    if (paramString == null) {
      return null;
    }
    return new ʄ((String)paramString.first, ˊ((MediaCodecInfo.CodecCapabilities)paramString.second));
  }
  
  @TargetApi(19)
  private static boolean ˋ(MediaCodecInfo.CodecCapabilities paramCodecCapabilities)
  {
    return paramCodecCapabilities.isFeatureSupported("adaptive-playback");
  }
  
  private static Pair<String, MediaCodecInfo.CodecCapabilities> ˎ(String paramString, boolean paramBoolean)
  {
    try
    {
      ԁ.if localif = new ԁ.if(paramString, paramBoolean);
      if (sa.containsKey(localif))
      {
        paramString = (Pair)sa.get(localif);
        return paramString;
      }
      if (ผ.SDK_INT >= 21) {
        localObject = new ԁ.ˏ(paramBoolean);
      } else {
        localObject = new ԁ.ˎ(null);
      }
      Pair localPair = ˊ(localif, (ԁ.ˋ)localObject);
      Object localObject = localPair;
      if (paramBoolean)
      {
        localObject = localPair;
        if (localPair == null)
        {
          localObject = localPair;
          if (ผ.SDK_INT >= 21)
          {
            localPair = ˊ(localif, new ԁ.ˎ(null));
            localObject = localPair;
            if (localPair != null)
            {
              Log.w("MediaCodecUtil", "MediaCodecList API didn't list secure decoder for: " + paramString + ". Assuming: " + (String)localPair.first);
              localObject = localPair;
            }
          }
        }
      }
      return localObject;
    }
    finally {}
  }
  
  public static int з()
  {
    Object localObject = ˎ("video/avc", false);
    if (localObject == null) {
      return 0;
    }
    int j = 0;
    localObject = (MediaCodecInfo.CodecCapabilities)((Pair)localObject).second;
    int i = 0;
    while (i < ((MediaCodecInfo.CodecCapabilities)localObject).profileLevels.length)
    {
      j = Math.max(ɹ(localObject.profileLevels[i].level), j);
      i += 1;
    }
    return j;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.Ô
 * JD-Core Version:    0.7.0.1
 */