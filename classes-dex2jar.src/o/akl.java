package o;

import android.content.res.Resources;
import android.graphics.drawable.shapes.OvalShape;
import android.widget.ImageView;

public class akl
{
  public static final int[] bIq = { 2131296342, 2131296343, 2131296344, 2131296345, 2131296346, 2131296347, 2131296348, 2131296349, 2131296337, 2131296338, 2131296339, 2131296340, 2131296341 };
  private static akl bIs;
  private int bIr;
  private int[] ᖟ = new int[bIq.length];
  
  private akl(Resources paramResources)
  {
    int i = 0;
    while (i < bIq.length)
    {
      this.ᖟ[i] = paramResources.getColor(bIq[i]);
      i += 1;
    }
    this.bIr = paramResources.getColor(2131296336);
  }
  
  public static int ˊ(Resources paramResources, int paramInt)
  {
    if (bIs == null) {
      bIs = new akl(paramResources);
    }
    if (paramInt == 0) {
      return bIs.bIr;
    }
    paramInt = Math.max(paramInt - 1, 0);
    return bIs.ᖟ[(paramInt % bIs.ᖟ.length)];
  }
  
  public static ams ˊ(Resources paramResources, String paramString, int paramInt)
  {
    int i = paramResources.getDimensionPixelSize(2131361854);
    return new ams(paramResources, new OvalShape(), i, i, paramInt, 2131296386, paramString.substring(0, 1).toUpperCase());
  }
  
  public static void ˊ(ImageView paramImageView, String paramString, int paramInt)
  {
    paramInt = Ꭲ(paramInt);
    paramImageView.setImageDrawable(ˊ(paramImageView.getResources(), paramString, paramInt));
  }
  
  public static int ˋ(Resources paramResources, int paramInt)
  {
    return ˊ(paramResources, paramInt) & 0xA0FFFFFF;
  }
  
  public static int Ꭲ(int paramInt)
  {
    if (paramInt == 0) {
      return 2131296336;
    }
    paramInt = Math.max(paramInt - 1, 0);
    return bIq[(paramInt % bIq.length)];
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.akl
 * JD-Core Version:    0.7.0.1
 */