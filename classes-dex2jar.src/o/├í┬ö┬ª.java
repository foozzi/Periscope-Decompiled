package o;

class ᔦ
{
  private static final ť oD = new ť("", "", 0L);
  private static final ᔦ.ʻ[] oE = new ᔦ.ʻ[0];
  private static final ᔦ.ͺ[] oF = new ᔦ.ͺ[0];
  private static final ᔦ.ᐝ[] oG = new ᔦ.ᐝ[0];
  private static final ᔦ.ˊ[] oH = new ᔦ.ˊ[0];
  private static final ᔦ.ˋ[] oI = new ᔦ.ˋ[0];
  
  private static ᔦ.ʼ ˊ(Ÿ.if[] paramArrayOfif)
  {
    ᔦ.ᐝ[] arrayOfᐝ;
    if (paramArrayOfif != null) {
      arrayOfᐝ = new ᔦ.ᐝ[paramArrayOfif.length];
    } else {
      arrayOfᐝ = oG;
    }
    int i = 0;
    while (i < arrayOfᐝ.length)
    {
      arrayOfᐝ[i] = new ᔦ.ᐝ(paramArrayOfif[i]);
      i += 1;
    }
    return new ᔦ.ʼ(arrayOfᐝ);
  }
  
  private static ᔦ.ʼ ˊ(Ÿ[] paramArrayOfŸ)
  {
    ᔦ.ͺ[] arrayOfͺ;
    if (paramArrayOfŸ != null) {
      arrayOfͺ = new ᔦ.ͺ[paramArrayOfŸ.length];
    } else {
      arrayOfͺ = oF;
    }
    int i = 0;
    while (i < arrayOfͺ.length)
    {
      Ÿ localŸ = paramArrayOfŸ[i];
      arrayOfͺ[i] = new ᔦ.ͺ(localŸ, ˊ(localŸ.qz));
      i += 1;
    }
    return new ᔦ.ʼ(arrayOfͺ);
  }
  
  private static ᔦ.ʼ ˊ(ﾐ[] paramArrayOfﾐ)
  {
    ᔦ.ˊ[] arrayOfˊ;
    if (paramArrayOfﾐ != null) {
      arrayOfˊ = new ᔦ.ˊ[paramArrayOfﾐ.length];
    } else {
      arrayOfˊ = oH;
    }
    int i = 0;
    while (i < arrayOfˊ.length)
    {
      arrayOfˊ[i] = new ᔦ.ˊ(paramArrayOfﾐ[i]);
      i += 1;
    }
    return new ᔦ.ʼ(arrayOfˊ);
  }
  
  private static ᔦ.ʼ ˊ(ﾘ[] paramArrayOfﾘ)
  {
    ᔦ.ˋ[] arrayOfˋ;
    if (paramArrayOfﾘ != null) {
      arrayOfˋ = new ᔦ.ˋ[paramArrayOfﾘ.length];
    } else {
      arrayOfˋ = oI;
    }
    int i = 0;
    while (i < arrayOfˋ.length)
    {
      arrayOfˋ[i] = new ᔦ.ˋ(paramArrayOfﾘ[i]);
      i += 1;
    }
    return new ᔦ.ʼ(arrayOfˋ);
  }
  
  public static void ˊ(ﾚ paramﾚ, ɤ paramɤ)
  {
    ˋ(paramﾚ).ˋ(paramɤ);
  }
  
  private static ᔦ.ˏ ˋ(ﾚ paramﾚ)
  {
    if (paramﾚ.qt != null) {
      localObject = paramﾚ.qt;
    } else {
      localObject = oD;
    }
    Object localObject = new ᔦ.if(new ᔦ.aux(new ᔦ.ʽ((ť)localObject), ˊ(paramﾚ.qu), ˊ(paramﾚ.qv)), ˊ(paramﾚ.qw));
    ᔦ.ˎ localˎ = new ᔦ.ˎ();
    return new ᔦ.ˏ(paramﾚ.timestamp, "ndk-crash", (ᔦ.if)localObject, localˎ);
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¦
 * JD-Core Version:    0.7.0.1
 */