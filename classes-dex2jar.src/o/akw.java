package o;

import java.net.URI;
import java.util.Arrays;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;

public class akw
  implements ala.if
{
  private String bJH;
  private int bJI;
  private String bJJ;
  private String bJL;
  private int bKA;
  private int bKB;
  private long bKC = 0L;
  private long bKD = 0L;
  private long bKE = 0L;
  private boolean bKF = false;
  private aky bKG = new aky();
  private akw.ˊ bKH;
  private ald bKm;
  private if bKq;
  private ala bKr;
  private String bKs;
  private String bKt;
  private byte[] bKu;
  private long bKv;
  private List<akz> bKw;
  private int bKx = 0;
  private int bKy = 0;
  private int bKz = 0;
  
  private void Bj()
  {
    this.bKm = new ald(this.bKr);
    this.bKA = 0;
    String str1 = this.bJJ + "?" + this.bJL;
    String str2 = this.bKs + "://" + this.bJH + ":" + this.bJI + "/" + str1 + "/";
    this.bKz = 1;
    this.bKH = akw.ˊ.bKJ;
    this.bKB = 0;
    HashMap localHashMap = new HashMap();
    localHashMap.put("app", str1);
    localHashMap.put("tcUrl", str2);
    localHashMap.put("fpad", Boolean.valueOf(false));
    localHashMap.put("audioCodecs", Integer.valueOf(1024));
    localHashMap.put("videoCodecs", Integer.valueOf(128));
    ˊ("connect", new Object[] { localHashMap });
  }
  
  private void Bk()
  {
    this.bKr.יִ(new byte[] { 3 }, 0, 1);
    this.bKu = new byte[1536];
    new Random().nextBytes(this.bKu);
    Arrays.fill(this.bKu, 0, 8, (byte)0);
    this.bKv = System.currentTimeMillis();
    this.bKH = akw.ˊ.bKK;
    this.bKz = 1;
    this.bKr.יִ(this.bKu, 0, this.bKu.length);
  }
  
  private void vG()
  {
    boolean bool = false;
    if (this.bKs.equalsIgnoreCase("rtmps")) {
      bool = true;
    }
    this.bKr = new ala();
    this.bKr.ˊ(this.bJH, this.bJI, bool, this);
  }
  
  private boolean ˊ(alc paramalc)
  {
    if ((paramalc.getType() != 8) && (paramalc.getType() != 9) && ((this.bKH != akw.ˊ.bKO) || (paramalc.getType() != 18))) {
      akk.ᐪ("RTMP", "Receive:" + paramalc);
    }
    if (paramalc.Bp() == 2)
    {
      alc localalc;
      if (paramalc.getType() == 5)
      {
        this.bKD = akt.ᒽ(paramalc.Br().buffer, 0);
        if (this.bKE > 0L)
        {
          paramalc = new byte[4];
          ͺ(this.bKE, paramalc, 0);
          localalc = new alc(5, 2, 0);
          localalc.ᓫ(paramalc);
          ˏ(localalc);
          paramalc = new alc(6, 2, 0);
          paramalc.ᓫ(new byte[] { 2 });
          ˏ(paramalc);
          return false;
        }
      }
      else
      {
        if (paramalc.getType() == 1)
        {
          int i = (int)akt.ᒽ(paramalc.Br().buffer, 0);
          this.bKm.ᓶ(i);
          return false;
        }
        if (paramalc.getType() == 4)
        {
          paramalc = Arrays.copyOfRange(paramalc.Br().buffer, 0, paramalc.Br().length);
          if (((paramalc[0] & 0xFF) << 8 | paramalc[1] & 0xFF) == 6)
          {
            paramalc[1] = 7;
            localalc = new alc(4, 2, 0);
            localalc.ᓫ(paramalc);
            ˏ(localalc);
          }
          return false;
        }
      }
    }
    else
    {
      if (this.bKH == akw.ˊ.bKO) {
        return this.bKq.ˊ(paramalc);
      }
      if (paramalc.getType() == 20)
      {
        paramalc = paramalc.Bu();
        if (((paramalc[1] instanceof Double)) && (Math.round(((Double)paramalc[1]).doubleValue()) == this.bKA))
        {
          if (this.bKH == akw.ˊ.bKJ)
          {
            І(300, 0);
            this.bKB = 0;
            ˊ("createStream", new Object[] { null });
            this.bKH = akw.ˊ.bKN;
            return false;
          }
          if ((this.bKH == akw.ˊ.bKN) && (paramalc.length == 4) && ((paramalc[3] instanceof Double)))
          {
            this.bKB = ((int)Math.round(((Double)paramalc[3]).doubleValue()));
            akk.ᐪ("RTMP", "Media Stream: " + this.bKB);
            this.bKH = akw.ˊ.bKO;
            this.bKq.Ŀ(this.bKB);
          }
        }
      }
    }
    return false;
  }
  
  public static void ͺ(long paramLong, byte[] paramArrayOfByte, int paramInt)
  {
    paramArrayOfByte[paramInt] = ((byte)(int)((paramLong >> 24) % 256L));
    paramArrayOfByte[(paramInt + 1)] = ((byte)(int)((paramLong >> 16) % 256L));
    paramArrayOfByte[(paramInt + 2)] = ((byte)(int)((paramLong >> 8) % 256L));
    paramArrayOfByte[(paramInt + 3)] = ((byte)(int)(paramLong % 256L));
  }
  
  private void І(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = new byte[10];
    arrayOfByte[0] = 0;
    arrayOfByte[1] = 3;
    ͺ(paramInt2, arrayOfByte, 2);
    ͺ(paramInt1, arrayOfByte, 6);
    alc localalc = new alc(4, 2, 0);
    localalc.ᓫ(arrayOfByte);
    ˏ(localalc);
  }
  
  private akz ᓸ(int paramInt)
  {
    if (paramInt > this.bKx) {
      return null;
    }
    akz localakz1 = this.bKG.ᓽ(paramInt);
    while (paramInt > 0)
    {
      akz localakz2 = (akz)this.bKw.get(0);
      int j = localakz2.length - this.bKy;
      int i = j;
      if (j > paramInt) {
        i = paramInt;
      }
      localakz1.ᵣ(localakz2.buffer, this.bKy, i);
      this.bKy += i;
      this.bKx -= i;
      paramInt -= i;
      if (this.bKy >= localakz2.length)
      {
        this.bKw.remove(0);
        this.bKr.ˊ(localakz2);
        this.bKy = 0;
      }
    }
    return localakz1;
  }
  
  public long AZ()
  {
    return this.bKr.AZ();
  }
  
  public long Ba()
  {
    return this.bKr.Ba();
  }
  
  public Date Bb()
  {
    return this.bKr.Bb();
  }
  
  public int Bh()
  {
    return this.bKB;
  }
  
  public boolean Bi()
  {
    return this.bKF;
  }
  
  public String getTarget()
  {
    return this.bKt;
  }
  
  public void shutdown()
  {
    try
    {
      if (this.bKH == akw.ˊ.bKO)
      {
        this.bKH = akw.ˊ.bKP;
        ˊ("deleteStream", new Object[] { null, Integer.valueOf(this.bKB) });
      }
      this.bKr.shutdown();
      this.bKq.onShutdown();
      return;
    }
    finally {}
  }
  
  long timestamp()
  {
    return new Date().getTime() - this.bKv;
  }
  
  public void ˊ(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4, String paramString5, if paramif)
  {
    this.bKq = paramif;
    this.bKs = paramString1;
    this.bJH = paramString2;
    this.bJI = paramInt;
    this.bJJ = paramString3;
    this.bKt = paramString4;
    this.bJL = ("t=" + paramString5);
    vG();
  }
  
  public void ˊ(String paramString, if paramif)
  {
    this.bKq = paramif;
    try
    {
      paramString = new URI(paramString);
      this.bKs = paramString.getScheme();
      this.bJH = paramString.getHost();
      this.bJI = paramString.getPort();
      this.bJL = paramString.getQuery();
      paramif = paramString.getPath();
      paramString = paramif;
      if (paramif.charAt(0) == '/') {
        paramString = paramif.substring(1);
      }
      int i = paramString.indexOf('/');
      if (i <= 0) {
        return;
      }
      this.bJJ = paramString.substring(0, i);
      this.bKt = paramString.substring(i + 1);
      vG();
      return;
    }
    catch (Exception paramString)
    {
      paramString.printStackTrace();
    }
  }
  
  public void ˊ(String paramString, Object[] paramArrayOfObject)
  {
    alc localalc = new alc(20, 3, this.bKB);
    Object[] arrayOfObject = new Object[paramArrayOfObject.length + 2];
    arrayOfObject[0] = paramString;
    int i = this.bKA + 1;
    this.bKA = i;
    arrayOfObject[1] = Integer.valueOf(i);
    System.arraycopy(paramArrayOfObject, 0, arrayOfObject, 2, paramArrayOfObject.length);
    localalc.ˎ(arrayOfObject);
    ˏ(localalc);
  }
  
  public void ˊ(akz paramakz)
  {
    if (paramakz.Bo() == this.bKG) {
      this.bKG.ˋ(paramakz);
    }
  }
  
  public void ˊ(ala paramala)
  {
    this.bKw = new LinkedList();
    Bk();
  }
  
  public void ˊ(ala paramala, akz paramakz)
  {
    this.bKw.add(paramakz);
    this.bKx += paramakz.length;
    if ((this.bKD > 0L) && (this.bKx - this.bKC > this.bKD))
    {
      this.bKC = this.bKx;
      paramala = new byte[4];
      ͺ(this.bKC, paramala, 0);
      paramakz = new alc(3, 2, 0);
      paramakz.ᓫ(paramala);
      ˏ(paramakz);
    }
    for (;;)
    {
      paramala = ᓸ(this.bKz);
      if (paramala == null) {
        return;
      }
      switch (1.bKI[this.bKH.ordinal()])
      {
      default: 
        break;
      case 1: 
        if (paramala.buffer[0] != 3)
        {
          akk.ᐪ("RTMP", "Invalid version " + paramala.buffer[0]);
          if ((paramala.buffer[0] == 72) && (this.bJI == 80))
          {
            akk.ᐪ("RTMP", "Proxy error? try SSL");
            this.bKF = true;
            this.bKq.onClose();
            this.bKH = akw.ˊ.bKP;
            this.bKr.shutdown();
            return;
          }
        }
        this.bKH = akw.ˊ.bKL;
        this.bKz = 1536;
        ˊ(paramala);
        break;
      case 2: 
        paramakz = Arrays.copyOfRange(paramala.buffer, 0, paramala.length);
        ˊ(paramala);
        ͺ(timestamp(), paramakz, 4);
        this.bKr.יִ(paramakz, 0, paramakz.length);
        this.bKH = akw.ˊ.bKM;
        this.bKz = 1536;
        break;
      case 3: 
        paramakz = Arrays.copyOfRange(paramala.buffer, 8, paramala.length);
        byte[] arrayOfByte = Arrays.copyOfRange(this.bKu, 8, paramala.length);
        ˊ(paramala);
        if (Arrays.equals(paramakz, arrayOfByte)) {
          akk.ᐪ("RTMP", "C2 ok");
        } else {
          akk.ᐪ("RTMP", "C2 mismatch");
        }
        Bj();
        break;
      }
      paramakz = this.bKm.יּ(paramala.buffer, 0, paramala.length);
      ˊ(paramala);
      if ((paramakz != null) && (!ˊ(paramakz))) {
        ˎ(paramakz);
      }
      this.bKz = this.bKm.Bf();
    }
  }
  
  public void ˊ(byte[] paramArrayOfByte, long paramLong)
  {
    alc localalc = new alc(9, 7, this.bKB);
    localalc.setTime(paramLong);
    localalc.ᓫ(paramArrayOfByte);
    ˏ(localalc);
  }
  
  public void ˊ(Object[] paramArrayOfObject, long paramLong)
  {
    alc localalc = new alc(18, 5, this.bKB);
    localalc.ˎ(paramArrayOfObject);
    localalc.setTime(paramLong);
    ˏ(localalc);
  }
  
  public void ˋ(ala paramala)
  {
    akk.ᐪ("RTMP", "Close stream");
    if (this.bKH != akw.ˊ.bKP) {
      this.bKq.onClose();
    }
  }
  
  public void ˋ(byte[] paramArrayOfByte, long paramLong)
  {
    alc localalc = new alc(8, 6, this.bKB);
    localalc.setTime(paramLong);
    localalc.ᓫ(paramArrayOfByte);
    ˏ(localalc);
  }
  
  public void ˎ(alc paramalc)
  {
    if ((paramalc.Br() != null) && (paramalc.Br().Bo() != null)) {
      this.bKm.ˎ(paramalc);
    }
  }
  
  public void ˏ(alc paramalc)
  {
    if ((paramalc.getType() != 8) && (paramalc.getType() != 9) && (paramalc.getType() != 18)) {
      akk.ᐪ("RTMP", "Send:" + paramalc);
    }
    this.bKm.ᐝ(paramalc);
  }
  
  public void ৲(long paramLong)
  {
    this.bKE = paramLong;
  }
  
  public void ᓹ(int paramInt)
  {
    alc localalc = new alc(1, 2, 0);
    byte[] arrayOfByte = new byte[4];
    ͺ(paramInt, arrayOfByte, 0);
    localalc.ᓫ(arrayOfByte);
    ˏ(localalc);
    this.bKm.ᓷ(paramInt);
  }
  
  public alc ᵔ(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.bKm == null) {
      return new alc(paramInt1, paramInt2, paramInt3);
    }
    return this.bKm.ᵔ(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static abstract interface if
  {
    public abstract void onClose();
    
    public abstract void onShutdown();
    
    public abstract void Ŀ(int paramInt);
    
    public abstract boolean ˊ(alc paramalc);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akw
 * JD-Core Version:    0.7.0.1
 */