package o;

import android.media.MediaCodec.BufferInfo;
import android.media.MediaFormat;
import android.util.Base64;
import java.nio.ByteBuffer;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;
import java.util.UUID;

public class akq
  implements akw.if
{
  static final int[] bJN = { 96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350 };
  private MediaFormat bBH;
  private MediaFormat bBI;
  private HashMap<String, Object> bJA = null;
  private HashMap<String, Object> bJB = new HashMap();
  private long bJC;
  private long bJD = 0L;
  private long bJE = 0L;
  private aks bJF = new aks();
  private String bJG;
  private String bJH;
  private int bJI;
  private String bJJ;
  private String bJK;
  private String bJL;
  private if bJM = if.bJP;
  private byte[] bJp = null;
  private byte[] bJq = null;
  private boolean bJr = false;
  private boolean bJs = false;
  private boolean bJt = false;
  private boolean bJu = false;
  private boolean bJv = false;
  private akq.ˊ bJw;
  private long bJx;
  private long bJy;
  private double bJz;
  private akw buM;
  private Timer buQ;
  private long buR = 0L;
  
  public akq(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5)
  {
    this.bJG = paramString1;
    this.bJH = paramString2;
    this.bJI = paramInt;
    this.bJJ = paramString3;
    this.bJK = paramString4;
    this.bJL = paramString5;
    vI();
    vG();
  }
  
  private void AT()
  {
    Object localObject1 = this.buM.getTarget();
    this.buM.ˊ("publish", new Object[] { null, localObject1, "live" });
    Object localObject2 = new HashMap();
    ((HashMap)localObject2).put("connectiondata", "In IP4 0.0.0.0");
    ((HashMap)localObject2).put("name", "Live stream from Periscope");
    ((HashMap)localObject2).put("protocolversion", Integer.valueOf(0));
    ((HashMap)localObject2).put("timing", "0 0");
    localObject1 = new HashMap();
    ((HashMap)localObject1).put("rtpsessioninfo", localObject2);
    ((HashMap)localObject1).put("trackinfo", new Object[] { AU(), AV() });
    int i = this.bBI.getInteger("width");
    int j = this.bBI.getInteger("height");
    ((HashMap)localObject1).put("videocodecid", "avc1");
    ((HashMap)localObject1).put("width", Integer.valueOf(i));
    ((HashMap)localObject1).put("displayWidth", Integer.valueOf(i));
    ((HashMap)localObject1).put("frameWidth", Integer.valueOf(i));
    ((HashMap)localObject1).put("height", Integer.valueOf(j));
    ((HashMap)localObject1).put("displayHeight", Integer.valueOf(j));
    ((HashMap)localObject1).put("frameHeight", Integer.valueOf(j));
    ((HashMap)localObject1).put("audiocodecid", "mp4a");
    ((HashMap)localObject1).put("audiochannels", Integer.valueOf(this.bBH.getInteger("channel-count")));
    ((HashMap)localObject1).put("audiosamplerate", Integer.valueOf(this.bBH.getInteger("sample-rate")));
    localObject2 = new alc(18, 5, this.buM.Bh());
    ((alc)localObject2).ˎ(new Object[] { "onMetadata", localObject1 });
    this.buM.ˏ((alc)localObject2);
    akk.ᐪ("RTMP", "Metadata: " + localObject2);
    this.buM.ᓹ(512);
    AW();
    AX();
  }
  
  private Map AU()
  {
    HashMap localHashMap1 = new HashMap();
    localHashMap1.put("profile-level-id", ᒩ(this.bJp[1] & 0xFF) + ᒩ(this.bJp[2] & 0xFF) + ᒩ(this.bJp[3] & 0xFF));
    localHashMap1.put("sprop-parameter-sets", Base64.encodeToString(this.bJp, 2) + "," + Base64.encodeToString(this.bJq, 2));
    int i = this.bBI.getInteger("width");
    int j = this.bBI.getInteger("height");
    localHashMap1.put("description", "{H264CodecConfigInfo: codec:H264, profile:Main, level:2.1, frameSize:" + i + "x" + j + ", displaySize:" + i + "x" + j + ", crop: l:0 r:0 t:0 b:0}");
    localHashMap1.put("language", "eng");
    localHashMap1.put("timescale", Integer.valueOf(90000));
    localHashMap1.put("type", "video");
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put("sampletype", "H264");
    localHashMap1.put("sampledescription", new Object[] { localHashMap2 });
    akk.ᐪ("RTMP", "Video props: " + localHashMap1);
    return localHashMap1;
  }
  
  private Map AV()
  {
    HashMap localHashMap = new HashMap();
    int i = this.bBH.getInteger("channel-count");
    int j = this.bBH.getInteger("sample-rate");
    localHashMap.put("description", "{AACFrame: codec:AAC, channels:" + i + ", frequency:" + j + ", samplesPerFrame:1024, objectType:LC}");
    localHashMap.put("language", "eng");
    localHashMap.put("timescale", Integer.valueOf(90000));
    localHashMap.put("type", "audio");
    Object localObject = new HashMap();
    ((HashMap)localObject).put("sampletype", "mpeg4-generic");
    localHashMap.put("sampledescription", new Object[] { localObject });
    localObject = Ι(j, i);
    localHashMap.put("config", ᒩ(localObject[0]) + ᒩ(localObject[1]));
    akk.ᐪ("RTMP", "Audio props: " + localHashMap);
    return localHashMap;
  }
  
  private void AW()
  {
    byte[] arrayOfByte1 = AY();
    byte[] arrayOfByte2 = new byte[arrayOfByte1.length + 5];
    arrayOfByte2[0] = 23;
    System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 5, arrayOfByte1.length);
    this.buM.ˊ(arrayOfByte2, 0L);
  }
  
  private void AX()
  {
    int i = this.bBH.getInteger("channel-count");
    byte[] arrayOfByte1 = Ι(this.bBH.getInteger("sample-rate"), i);
    byte[] arrayOfByte2 = new byte[4];
    arrayOfByte2[0] = -81;
    arrayOfByte2[2] = arrayOfByte1[0];
    arrayOfByte2[3] = arrayOfByte1[1];
    this.buM.ˋ(arrayOfByte2, 0L);
  }
  
  private byte[] AY()
  {
    byte[] arrayOfByte = new byte[this.bJp.length + 11 + this.bJq.length];
    arrayOfByte[0] = 1;
    System.arraycopy(this.bJp, 1, arrayOfByte, 1, 3);
    arrayOfByte[4] = -1;
    arrayOfByte[5] = -31;
    arrayOfByte[6] = ((byte)((this.bJp.length << 8) % 255));
    arrayOfByte[7] = ((byte)(this.bJp.length & 0xFF));
    System.arraycopy(this.bJp, 0, arrayOfByte, 8, this.bJp.length);
    int j = this.bJp.length + 8;
    int i = j + 1;
    arrayOfByte[j] = 1;
    j = i + 1;
    arrayOfByte[i] = ((byte)(this.bJq.length << 8 & 0xFF));
    arrayOfByte[j] = ((byte)(this.bJq.length & 0xFF));
    System.arraycopy(this.bJq, 0, arrayOfByte, j + 1, this.bJq.length);
    return arrayOfByte;
  }
  
  private void vG()
  {
    this.buR = System.currentTimeMillis();
    this.buM = new akw();
    this.buM.৲(2500000L);
    this.buM.ˊ(this.bJG, this.bJH, this.bJI, this.bJJ, this.bJK, this.bJL, this);
  }
  
  private void vI()
  {
    this.buQ = new Timer();
    this.buQ.schedule(new akr(this), 3000L, 3000L);
  }
  
  private void vJ()
  {
    if (this.buQ != null)
    {
      this.buQ.cancel();
      this.buQ = null;
    }
  }
  
  private void vK()
  {
    int j = 0;
    long l = System.currentTimeMillis();
    int i = j;
    try
    {
      if (this.buR > 0L)
      {
        i = j;
        if (l - this.buR > 15000L)
        {
          akk.ᐪ("RTMP", "Restart on Connect timeout");
          i = 1;
          this.buR = 0L;
        }
      }
      if (i != 0) {
        Bc();
      }
      return;
    }
    finally {}
  }
  
  private void ˋ(if paramif)
  {
    try
    {
      if localif = this.bJM;
      if (paramif == localif) {
        return;
      }
      this.bJM = paramif;
    }
    finally {}
    if (this.bJw != null) {
      this.bJw.ˊ(paramif);
    }
  }
  
  private byte[] ˤ(long paramLong)
  {
    byte[] arrayOfByte = ι(paramLong);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(arrayOfByte.length * 2 + 23 + 1);
    int i = arrayOfByte.length + 16;
    localByteBuffer.put((byte)6);
    localByteBuffer.put((byte)5);
    while (i > 255)
    {
      localByteBuffer.put((byte)-1);
      i -= 255;
    }
    localByteBuffer.put((byte)i);
    localByteBuffer.putLong(aaw.bvg.getMostSignificantBits());
    localByteBuffer.putLong(aaw.bvg.getLeastSignificantBits());
    i = 0;
    int j = 0;
    while (j < arrayOfByte.length)
    {
      byte b = arrayOfByte[j];
      localByteBuffer.put(b);
      if (b == 0)
      {
        if (i != 0)
        {
          localByteBuffer.put((byte)3);
          i = 0;
        }
        else
        {
          i = 1;
        }
      }
      else {
        i = 0;
      }
      j += 1;
    }
    localByteBuffer.put((byte)-128);
    arrayOfByte = new byte[localByteBuffer.limit()];
    localByteBuffer.rewind();
    localByteBuffer.get(arrayOfByte);
    return arrayOfByte;
  }
  
  private byte[] Ι(int paramInt1, int paramInt2)
  {
    int i = paramInt2;
    if (paramInt2 == 8) {
      i = 7;
    }
    int k = 0;
    paramInt2 = 0;
    int j;
    for (;;)
    {
      j = k;
      if (paramInt2 >= bJN.length) {
        break;
      }
      if (bJN[paramInt2] == paramInt1)
      {
        j = paramInt2;
        break;
      }
      paramInt2 += 1;
    }
    return new byte[] { (byte)(j >> 1 & 0x7 | 0x10), (byte)((j & 0x1) << 7 | i << 3) };
  }
  
  private byte[] ι(long paramLong)
  {
    double d = 0.0D;
    try
    {
      if (this.bJD != 0L)
      {
        long l1 = this.bJD;
        long l2 = this.bJC;
        d = (l1 + (paramLong - l2)) / 1000.0D + 2208988800.0D;
      }
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    this.bJB.put("ntp", Double.valueOf(d));
    HashMap localHashMap = new HashMap();
    if (this.bJA != null) {
      localHashMap.putAll(this.bJA);
    }
    localHashMap.putAll(this.bJB);
    byte[] arrayOfByte = akt.ˋ(new Object[] { localHashMap });
    localHashMap.put("Base64", Base64.encodeToString(arrayOfByte, 2));
    this.buM.ˊ(new Object[] { "Periscope", localHashMap }, paramLong);
    return arrayOfByte;
  }
  
  public static String ᒩ(int paramInt)
  {
    return Integer.toHexString(paramInt & 0xFF | 0x100).substring(1);
  }
  
  public void AS()
  {
    try
    {
      this.bJD = 0L;
      this.bJC = 0L;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
  
  public long AZ()
  {
    if (this.buM == null) {
      return 0L;
    }
    return this.buM.AZ();
  }
  
  public long Ba()
  {
    if (this.buM == null) {
      return 0L;
    }
    return this.buM.Ba();
  }
  
  public Date Bb()
  {
    if (this.buM == null) {
      return new Date();
    }
    return this.buM.Bb();
  }
  
  public void Bc()
  {
    akk.ᐪ("RTMP", "Restarting publish connection");
    ˋ(if.bJR);
    try
    {
      this.bJr = false;
      this.bJu = false;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
    this.buM.shutdown();
    this.buM = null;
    vG();
  }
  
  public void onClose()
  {
    if (this.bJM != if.bJS)
    {
      if ((this.buM.Bi()) && (this.bJI == 80) && (this.bJG.equalsIgnoreCase("rtmp")))
      {
        this.bJI = 443;
        this.bJG = "RTMPS";
        akk.ᐪ("RTMP", "Attempt restart with SSL:443");
      }
      else
      {
        akk.ᐪ("RTMP", "Restart on socket close");
      }
      Bc();
    }
  }
  
  public void onShutdown()
  {
    ˋ(if.bJS);
  }
  
  public void shutdown()
  {
    vJ();
    ˋ(if.bJS);
    if (this.bJF != null) {
      this.bJF.Bd();
    }
    this.bJu = false;
    if (this.buM != null) {
      this.buM.shutdown();
    }
  }
  
  public void Ŀ(int paramInt)
  {
    if (paramInt > 0) {
      try
      {
        if (!this.bJr)
        {
          this.bJr = true;
          if ((this.bJs) && (this.bJt)) {
            AT();
          }
        }
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
  }
  
  public void ˊ(MediaFormat paramMediaFormat1, MediaFormat paramMediaFormat2)
  {
    this.bBI = paramMediaFormat2;
    this.bBH = paramMediaFormat1;
    int j = 0;
    int i = j;
    try
    {
      if (!this.bJt)
      {
        this.bJt = true;
        i = j;
        if (this.bJr)
        {
          boolean bool = this.bJs;
          i = j;
          if (bool) {
            i = 1;
          }
        }
      }
    }
    finally {}
    if (i != 0) {
      AT();
    }
    this.bJz = (this.bBH.getInteger("channel-count") * 1000.0D / this.bBH.getInteger("sample-rate"));
  }
  
  public void ˊ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    long l = paramBufferInfo.presentationTimeUs / 1000L;
    try
    {
      if ((this.bJD == 0L) && (l > 0L))
      {
        this.bJD = akx.Bl().getTime();
        this.bJC = l;
      }
      this.bJE = l;
    }
    finally {}
    if (this.bJF != null) {
      this.bJF.ˏ(paramByteBuffer, paramBufferInfo);
    }
    int i2 = 0;
    int j = 0;
    int i = 0;
    int n = 0;
    int m = 0;
    int i1;
    int i5;
    int i3;
    int i4;
    int i6;
    for (int k = 0;; k = i6)
    {
      i1 = j;
      i5 = i;
      i3 = n;
      i4 = m;
      i6 = k;
      if (i2 >= paramByteBuffer.limit() - 4) {
        break;
      }
      i1 = j;
      i3 = i;
      i4 = n;
      i5 = m;
      i6 = k;
      if (paramByteBuffer.get(i2) == 0)
      {
        i1 = j;
        i3 = i;
        i4 = n;
        i5 = m;
        i6 = k;
        if (paramByteBuffer.get(i2 + 1) == 0)
        {
          i1 = j;
          i3 = i;
          i4 = n;
          i5 = m;
          i6 = k;
          if (paramByteBuffer.get(i2 + 2) == 1)
          {
            int i7 = paramByteBuffer.get(i2 + 3);
            i1 = i7 & 0x1F;
            if ((i7 & 0x60) != 0) {
              m = 1;
            }
            if (i1 == 5)
            {
              n = 1;
              k = 1;
            }
            if (i1 == 7) {
              akk.ᐪ("RTMP", "SPS found");
            }
            if (i1 == 1) {
              k = 1;
            }
            if (j == 0) {
              j = i2 + 3;
            } else {
              i = i2 + 3;
            }
            i1 = j;
            i3 = i;
            i4 = n;
            i5 = m;
            i6 = k;
            if ((i7 & 0x1F) != 7)
            {
              i1 = j;
              i5 = i;
              i3 = n;
              i4 = m;
              i6 = k;
              break;
            }
          }
        }
      }
      i2 += 1;
      j = i1;
      i = i3;
      n = i4;
      m = i5;
    }
    if (i5 > 0)
    {
      k = i5 - 3 - i1;
      j = paramByteBuffer.limit() - i5;
    }
    else
    {
      k = paramByteBuffer.limit() - i1;
      j = 0;
    }
    boolean bool;
    if (i5 > 0) {
      if (((paramByteBuffer.get(i1) & 0x1F) == 7) && ((paramByteBuffer.get(i5) & 0x1F) == 8)) {
        try
        {
          this.bJp = new byte[k];
          paramByteBuffer.position(i1);
          paramByteBuffer.get(this.bJp, 0, k);
          this.bJq = new byte[j];
          paramByteBuffer.position(i5);
          paramByteBuffer.get(this.bJq, 0, j);
          m = 0;
          i = m;
          try
          {
            if (!this.bJs)
            {
              this.bJs = true;
              i = m;
              if (this.bJr)
              {
                bool = this.bJt;
                i = m;
                if (bool) {
                  i = 1;
                }
              }
            }
          }
          finally {}
          if (i != 0) {
            AT();
          }
        }
        finally {}
      } else {
        akk.ᐪ("RTMP", "Unexpected NALU structure");
      }
    }
    if (i6 == 0) {
      return;
    }
    try
    {
      bool = this.bJu;
      if (!bool) {
        return;
      }
    }
    finally
    {
      paramByteBuffer = finally;
      throw paramByteBuffer;
    }
    if (!this.bJv)
    {
      if (i3 == 0) {
        return;
      }
      this.bJv = true;
    }
    m = k + 4;
    i = m;
    if (j > 0) {
      i = m + (j + 4);
    }
    paramBufferInfo = null;
    j = i;
    if (i3 != 0)
    {
      i += this.bJp.length + this.bJq.length + 8;
      localObject = ˤ(l);
      j = i;
      paramBufferInfo = (MediaCodec.BufferInfo)localObject;
      if (localObject != null)
      {
        j = i + (localObject.length + 4);
        paramBufferInfo = (MediaCodec.BufferInfo)localObject;
      }
    }
    Object localObject = this.buM.ᵔ(9, 7, this.buM.Bh(), j + 5);
    akz localakz = ((alc)localObject).Br();
    if (i3 != 0) {
      localakz.ˉ((byte)23);
    } else if (i4 != 0) {
      localakz.ˉ((byte)39);
    } else {
      localakz.ˉ((byte)55);
    }
    localakz.ˉ((byte)1);
    localakz.ˉ((byte)0);
    localakz.ˉ((byte)0);
    localakz.ˉ((byte)0);
    i = 5;
    if (i3 != 0)
    {
      akw.ͺ(this.bJp.length, localakz.buffer, 5);
      System.arraycopy(this.bJp, 0, localakz.buffer, 9, this.bJp.length);
      i = this.bJp.length + 4 + 5;
      akw.ͺ(this.bJq.length, localakz.buffer, i);
      System.arraycopy(this.bJq, 0, localakz.buffer, i + 4, this.bJq.length);
      j = i + (this.bJq.length + 4);
      i = j;
      if (paramBufferInfo != null)
      {
        akw.ͺ(paramBufferInfo.length, localakz.buffer, j);
        System.arraycopy(paramBufferInfo, 0, localakz.buffer, j + 4, paramBufferInfo.length);
        i = j + (paramBufferInfo.length + 4);
      }
    }
    akw.ͺ(k, localakz.buffer, i);
    i += 4;
    paramByteBuffer.position(i1);
    paramByteBuffer.get(localakz.buffer, i, k);
    localakz.length = (i + k);
    ((alc)localObject).setTime(l);
    this.buM.ˏ((alc)localObject);
    this.buM.ˎ((alc)localObject);
  }
  
  public void ˊ(HashMap<String, Object> paramHashMap)
  {
    this.bJA = paramHashMap;
    if ((this.bJr) && (this.bJs))
    {
      long l;
      try
      {
        l = this.bJE;
      }
      finally
      {
        paramHashMap = finally;
        throw paramHashMap;
      }
      ι(l);
    }
  }
  
  public void ˊ(akq.ˊ paramˊ)
  {
    this.bJw = paramˊ;
  }
  
  public boolean ˊ(alc paramalc)
  {
    if (paramalc.getType() == 20)
    {
      paramalc = paramalc.Bu();
      if ((((String)paramalc[0]).equals("onStatus")) && (paramalc.length > 3) && ((paramalc[3] instanceof Map)) && (((String)((Map)paramalc[3]).get("code")).equals("NetStream.Publish.Start")))
      {
        try
        {
          this.bJv = false;
          this.bJu = true;
          this.buR = 0L;
        }
        finally
        {
          paramalc = finally;
          throw paramalc;
        }
        ˋ(if.bJQ);
      }
    }
    return false;
  }
  
  public void ˋ(ByteBuffer paramByteBuffer, MediaCodec.BufferInfo paramBufferInfo)
  {
    long l = paramBufferInfo.presentationTimeUs / 1000L;
    try
    {
      if (!this.bJu)
      {
        this.bJx = 0L;
        return;
      }
      if ((this.bJD == 0L) && (l > 0L))
      {
        this.bJD = akx.Bl().getTime();
        this.bJC = l;
      }
    }
    finally {}
    if (this.bJx == 0L) {
      this.bJy = l;
    } else {
      l = this.bJy + Math.round(this.bJx * this.bJz);
    }
    this.bJx += 1024L;
    paramBufferInfo.presentationTimeUs = (1000L * l);
    if (this.bJF != null) {
      this.bJF.ˎ(paramByteBuffer, paramBufferInfo);
    }
    paramBufferInfo = this.buM.ᵔ(8, 6, this.buM.Bh(), paramByteBuffer.limit() + 2);
    akz localakz = paramBufferInfo.Br();
    localakz.ˉ((byte)-81);
    localakz.ˉ((byte)1);
    paramByteBuffer.get(localakz.buffer, localakz.length, paramByteBuffer.limit());
    localakz.length += paramByteBuffer.limit();
    paramBufferInfo.setTime(l);
    this.buM.ˏ(paramBufferInfo);
    this.buM.ˎ(paramBufferInfo);
  }
  
  public void ᴴ(String paramString)
  {
    if (this.bJF != null) {
      this.bJF.ˊ(paramString, this.bBH, this.bBI);
    }
  }
  
  public static enum if
  {
    private if() {}
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akq
 * JD-Core Version:    0.7.0.1
 */