package o;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;

public class Ỵ
{
  private final int maxHeight;
  private final int maxWidth;
  long re;
  private final ϒ tF;
  private final イ xJ;
  private final List<ｚ> xK;
  private final ব[] xL;
  private final ʭ xM;
  private final int xN;
  private final String xO;
  private final long xP;
  private final long xQ;
  private final ۂ xR;
  byte[] xS;
  final ῗ[] xT;
  final long[] xU;
  final long[] xV;
  boolean xW;
  private int xX;
  private Uri xY;
  private byte[] xZ;
  private String ya;
  private byte[] yb;
  
  public Ỵ(ϒ paramϒ, String paramString, ゞ paramゞ, ʭ paramʭ, int[] paramArrayOfInt, int paramInt, long paramLong1, long paramLong2, ۂ paramۂ)
  {
    this.tF = paramϒ;
    this.xM = paramʭ;
    this.xN = paramInt;
    this.xR = paramۂ;
    this.xP = (1000L * paramLong1);
    this.xQ = (1000L * paramLong2);
    this.xO = paramゞ.xO;
    this.xJ = new イ();
    if (paramゞ.type == 1)
    {
      this.xK = Collections.singletonList(new ｚ(0, paramString, 0, null, -1, -1));
      paramArrayOfInt = null;
      this.xT = new ῗ[1];
      this.xU = new long[1];
      this.xV = new long[1];
      ˊ(0, (ῗ)paramゞ);
    }
    else
    {
      this.xK = ((ἷ)paramゞ).xK;
      paramInt = this.xK.size();
      this.xT = new ῗ[paramInt];
      this.xU = new long[paramInt];
      this.xV = new long[paramInt];
    }
    this.xL = ˋ(this.xK, paramArrayOfInt);
    int i = -1;
    paramInt = -1;
    int k = 2147483647;
    int j = 0;
    while (j < this.xL.length)
    {
      int n = ˊ(this.xL[j]);
      int m = k;
      if (n < k)
      {
        m = n;
        this.xX = j;
      }
      i = Math.max(this.xL[j].width, i);
      paramInt = Math.max(this.xL[j].height, paramInt);
      j += 1;
      k = m;
    }
    if (i <= 0) {
      i = 1920;
    }
    this.maxWidth = i;
    if (paramInt <= 0) {
      paramInt = 1080;
    }
    this.maxHeight = paramInt;
  }
  
  public Ỵ(ϒ paramϒ, String paramString, ゞ paramゞ, ʭ paramʭ, int[] paramArrayOfInt, int paramInt, ۂ paramۂ)
  {
    this(paramϒ, paramString, paramゞ, paramʭ, paramArrayOfInt, paramInt, 5000L, 20000L, paramۂ);
  }
  
  private int ˊ(ব paramব)
  {
    int i = 0;
    while (i < this.xK.size())
    {
      if (((ｚ)this.xK.get(i)).tD.equals(paramব)) {
        return i;
      }
      i += 1;
    }
    throw new IllegalStateException("Invalid format: " + paramব);
  }
  
  private int ˊ(ｕ paramｕ, long paramLong)
  {
    ἷ();
    if (paramｕ == null) {
      return this.xX;
    }
    long l = this.xM.ﾗ();
    if (l == -1L) {
      return this.xX;
    }
    int i = ᴊ((int)((float)l * 0.8F));
    if (i == this.xX) {
      return this.xX;
    }
    if (this.xN == 1) {
      l = paramｕ.tN;
    } else {
      l = paramｕ.tO;
    }
    paramLong = l - paramLong;
    if ((this.xU[this.xX] != 0L) || ((i > this.xX) && (paramLong < this.xQ)) || ((i < this.xX) && (paramLong > this.xP))) {
      return i;
    }
    return this.xX;
  }
  
  private Ỵ.if ˊ(Uri paramUri, String paramString)
  {
    paramUri = new к(paramUri, 0L, -1L, null, 1);
    return new Ỵ.if(this.tF, paramUri, this.xS, paramString);
  }
  
