package o;

abstract class ᒶ
{
  public static final int vA = ผ.ᑊ("avcC");
  public static final int vB = ผ.ᑊ("moof");
  public static final int vC = ผ.ᑊ("traf");
  public static final int vD = ผ.ᑊ("mvex");
  public static final int vE = ผ.ᑊ("tkhd");
  public static final int vF = ผ.ᑊ("mdhd");
  public static final int vG = ผ.ᑊ("hdlr");
  public static final int vH = ผ.ᑊ("stsd");
  public static final int vI = ผ.ᑊ("pssh");
  public static final int vJ = ผ.ᑊ("sinf");
  public static final int vK = ผ.ᑊ("schm");
  public static final int vL = ผ.ᑊ("schi");
  public static final int vM = ผ.ᑊ("tenc");
  public static final int vN = ผ.ᑊ("encv");
  public static final int vO = ผ.ᑊ("enca");
  public static final int vP = ผ.ᑊ("frma");
  public static final int vQ = ผ.ᑊ("saiz");
  public static final int vR = ผ.ᑊ("uuid");
  public static final int vS = ผ.ᑊ("senc");
  public static final int vT = ผ.ᑊ("pasp");
  public static final int vU = ผ.ᑊ("TTML");
  public static final int vV = ผ.ᑊ("vmhd");
  public static final int vW = ผ.ᑊ("smhd");
  public static final int vX = ผ.ᑊ("mp4v");
  public static final int vY = ผ.ᑊ("stts");
  public static final int vZ = ผ.ᑊ("stss");
  public static final int vf = ผ.ᑊ("ftyp");
  public static final int vg = ผ.ᑊ("avc1");
  public static final int vh = ผ.ᑊ("avc3");
  public static final int vi = ผ.ᑊ("esds");
  public static final int vj = ผ.ᑊ("mdat");
  public static final int vk = ผ.ᑊ("mp4a");
  public static final int vl = ผ.ᑊ("ac-3");
  public static final int vm = ผ.ᑊ("dac3");
  public static final int vn = ผ.ᑊ("ec-3");
  public static final int vo = ผ.ᑊ("dec3");
  public static final int vp = ผ.ᑊ("tfdt");
  public static final int vq = ผ.ᑊ("tfhd");
  public static final int vr = ผ.ᑊ("trex");
  public static final int vs = ผ.ᑊ("trun");
  public static final int vt = ผ.ᑊ("sidx");
  public static final int vu = ผ.ᑊ("moov");
  public static final int vv = ผ.ᑊ("mvhd");
  public static final int vw = ผ.ᑊ("trak");
  public static final int vx = ผ.ᑊ("mdia");
  public static final int vy = ผ.ᑊ("minf");
  public static final int vz = ผ.ᑊ("stbl");
  public static final int wa = ผ.ᑊ("ctts");
  public static final int wb = ผ.ᑊ("stsc");
  public static final int wc = ผ.ᑊ("stsz");
  public static final int wd = ผ.ᑊ("stco");
  public static final int we = ผ.ᑊ("co64");
  public final int type;
  
  ᒶ(int paramInt)
  {
    this.type = paramInt;
  }
  
  public static int د(int paramInt)
  {
    return paramInt >> 24 & 0xFF;
  }
  
  public static String ہ(int paramInt)
  {
    return "" + (char)(paramInt >> 24) + (char)(paramInt >> 16 & 0xFF) + (char)(paramInt >> 8 & 0xFF) + (char)(paramInt & 0xFF);
  }
  
  public String toString()
  {
    return ہ(this.type);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¶
 * JD-Core Version:    0.7.0.1
 */