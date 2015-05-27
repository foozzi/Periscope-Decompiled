package o;

import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.Resources.Theme;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.WeakHashMap;

class ך
  extends ᵏ
  implements View.OnClickListener
{
  private final WeakHashMap<String, Drawable.ConstantState> cA;
  private final ɔ cN;
  private final SearchManager cO = (SearchManager)this.mContext.getSystemService("search");
  private final Context cP;
  private final int cQ;
  private int cR = 1;
  private ColorStateList cS;
  private int cT = -1;
  private int cU = -1;
  private int cV = -1;
  private int cW = -1;
  private int cX = -1;
  private int cY = -1;
  private final SearchableInfo cu;
  private boolean mClosed = false;
  
  public ך(Context paramContext, ɔ paramɔ, SearchableInfo paramSearchableInfo, WeakHashMap<String, Drawable.ConstantState> paramWeakHashMap)
  {
    super(paramContext, paramɔ.ﬧ(), null, true);
    this.cN = paramɔ;
    this.cu = paramSearchableInfo;
    this.cQ = paramɔ.דּ();
    this.cP = paramContext;
    this.cA = paramWeakHashMap;
  }
  
  private Drawable getActivityIcon(ComponentName paramComponentName)
  {
    Object localObject = this.mContext.getPackageManager();
    ActivityInfo localActivityInfo;
    try
    {
      localActivityInfo = ((PackageManager)localObject).getActivityInfo(paramComponentName, 128);
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.w("SuggestionsAdapter", paramComponentName.toString());
      return null;
    }
    int i = localActivityInfo.getIconResource();
    if (i == 0) {
      return null;
    }
    localObject = ((PackageManager)localObject).getDrawable(paramComponentName.getPackageName(), i, localActivityInfo.applicationInfo);
    if (localObject == null)
    {
      Log.w("SuggestionsAdapter", "Invalid icon resource " + i + " for " + paramComponentName.flattenToShortString());
      return null;
    }
    return localObject;
  }
  
  private CharSequence ˈ(CharSequence paramCharSequence)
  {
    if (this.cS == null)
    {
      localObject = new TypedValue();
      this.mContext.getTheme().resolveAttribute(ڊ.if.textColorSearchUrl, (TypedValue)localObject, true);
      this.cS = this.mContext.getResources().getColorStateList(((TypedValue)localObject).resourceId);
    }
    Object localObject = new SpannableString(paramCharSequence);
    ((SpannableString)localObject).setSpan(new TextAppearanceSpan(null, 0, 0, this.cS, null), 0, paramCharSequence.length(), 33);
    return localObject;
  }
  
  private Drawable ˊ(ComponentName paramComponentName)
  {
    String str = paramComponentName.flattenToShortString();
    if (this.cA.containsKey(str))
    {
      paramComponentName = (Drawable.ConstantState)this.cA.get(str);
      if (paramComponentName == null) {
        return null;
      }
      return paramComponentName.newDrawable(this.cP.getResources());
    }
    Drawable localDrawable = getActivityIcon(paramComponentName);
    if (localDrawable == null) {
      paramComponentName = null;
    } else {
      paramComponentName = localDrawable.getConstantState();
    }
    this.cA.put(str, paramComponentName);
    return localDrawable;
  }
  
  private static String ˊ(Cursor paramCursor, int paramInt)
  {
    if (paramInt == -1) {
      return null;
    }
    try
    {
      paramCursor = paramCursor.getString(paramInt);
      return paramCursor;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", paramCursor);
    }
    return null;
  }
  
  public static String ˊ(Cursor paramCursor, String paramString)
  {
    return ˊ(paramCursor, paramCursor.getColumnIndex(paramString));
  }
  
  private void ˊ(Cursor paramCursor)
  {
    if (paramCursor != null) {
      paramCursor = paramCursor.getExtras();
    } else {
      paramCursor = null;
    }
    if ((paramCursor != null) && (paramCursor.getBoolean("in_progress"))) {}
  }
  
  private void ˊ(ImageView paramImageView, Drawable paramDrawable, int paramInt)
  {
    paramImageView.setImageDrawable(paramDrawable);
    if (paramDrawable == null)
    {
      paramImageView.setVisibility(paramInt);
      return;
    }
    paramImageView.setVisibility(0);
    paramDrawable.setVisible(false, false);
    paramDrawable.setVisible(true, false);
  }
  
  private void ˊ(TextView paramTextView, CharSequence paramCharSequence)
  {
    paramTextView.setText(paramCharSequence);
    if (TextUtils.isEmpty(paramCharSequence))
    {
      paramTextView.setVisibility(8);
      return;
    }
    paramTextView.setVisibility(0);
  }
  
  private void ˊ(String paramString, Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      this.cA.put(paramString, paramDrawable.getConstantState());
    }
  }
  
  private Drawable ˋ(Cursor paramCursor)
  {
    if (this.cW == -1) {
      return null;
    }
    Drawable localDrawable = ˏ(paramCursor.getString(this.cW));
    if (localDrawable != null) {
      return localDrawable;
    }
    return ˏ(paramCursor);
  }
  
  /* Error */
  private Drawable ˋ(Uri paramUri)
  {
    // Byte code:
    //   0: ldc_w 319
    //   3: aload_1
    //   4: invokevirtual 324	android/net/Uri:getScheme	()Ljava/lang/String;
    //   7: invokevirtual 329	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   10: istore_2
    //   11: iload_2
    //   12: ifeq +40 -> 52
    //   15: aload_0
    //   16: aload_1
    //   17: invokevirtual 332	o/ך:ˎ	(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    //   20: astore_3
    //   21: aload_3
    //   22: areturn
    //   23: astore_3
    //   24: new 313	java/io/FileNotFoundException
    //   27: dup
    //   28: new 137	java/lang/StringBuilder
    //   31: dup
    //   32: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   35: ldc_w 334
    //   38: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   41: aload_1
    //   42: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   45: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   48: invokespecial 340	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   51: athrow
    //   52: aload_0
    //   53: getfield 86	o/ך:cP	Landroid/content/Context;
    //   56: invokevirtual 344	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   59: aload_1
    //   60: invokevirtual 350	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   63: astore_3
    //   64: aload_3
    //   65: ifnonnull +31 -> 96
    //   68: new 313	java/io/FileNotFoundException
    //   71: dup
    //   72: new 137	java/lang/StringBuilder
    //   75: dup
    //   76: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   79: ldc_w 352
    //   82: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: aload_1
    //   86: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   89: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   92: invokespecial 340	java/io/FileNotFoundException:<init>	(Ljava/lang/String;)V
    //   95: athrow
    //   96: aload_3
    //   97: aconst_null
    //   98: invokestatic 356	android/graphics/drawable/Drawable:createFromStream	(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    //   101: astore 4
    //   103: aload_3
    //   104: invokevirtual 361	java/io/InputStream:close	()V
    //   107: aload 4
    //   109: areturn
    //   110: astore_3
    //   111: ldc 107
    //   113: new 137	java/lang/StringBuilder
    //   116: dup
    //   117: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   120: ldc_w 363
    //   123: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_1
    //   127: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: aload_3
    //   134: invokestatic 253	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   137: pop
    //   138: aload 4
    //   140: areturn
    //   141: astore 4
    //   143: aload_3
    //   144: invokevirtual 361	java/io/InputStream:close	()V
    //   147: goto +31 -> 178
    //   150: astore_3
    //   151: ldc 107
    //   153: new 137	java/lang/StringBuilder
    //   156: dup
    //   157: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   160: ldc_w 363
    //   163: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: aload_1
    //   167: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: aload_3
    //   174: invokestatic 253	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   177: pop
    //   178: aload 4
    //   180: athrow
    //   181: astore_3
    //   182: ldc 107
    //   184: new 137	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   191: ldc_w 365
    //   194: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload_1
    //   198: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   201: ldc_w 367
    //   204: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload_3
    //   208: invokevirtual 370	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   211: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   214: invokevirtual 155	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   217: invokestatic 117	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   220: pop
    //   221: aconst_null
    //   222: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	223	0	this	ך
    //   0	223	1	paramUri	Uri
    //   10	2	2	bool	boolean
    //   20	2	3	localDrawable1	Drawable
    //   23	1	3	localNotFoundException	Resources.NotFoundException
    //   63	41	3	localInputStream	java.io.InputStream
    //   110	34	3	localIOException1	java.io.IOException
    //   150	24	3	localIOException2	java.io.IOException
    //   181	27	3	localFileNotFoundException	FileNotFoundException
    //   101	38	4	localDrawable2	Drawable
    //   141	38	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   15	21	23	android/content/res/Resources$NotFoundException
    //   103	107	110	java/io/IOException
    //   96	103	141	finally
    //   143	147	150	java/io/IOException
    //   0	11	181	java/io/FileNotFoundException
    //   15	21	181	java/io/FileNotFoundException
    //   24	52	181	java/io/FileNotFoundException
    //   52	64	181	java/io/FileNotFoundException
    //   68	96	181	java/io/FileNotFoundException
    //   103	107	181	java/io/FileNotFoundException
    //   111	138	181	java/io/FileNotFoundException
    //   143	147	181	java/io/FileNotFoundException
    //   151	178	181	java/io/FileNotFoundException
    //   178	181	181	java/io/FileNotFoundException
  }
  
  private Drawable ˎ(Cursor paramCursor)
  {
    if (this.cX == -1) {
      return null;
    }
    return ˏ(paramCursor.getString(this.cX));
  }
  
  private Drawable ˏ(Cursor paramCursor)
  {
    paramCursor = ˊ(this.cu.getSearchActivity());
    if (paramCursor != null) {
      return paramCursor;
    }
    return this.mContext.getPackageManager().getDefaultActivityIcon();
  }
  
  private Drawable ˏ(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0) || ("0".equals(paramString))) {
      return null;
    }
    try
    {
      int i = Integer.parseInt(paramString);
      String str = "android.resource://" + this.cP.getPackageName() + "/" + i;
      Drawable localDrawable2 = ᐝ(str);
      if (localDrawable2 != null) {
        return localDrawable2;
      }
      localDrawable2 = ᵣ.ˊ(this.cP, i);
      ˊ(str, localDrawable2);
      return localDrawable2;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      Drawable localDrawable1 = ᐝ(paramString);
      if (localDrawable1 != null) {
        return localDrawable1;
      }
      localDrawable1 = ˋ(Uri.parse(paramString));
      ˊ(paramString, localDrawable1);
      return localDrawable1;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      Log.w("SuggestionsAdapter", "Icon resource not found: " + paramString);
    }
    return null;
  }
  
  private Drawable ᐝ(String paramString)
  {
    paramString = (Drawable.ConstantState)this.cA.get(paramString);
    if (paramString == null) {
      return null;
    }
    return paramString.newDrawable();
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    paramContext = (ך.if)paramView.getTag();
    int i = 0;
    if (this.cY != -1) {
      i = paramCursor.getInt(this.cY);
    }
    if (paramContext.cZ != null)
    {
      paramView = ˊ(paramCursor, this.cT);
      ˊ(paramContext.cZ, paramView);
    }
    if (paramContext.da != null)
    {
      paramView = ˊ(paramCursor, this.cV);
      if (paramView != null) {
        paramView = ˈ(paramView);
      } else {
        paramView = ˊ(paramCursor, this.cU);
      }
      if (TextUtils.isEmpty(paramView))
      {
        if (paramContext.cZ != null)
        {
          paramContext.cZ.setSingleLine(false);
          paramContext.cZ.setMaxLines(2);
        }
      }
      else if (paramContext.cZ != null)
      {
        paramContext.cZ.setSingleLine(true);
        paramContext.cZ.setMaxLines(1);
      }
      ˊ(paramContext.da, paramView);
    }
    if (paramContext.db != null) {
      ˊ(paramContext.db, ˋ(paramCursor), 4);
    }
    if (paramContext.dc != null) {
      ˊ(paramContext.dc, ˎ(paramCursor), 8);
    }
    if ((this.cR == 2) || ((this.cR == 1) && ((i & 0x1) != 0)))
    {
      paramContext.dd.setVisibility(0);
      paramContext.dd.setTag(paramContext.cZ.getText());
      paramContext.dd.setOnClickListener(this);
      return;
    }
    paramContext.dd.setVisibility(8);
  }
  
  public void changeCursor(Cursor paramCursor)
  {
    if (this.mClosed)
    {
      Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
      if (paramCursor != null) {
        paramCursor.close();
      }
      return;
    }
    try
    {
      super.changeCursor(paramCursor);
      if (paramCursor != null)
      {
        this.cT = paramCursor.getColumnIndex("suggest_text_1");
        this.cU = paramCursor.getColumnIndex("suggest_text_2");
        this.cV = paramCursor.getColumnIndex("suggest_text_2_url");
        this.cW = paramCursor.getColumnIndex("suggest_icon_1");
        this.cX = paramCursor.getColumnIndex("suggest_icon_2");
        this.cY = paramCursor.getColumnIndex("suggest_flags");
      }
      return;
    }
    catch (Exception paramCursor)
    {
      Log.e("SuggestionsAdapter", "error changing cursor and caching columns", paramCursor);
    }
  }
  
  public CharSequence convertToString(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    String str = ˊ(paramCursor, "suggest_intent_query");
    if (str != null) {
      return str;
    }
    if (this.cu.shouldRewriteQueryFromData())
    {
      str = ˊ(paramCursor, "suggest_intent_data");
      if (str != null) {
        return str;
      }
    }
    if (this.cu.shouldRewriteQueryFromText())
    {
      paramCursor = ˊ(paramCursor, "suggest_text_1");
      if (paramCursor != null) {
        return paramCursor;
      }
    }
    return null;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    try
    {
      paramView = super.getView(paramInt, paramView, paramViewGroup);
      return paramView;
    }
    catch (RuntimeException paramView)
    {
      Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", paramView);
      paramViewGroup = newView(this.mContext, this.Ｌ, paramViewGroup);
      if (paramViewGroup != null) {
        ((ך.if)paramViewGroup.getTag()).cZ.setText(paramView.toString());
      }
    }
    return paramViewGroup;
  }
  
  public boolean hasStableIds()
  {
    return false;
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    paramContext = super.newView(paramContext, paramCursor, paramViewGroup);
    paramContext.setTag(new ך.if(paramContext));
    ((ImageView)paramContext.findViewById(ڊ.ˏ.edit_query)).setImageResource(this.cQ);
    return paramContext;
  }
  
  public void notifyDataSetChanged()
  {
    super.notifyDataSetChanged();
    ˊ(getCursor());
  }
  
  public void notifyDataSetInvalidated()
  {
    super.notifyDataSetInvalidated();
    ˊ(getCursor());
  }
  
  public void onClick(View paramView)
  {
    paramView = paramView.getTag();
    if ((paramView instanceof CharSequence)) {
      this.cN.ͺ((CharSequence)paramView);
    }
  }
  
  public Cursor runQueryOnBackgroundThread(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null) {
      paramCharSequence = "";
    } else {
      paramCharSequence = paramCharSequence.toString();
    }
    if ((this.cN.getVisibility() != 0) || (this.cN.getWindowVisibility() != 0)) {
      return null;
    }
    try
    {
      paramCharSequence = ˊ(this.cu, paramCharSequence, 50);
      if (paramCharSequence != null)
      {
        paramCharSequence.getCount();
        return paramCharSequence;
      }
    }
    catch (RuntimeException paramCharSequence)
    {
      Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", paramCharSequence);
    }
    return null;
  }
  
  Cursor ˊ(SearchableInfo paramSearchableInfo, String paramString, int paramInt)
  {
    if (paramSearchableInfo == null) {
      return null;
    }
    Object localObject = paramSearchableInfo.getSuggestAuthority();
    if (localObject == null) {
      return null;
    }
    localObject = new Uri.Builder().scheme("content").authority((String)localObject).query("").fragment("");
    String str = paramSearchableInfo.getSuggestPath();
    if (str != null) {
      ((Uri.Builder)localObject).appendEncodedPath(str);
    }
    ((Uri.Builder)localObject).appendPath("search_suggest_query");
    str = paramSearchableInfo.getSuggestSelection();
    paramSearchableInfo = null;
    if (str != null)
    {
      paramSearchableInfo = new String[1];
      paramSearchableInfo[0] = paramString;
    }
    else
    {
      ((Uri.Builder)localObject).appendPath(paramString);
    }
    if (paramInt > 0) {
      ((Uri.Builder)localObject).appendQueryParameter("limit", String.valueOf(paramInt));
    }
    paramString = ((Uri.Builder)localObject).build();
    return this.mContext.getContentResolver().query(paramString, null, str, paramSearchableInfo, null);
  }
  
  Drawable ˎ(Uri paramUri)
  {
    String str = paramUri.getAuthority();
    if (TextUtils.isEmpty(str)) {
      throw new FileNotFoundException("No authority: " + paramUri);
    }
    Resources localResources;
    try
    {
      localResources = this.mContext.getPackageManager().getResourcesForApplication(str);
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      throw new FileNotFoundException("No package found for authority: " + paramUri);
    }
    List localList = paramUri.getPathSegments();
    if (localList == null) {
      throw new FileNotFoundException("No path: " + paramUri);
    }
    int i = localList.size();
    if (i == 1) {
      try
      {
        i = Integer.parseInt((String)localList.get(0));
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new FileNotFoundException("Single path segment is not a resource ID: " + paramUri);
      }
    } else if (i == 2) {
      i = localResources.getIdentifier((String)localList.get(1), (String)localList.get(0), localNumberFormatException);
    } else {
      throw new FileNotFoundException("More than two path segments: " + paramUri);
    }
    if (i == 0) {
      throw new FileNotFoundException("No resource found for: " + paramUri);
    }
    return localResources.getDrawable(i);
  }
  
  public void ᵧ(int paramInt)
  {
    this.cR = paramInt;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.×
 * JD-Core Version:    0.7.0.1
 */