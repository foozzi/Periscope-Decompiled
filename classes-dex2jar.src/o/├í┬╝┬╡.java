package o;

import android.widget.ImageView;

public class ἵ
  extends ῖ<לּ>
{
  private int kL;
  private לּ mM;
  
  public ἵ(ImageView paramImageView)
  {
    this(paramImageView, -1);
  }
  
  public ἵ(ImageView paramImageView, int paramInt)
  {
    super(paramImageView);
    this.kL = paramInt;
  }
  
  public void onStart()
  {
    if (this.mM != null) {
      this.mM.start();
    }
  }
  
  public void onStop()
  {
    if (this.mM != null) {
      this.mM.stop();
    }
  }
  
  protected void ˊ(לּ paramלּ)
  {
    ((ImageView)this.view).setImageDrawable(paramלּ);
  }
  
  public void ˊ(לּ paramלּ, ḟ<? super לּ> paramḟ)
  {
    Object localObject = paramלּ;
    if (!paramלּ.ﾃ())
    {
      float f1 = ((ImageView)this.view).getWidth() / ((ImageView)this.view).getHeight();
      float f2 = paramלּ.getIntrinsicWidth() / paramלּ.getIntrinsicHeight();
      localObject = paramלּ;
      if (Math.abs(f1 - 1.0F) <= 0.05F)
      {
        localObject = paramלּ;
        if (Math.abs(f2 - 1.0F) <= 0.05F) {
          localObject = new בּ(paramלּ, ((ImageView)this.view).getWidth());
        }
      }
    }
    super.ˊ(localObject, paramḟ);
    this.mM = ((לּ)localObject);
    ((לּ)localObject).ᑋ(this.kL);
    ((לּ)localObject).start();
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.á¼µ
 * JD-Core Version:    0.7.0.1
 */