  private static boolean ˊ(ｚ paramｚ, String paramString)
  {
    paramｚ = paramｚ.tD.tL;
    if (TextUtils.isEmpty(paramｚ)) {
      return false;
    }
    paramｚ = paramｚ.split("(\\s*,\\s*)|(\\s*$)");
    int i = 0;
    while (i < paramｚ.length)
    {
      if (paramｚ[i].startsWith(paramString)) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  private static ব[] ˋ(List<ｚ> paramList, int[] paramArrayOfInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramArrayOfInt != null)
    {
      i = 0;
      while (i < paramArrayOfInt.length)
      {
        localArrayList.add(paramList.get(paramArrayOfInt[i]));
        i += 1;
      }
    }
    else
    {
      localArrayList.addAll(paramList);
    }
    paramList = new ArrayList();
    paramArrayOfInt = new ArrayList();
    int i = 0;
    while (i < localArrayList.size())
    {
      ｚ localｚ = (ｚ)localArrayList.get(i);
      if ((localｚ.tD.height > 0) || (ˊ(localｚ, "avc"))) {
        paramList.add(localｚ);
      } else if (ˊ(localｚ, "mp4a")) {
        paramArrayOfInt.add(localｚ);
      }
      i += 1;
    }
    if (paramList.isEmpty())
    {
      paramList = localArrayList;
      if (paramArrayOfInt.size() < localArrayList.size())
      {
        localArrayList.removeAll(paramArrayOfInt);
        paramList = localArrayList;
      }
    }
    paramArrayOfInt = new ব[paramList.size()];
    i = 0;
    while (i < paramArrayOfInt.length)
    {
      paramArrayOfInt[i] = ((ｚ)paramList.get(i)).tD;
      i += 1;
    }
    Arrays.sort(paramArrayOfInt, new ব.if());
    return paramArrayOfInt;
  }
  
  private int ᴊ(int paramInt)
  {
    int j = -1;
    int i = 0;
    while (i < this.xL.length)
    {
      int k = ˊ(this.xL[i]);
      if (this.xU[k] == 0L)
      {
        if (this.xL[i].tH <= paramInt) {
          return i;
        }
        j = i;
      }
      i += 1;
    }
    boolean bool;
    if (j != -1) {
      bool = true;
    } else {
      bool = false;
    }
    ړ.ᐟ(bool);
    return j;
  }
  
  private boolean ᴷ(int paramInt)
  {
    ῗ localῗ = this.xT[paramInt];
    return SystemClock.elapsedRealtime() - this.xV[paramInt] >= localῗ.yl * 1000 / 2;
  }
  
  private int ᵏ(int paramInt)
  {
    ῗ localῗ = this.xT[paramInt];
    if (localῗ.ym.size() > 3) {
      paramInt = localῗ.ym.size() - 3;
    } else {
      paramInt = 0;
    }
    return localῗ.yk + paramInt;
  }
  
  private void Ỵ()
  {
    this.xY = null;
    this.xZ = null;
    this.ya = null;
    this.yb = null;
  }
  
  private boolean ἶ()
  {
    int i = 0;
    while (i < this.xU.length)
    {
      if (this.xU[i] == 0L) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private void ἷ()
  {
    long l = SystemClock.elapsedRealtime();
    int i = 0;
    while (i < this.xU.length)
    {
      if ((this.xU[i] != 0L) && (l - this.xU[i] > 60000L)) {
        this.xU[i] = 0L;
      }
      i += 1;
    }
  }
  
  private Ỵ.ˊ ⅼ(int paramInt)
  {
    Uri localUri = ป.ʻ(this.xO, ((ｚ)this.xK.get(paramInt)).url);
    к localк = new к(localUri, 0L, -1L, null, 1);
    return new Ỵ.ˊ(this.tF, localк, this.xS, this.xJ, paramInt, localUri.toString());
  }
  
  public र ˊ(ｕ paramｕ, long paramLong1, long paramLong2)
  {
    int i;
    boolean bool1;
    if (this.xN == 0)
    {
      i = this.xX;
      bool1 = false;
    }
    else
    {
      i = ˊ(paramｕ, paramLong2);
      if ((i != this.xX) && (this.xN == 1)) {
        bool1 = true;
      } else {
        bool1 = false;
      }
    }
    int m = ˊ(this.xL[i]);
    Object localObject2 = this.xT[m];
    if (localObject2 == null) {
      return ⅼ(m);
    }
    this.xX = i;
    int k = 0;
    if (this.xW)
    {
      if (paramｕ == null)
      {
        i = ᵏ(m);
      }
      else
      {
        if (bool1) {
          j = paramｕ.tP;
        } else {
          j = paramｕ.tP + 1;
        }
        i = j;
        if (j < ((ῗ)localObject2).yk)
        {
          i = ᵏ(m);
          k = 1;
        }
      }
    }
    else if (paramｕ == null) {
      i = ผ.ˊ(((ῗ)localObject2).ym, Long.valueOf(paramLong1), true, true) + ((ῗ)localObject2).yk;
    } else if (bool1) {
      i = paramｕ.tP;
    } else {
      i = paramｕ.tP + 1;
    }
    int j = i - ((ῗ)localObject2).yk;
    if (j >= ((ῗ)localObject2).ym.size())
    {
      if ((((ῗ)localObject2).xW) && (ᴷ(m))) {
        return ⅼ(m);
      }
      return null;
    }
    ῗ.if localif = (ῗ.if)((ῗ)localObject2).ym.get(j);
    Uri localUri = ป.ʻ(((ῗ)localObject2).xO, localif.url);
    if (localif.wH)
    {
      localObject1 = ป.ʻ(((ῗ)localObject2).xO, localif.yp);
      if (!((Uri)localObject1).equals(this.xY)) {
        return ˊ((Uri)localObject1, localif.yq);
      }
      if (!ผ.ʻ(localif.yq, this.ya)) {
        ˊ((Uri)localObject1, localif.yq, this.xZ);
      }
    }
    else
    {
      Ỵ();
    }
    Object localObject1 = new к(localUri, localif.yr, localif.ys, null);
    if (this.xW)
    {
      if (paramｕ == null) {
        paramLong1 = 0L;
      } else if (bool1) {
        paramLong1 = paramｕ.tN;
      } else {
        paramLong1 = paramｕ.tO;
      }
    }
    else {
      paramLong1 = localif.tN;
    }
    paramLong2 = (localif.yo * 1000000.0D);
    boolean bool2;
    if ((!((ῗ)localObject2).xW) && (j == ((ῗ)localObject2).ym.size() - 1)) {
      bool2 = true;
    } else {
      bool2 = false;
    }
    localObject2 = this.xL[this.xX];
    if ((paramｕ == null) || (localif.yn) || (!((ব)localObject2).equals(paramｕ.tD)) || (k != 0))
    {
      if (localUri.getLastPathSegment().endsWith(".aac")) {
        paramｕ = new ᘂ(paramLong1);
      } else {
        paramｕ = new Ỳ(paramLong1, this.xR);
      }
      paramｕ = new ἶ(0, (ব)localObject2, paramLong1, paramｕ, bool1);
    }
    else
    {
      paramｕ = paramｕ.zl;
    }
    return new ｕ(this.tF, (к)localObject1, 0, (ব)localObject2, paramLong1, paramLong1 + paramLong2, i, bool2, paramｕ, this.xZ, this.yb);
  }
  
  void ˊ(int paramInt, ῗ paramῗ)
  {
    this.xV[paramInt] = SystemClock.elapsedRealtime();
    this.xT[paramInt] = paramῗ;
    this.xW |= paramῗ.xW;
    this.re = paramῗ.re;
  }
  
  void ˊ(Uri paramUri, String paramString, byte[] paramArrayOfByte)
  {
    if (paramString.toLowerCase(Locale.getDefault()).startsWith("0x")) {
      localObject = paramString.substring(2);
    } else {
      localObject = paramString;
    }
    Object localObject = new BigInteger((String)localObject, 16).toByteArray();
    byte[] arrayOfByte = new byte[16];
    int i;
    if (localObject.length > 16) {
      i = localObject.length - 16;
    } else {
      i = 0;
    }
    System.arraycopy(localObject, i, arrayOfByte, arrayOfByte.length - localObject.length + i, localObject.length - i);
    this.xY = paramUri;
    this.xZ = paramArrayOfByte;
    this.ya = paramString;
    this.yb = arrayOfByte;
  }
  
  public void ˊ(र paramर)
  {
    if ((paramर instanceof Ỵ.ˊ))
    {
      paramर = (Ỵ.ˊ)paramर;
      this.xS = paramर.শ();
      ˊ(paramर.ye, paramर.ℓ());
      return;
    }
    if ((paramर instanceof Ỵ.if))
    {
      paramर = (Ỵ.if)paramर;
      this.xS = paramर.শ();
      ˊ(paramर.tE.uri, paramर.yc, paramर.ῗ());
    }
  }
  
  public boolean ˊ(र paramर, IOException paramIOException)
  {
    if ((paramर.ব() == 0L) && ((paramर instanceof Ỵ.ˊ)) && ((paramIOException instanceof չ.ˋ)))
    {
      int i = ((չ.ˋ)paramIOException).responseCode;
      if ((i == 404) || (i == 410))
      {
        paramर = (Ỵ.ˊ)paramर;
        this.xU[paramर.ye] = SystemClock.elapsedRealtime();
        if (!ἶ())
        {
          Log.w("HlsChunkSource", "Blacklisted playlist (" + i + "): " + paramर.tE.uri);
          return true;
        }
        Log.w("HlsChunkSource", "Final playlist not blacklisted (" + i + "): " + paramर.tE.uri);
        this.xU[paramर.ye] = 0L;
        return false;
      }
    }
    return false;
  }
  
  public long ﻤ()
  {
    if (this.xW) {
      return -1L;
    }
    return this.re;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á»´
 * JD-Core Version:    0.7.0.1
 */