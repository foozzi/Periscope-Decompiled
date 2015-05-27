package o;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;

public class ℐ
{
  public <Z> ﭩ<Z> ˋ(ImageView paramImageView, Class<Z> paramClass)
  {
    if (לּ.class.isAssignableFrom(paramClass)) {
      return new ἵ(paramImageView);
    }
    if (Bitmap.class.equals(paramClass)) {
      return new ἳ(paramImageView);
    }
    if (Drawable.class.isAssignableFrom(paramClass)) {
      return new ἴ(paramImageView);
    }
    throw new IllegalArgumentException("Unhandled class: " + paramClass + ", try .as*(Class).transcode(ResourceTranscoder)");
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.â
 * JD-Core Version:    0.7.0.1
 */