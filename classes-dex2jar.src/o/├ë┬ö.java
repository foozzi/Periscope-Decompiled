package o;

import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ImageSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.View.OnKeyListener;
import android.view.ViewTreeObserver;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ImageView;
import android.widget.TextView.OnEditorActionListener;
import java.util.WeakHashMap;

public class ɔ
  extends ί
  implements ᓱ
{
  private static final boolean bM;
  static final ɔ.if cw = new ɔ.if();
  private final ɔ.ˏ bN;
  private final View bO;
  private final View bP;
  private final View bQ;
  private final ImageView bR;
  private final ImageView bS;
  private final ImageView bT;
  private final ImageView bU;
  private final View bV;
  private final ImageView bW;
  private final Drawable bX;
  private final int bY;
  private final int bZ;
  private final WeakHashMap<String, Drawable.ConstantState> cA = new WeakHashMap();
  private final View.OnClickListener cB = new т(this);
  View.OnKeyListener cC = new х(this);
  private final TextView.OnEditorActionListener cD = new ґ(this);
  private final AdapterView.OnItemClickListener cE = new ɺ(this);
  private final AdapterView.OnItemSelectedListener cF = new ɼ(this);
  private TextWatcher cG = new ʱ(this);
  private final Intent ca;
  private final Intent cb;
  private ɔ.ˋ cc;
  private ɔ.ˊ cd;
  private View.OnFocusChangeListener ce;
  private ɔ.ˎ cf;
  private View.OnClickListener cg;
  private boolean ch;
  private boolean ci;
  private د cj;
  private boolean ck;
  private CharSequence cl;
  private boolean cm;
  private boolean cn;
  private int co;
  private boolean cp;
  private CharSequence cq;
  private CharSequence cr;
  private boolean cs;
  private int ct;
  private SearchableInfo cu;
  private Bundle cv;
  private Runnable cx = new ɟ(this);
  private final Runnable cy = new ˠ(this);
  private Runnable cz = new ϲ(this);
  private final ฯ ᒴ;
  
  static
  {
    boolean bool;
    if (Build.VERSION.SDK_INT >= 8) {
      bool = true;
    } else {
      bool = false;
    }
    bM = bool;
  }
  
  public ɔ(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ɔ(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, ڊ.if.searchViewStyle);
  }
  
  public ɔ(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = ๅ.ˊ(paramContext, paramAttributeSet, ڊ.ʽ.SearchView, paramInt, 0);
    this.ᒴ = paramAttributeSet.ゝ();
    LayoutInflater.from(paramContext).inflate(paramAttributeSet.getResourceId(ڊ.ʽ.SearchView_layout, ڊ.ᐝ.abc_search_view), this, true);
    this.bN = ((ɔ.ˏ)findViewById(ڊ.ˏ.search_src_text));
    this.bN.ˍ(this);
    this.bO = findViewById(ڊ.ˏ.search_edit_frame);
    this.bP = findViewById(ڊ.ˏ.search_plate);
    this.bQ = findViewById(ڊ.ˏ.submit_area);
    this.bR = ((ImageView)findViewById(ڊ.ˏ.search_button));
    this.bS = ((ImageView)findViewById(ڊ.ˏ.search_go_btn));
    this.bT = ((ImageView)findViewById(ڊ.ˏ.search_close_btn));
    this.bU = ((ImageView)findViewById(ڊ.ˏ.search_voice_btn));
    this.bW = ((ImageView)findViewById(ڊ.ˏ.search_mag_icon));
    this.bP.setBackgroundDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_queryBackground));
    this.bQ.setBackgroundDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_submitBackground));
    this.bR.setImageDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_searchIcon));
    this.bS.setImageDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_goIcon));
    this.bT.setImageDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_closeIcon));
    this.bU.setImageDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_voiceIcon));
    this.bW.setImageDrawable(paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_searchIcon));
    this.bX = paramAttributeSet.getDrawable(ڊ.ʽ.SearchView_searchHintIcon);
    this.bY = paramAttributeSet.getResourceId(ڊ.ʽ.SearchView_suggestionRowLayout, ڊ.ᐝ.abc_search_dropdown_item_icons_2line);
    this.bZ = paramAttributeSet.getResourceId(ڊ.ʽ.SearchView_commitIcon, 0);
    this.bR.setOnClickListener(this.cB);
    this.bT.setOnClickListener(this.cB);
    this.bS.setOnClickListener(this.cB);
    this.bU.setOnClickListener(this.cB);
    this.bN.setOnClickListener(this.cB);
    this.bN.addTextChangedListener(this.cG);
    this.bN.setOnEditorActionListener(this.cD);
    this.bN.setOnItemClickListener(this.cE);
    this.bN.setOnItemSelectedListener(this.cF);
    this.bN.setOnKeyListener(this.cC);
    this.bN.setOnFocusChangeListener(new ϳ(this));
    setIconifiedByDefault(paramAttributeSet.getBoolean(ڊ.ʽ.SearchView_iconifiedByDefault, true));
    paramInt = paramAttributeSet.getDimensionPixelSize(ڊ.ʽ.SearchView_android_maxWidth, -1);
    if (paramInt != -1) {
      setMaxWidth(paramInt);
    }
    paramContext = paramAttributeSet.getText(ڊ.ʽ.SearchView_queryHint);
    if (!TextUtils.isEmpty(paramContext)) {
      setQueryHint(paramContext);
    }
    paramInt = paramAttributeSet.getInt(ڊ.ʽ.SearchView_android_imeOptions, -1);
    if (paramInt != -1) {
      setImeOptions(paramInt);
    }
    paramInt = paramAttributeSet.getInt(ڊ.ʽ.SearchView_android_inputType, -1);
    if (paramInt != -1) {
      setInputType(paramInt);
    }
    setFocusable(paramAttributeSet.getBoolean(ڊ.ʽ.SearchView_android_focusable, true));
    paramAttributeSet.recycle();
    this.ca = new Intent("android.speech.action.WEB_SEARCH");
    this.ca.addFlags(268435456);
    this.ca.putExtra("android.speech.extra.LANGUAGE_MODEL", "web_search");
    this.cb = new Intent("android.speech.action.RECOGNIZE_SPEECH");
    this.cb.addFlags(268435456);
    this.bV = findViewById(this.bN.getDropDownAnchor());
    if (this.bV != null) {
      if (Build.VERSION.SDK_INT >= 11) {
        ⅽ();
      } else {
        ײַ();
      }
    }
    ﹺ(this.ch);
    ｊ();
  }
  
  private void Ī()
  {
    Editable localEditable = this.bN.getText();
    if ((localEditable != null) && (TextUtils.getTrimmedLength(localEditable) > 0) && ((this.cc == null) || (!this.cc.onQueryTextSubmit(localEditable.toString()))))
    {
      if (this.cu != null) {
        ˊ(0, null, localEditable.toString());
      }
      ʳ(false);
      Ĭ();
    }
  }
  
  private void Ĭ()
  {
    this.bN.dismissDropDown();
  }
  
  private void Į()
  {
    if (TextUtils.isEmpty(this.bN.getText()))
    {
      if ((this.ch) && ((this.cd == null) || (!this.cd.onClose())))
      {
        clearFocus();
        ﹺ(true);
      }
    }
    else
    {
      this.bN.setText("");
      this.bN.requestFocus();
      ʳ(true);
    }
  }
  
  private void į()
  {
    ﹺ(false);
    this.bN.requestFocus();
    ʳ(true);
    if (this.cg != null) {
      this.cg.onClick(this);
    }
  }
  
  @TargetApi(8)
  private void ŕ()
  {
    if (this.cu == null) {
      return;
    }
    Object localObject = this.cu;
    try
    {
      if (((SearchableInfo)localObject).getVoiceSearchLaunchWebSearch())
      {
        localObject = ˊ(this.ca, (SearchableInfo)localObject);
        getContext().startActivity((Intent)localObject);
      }
      else if (((SearchableInfo)localObject).getVoiceSearchLaunchRecognizer())
      {
        localObject = ˋ(this.cb, (SearchableInfo)localObject);
        getContext().startActivity((Intent)localObject);
      }
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Log.w("SearchView", "Could not find voice search activity");
    }
  }
  
  private void ȓ()
  {
    if (this.bV.getWidth() > 1)
    {
      Resources localResources = getContext().getResources();
      int k = this.bP.getPaddingLeft();
      Rect localRect = new Rect();
      boolean bool = ᓯ.ᐩ(this);
      int i;
      if (this.ch) {
        i = localResources.getDimensionPixelSize(ڊ.ˋ.abc_dropdownitem_icon_width) + localResources.getDimensionPixelSize(ڊ.ˋ.abc_dropdownitem_text_padding_left);
      } else {
        i = 0;
      }
      this.bN.getDropDownBackground().getPadding(localRect);
      if (bool) {
        j = -localRect.left;
      } else {
        j = k - (localRect.left + i);
      }
      this.bN.setDropDownHorizontalOffset(j);
      int j = this.bV.getWidth();
      int m = localRect.left;
      int n = localRect.right;
      this.bN.setDropDownWidth(j + m + n + i - k);
    }
  }
  
  private void ɭ()
  {
    cw.ˊ(this.bN);
    cw.ˋ(this.bN);
  }
  
  private void ʳ(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      post(this.cx);
      return;
    }
    removeCallbacks(this.cx);
    InputMethodManager localInputMethodManager = (InputMethodManager)getContext().getSystemService("input_method");
    if (localInputMethodManager != null) {
      localInputMethodManager.hideSoftInputFromWindow(getWindowToken(), 0);
    }
  }
  
  private void ʴ(boolean paramBoolean)
  {
    int j = 8;
    int i = j;
    if (this.cp)
    {
      i = j;
      if (!isIconified())
      {
        i = j;
        if (paramBoolean)
        {
          i = 0;
          this.bS.setVisibility(8);
        }
      }
    }
    this.bU.setVisibility(i);
  }
  
  private void ʾ(CharSequence paramCharSequence)
  {
    Editable localEditable = this.bN.getText();
    this.cr = localEditable;
    boolean bool;
    if (!TextUtils.isEmpty(localEditable)) {
      bool = true;
    } else {
      bool = false;
    }
    ｰ(bool);
    if (!bool) {
      bool = true;
    } else {
      bool = false;
    }
    ʴ(bool);
    ﺀ();
    ﹱ();
    if ((this.cc != null) && (!TextUtils.equals(paramCharSequence, this.cq))) {
      this.cc.onQueryTextChange(paramCharSequence.toString());
    }
    this.cq = paramCharSequence.toString();
  }
  
  private void ʿ(CharSequence paramCharSequence)
  {
    this.bN.setText(paramCharSequence);
    ɔ.ˏ localˏ = this.bN;
    int i;
    if (TextUtils.isEmpty(paramCharSequence)) {
      i = 0;
    } else {
      i = paramCharSequence.length();
    }
    localˏ.setSelection(i);
  }
  
  static boolean ˈ(Context paramContext)
  {
    return paramContext.getResources().getConfiguration().orientation == 2;
  }
  
  @TargetApi(8)
  private Intent ˊ(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    Intent localIntent = new Intent(paramIntent);
    paramIntent = paramSearchableInfo.getSearchActivity();
    if (paramIntent == null) {
      paramIntent = null;
    } else {
      paramIntent = paramIntent.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    return localIntent;
  }
  
  private Intent ˊ(Cursor paramCursor, int paramInt, String paramString)
  {
    Object localObject2;
    try
    {
      localObject2 = ך.ˊ(paramCursor, "suggest_intent_action");
      localObject1 = localObject2;
      if (localObject2 != null) {
        break label228;
      }
      localObject1 = localObject2;
      if (Build.VERSION.SDK_INT < 8) {
        break label228;
      }
      localObject1 = this.cu.getSuggestIntentAction();
    }
    catch (RuntimeException paramString)
    {
      try
      {
        String str;
        paramInt = paramCursor.getPosition();
      }
      catch (RuntimeException paramCursor)
      {
        paramInt = -1;
      }
      Log.w("SearchView", "Search suggestions cursor at row " + paramInt + " returned exception.", paramString);
      return null;
    }
    Object localObject3 = ך.ˊ(paramCursor, "suggest_intent_data");
    Object localObject1 = localObject3;
    if (bM)
    {
      localObject1 = localObject3;
      if (localObject3 == null) {
        localObject1 = this.cu.getSuggestIntentData();
      }
    }
    localObject3 = localObject1;
    if (localObject1 != null)
    {
      str = ך.ˊ(paramCursor, "suggest_intent_data_id");
      localObject3 = localObject1;
      if (str != null) {
        localObject3 = (String)localObject1 + "/" + Uri.encode(str);
      }
    }
    label140:
    for (localObject1 = Uri.parse((String)localObject3);; localObject1 = null)
    {
      localObject3 = ך.ˊ(paramCursor, "suggest_intent_query");
      paramString = ˊ((String)localObject2, (Uri)localObject1, ך.ˊ(paramCursor, "suggest_intent_extra_data"), (String)localObject3, paramInt, paramString);
      return paramString;
      label228:
      localObject2 = localObject1;
      if (localObject1 != null) {
        break;
      }
      localObject2 = "android.intent.action.SEARCH";
      break;
      if (localObject3 != null) {
        break label140;
      }
    }
  }
  
  private Intent ˊ(String paramString1, Uri paramUri, String paramString2, String paramString3, int paramInt, String paramString4)
  {
    paramString1 = new Intent(paramString1);
    paramString1.addFlags(268435456);
    if (paramUri != null) {
      paramString1.setData(paramUri);
    }
    paramString1.putExtra("user_query", this.cr);
    if (paramString3 != null) {
      paramString1.putExtra("query", paramString3);
    }
    if (paramString2 != null) {
      paramString1.putExtra("intent_extra_data_key", paramString2);
    }
    if (this.cv != null) {
      paramString1.putExtra("app_data", this.cv);
    }
    if (paramInt != 0)
    {
      paramString1.putExtra("action_key", paramInt);
      paramString1.putExtra("action_msg", paramString4);
    }
    if (bM) {
      paramString1.setComponent(this.cu.getSearchActivity());
    }
    return paramString1;
  }
  
  private void ˊ(int paramInt, String paramString1, String paramString2)
  {
    paramString1 = ˊ("android.intent.action.SEARCH", null, null, paramString2, paramInt, paramString1);
    getContext().startActivity(paramString1);
  }
  
  private boolean ˊ(int paramInt1, int paramInt2, String paramString)
  {
    if ((this.cf == null) || (!this.cf.onSuggestionClick(paramInt1)))
    {
      ˋ(paramInt1, 0, null);
      ʳ(false);
      Ĭ();
      return true;
    }
    return false;
  }
  
  private boolean ˊ(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.cu == null) {
      return false;
    }
    if (this.cj == null) {
      return false;
    }
    if ((paramKeyEvent.getAction() == 0) && (ᒻ.ˊ(paramKeyEvent)))
    {
      if ((paramInt == 66) || (paramInt == 84) || (paramInt == 61)) {
        return ˊ(this.bN.getListSelection(), 0, null);
      }
      if ((paramInt == 21) || (paramInt == 22))
      {
        if (paramInt == 21) {
          paramInt = 0;
        } else {
          paramInt = this.bN.length();
        }
        this.bN.setSelection(paramInt);
        this.bN.setListSelection(0);
        this.bN.clearListSelection();
        cw.ˊ(this.bN, true);
        return true;
      }
      if ((paramInt == 19) && (this.bN.getListSelection() == 0)) {
        return false;
      }
    }
    return false;
  }
  
  @TargetApi(8)
  private Intent ˋ(Intent paramIntent, SearchableInfo paramSearchableInfo)
  {
    ComponentName localComponentName = paramSearchableInfo.getSearchActivity();
    Object localObject1 = new Intent("android.intent.action.SEARCH");
    ((Intent)localObject1).setComponent(localComponentName);
    PendingIntent localPendingIntent = PendingIntent.getActivity(getContext(), 0, (Intent)localObject1, 1073741824);
    Bundle localBundle = new Bundle();
    if (this.cv != null) {
      localBundle.putParcelable("app_data", this.cv);
    }
    Intent localIntent = new Intent(paramIntent);
    paramIntent = "free_form";
    Object localObject3 = null;
    localObject1 = null;
    Object localObject4 = null;
    String str = null;
    int j = 1;
    Object localObject2 = paramIntent;
    int i = j;
    if (Build.VERSION.SDK_INT >= 8)
    {
      localObject2 = getResources();
      if (paramSearchableInfo.getVoiceLanguageModeId() != 0) {
        paramIntent = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageModeId());
      }
      if (paramSearchableInfo.getVoicePromptTextId() != 0) {
        localObject1 = ((Resources)localObject2).getString(paramSearchableInfo.getVoicePromptTextId());
      }
      if (paramSearchableInfo.getVoiceLanguageId() != 0) {
        str = ((Resources)localObject2).getString(paramSearchableInfo.getVoiceLanguageId());
      }
      localObject2 = paramIntent;
      localObject3 = localObject1;
      localObject4 = str;
      i = j;
      if (paramSearchableInfo.getVoiceMaxResults() != 0)
      {
        i = paramSearchableInfo.getVoiceMaxResults();
        localObject4 = str;
        localObject3 = localObject1;
        localObject2 = paramIntent;
      }
    }
    localIntent.putExtra("android.speech.extra.LANGUAGE_MODEL", (String)localObject2);
    localIntent.putExtra("android.speech.extra.PROMPT", localObject3);
    localIntent.putExtra("android.speech.extra.LANGUAGE", localObject4);
    localIntent.putExtra("android.speech.extra.MAX_RESULTS", i);
    if (localComponentName == null) {
      paramIntent = null;
    } else {
      paramIntent = localComponentName.flattenToShortString();
    }
    localIntent.putExtra("calling_package", paramIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT", localPendingIntent);
    localIntent.putExtra("android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE", localBundle);
    return localIntent;
  }
  
  private void ˋ(Intent paramIntent)
  {
    if (paramIntent == null) {
      return;
    }
    try
    {
      getContext().startActivity(paramIntent);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Log.e("SearchView", "Failed launch activity: " + paramIntent, localRuntimeException);
    }
  }
  
  private boolean ˋ(int paramInt1, int paramInt2, String paramString)
  {
    Cursor localCursor = this.cj.getCursor();
    if ((localCursor != null) && (localCursor.moveToPosition(paramInt1)))
    {
      ˋ(ˊ(localCursor, paramInt2, paramString));
      return true;
    }
    return false;
  }
  
  private boolean ᵄ(int paramInt)
  {
    if ((this.cf == null) || (!this.cf.onSuggestionSelect(paramInt)))
    {
      ᵞ(paramInt);
      return true;
    }
    return false;
  }
  
  private void ᵞ(int paramInt)
  {
    Editable localEditable = this.bN.getText();
    Object localObject = this.cj.getCursor();
    if (localObject == null) {
      return;
    }
    if (((Cursor)localObject).moveToPosition(paramInt))
    {
      localObject = this.cj.convertToString((Cursor)localObject);
      if (localObject != null) {
        ʿ((CharSequence)localObject);
      } else {
        ʿ(localEditable);
      }
      return;
    }
    ʿ(localEditable);
  }
  
  private CharSequence ι(CharSequence paramCharSequence)
  {
    if ((!this.ch) || (this.bX == null)) {
      return paramCharSequence;
    }
    int i = (int)(this.bN.getTextSize() * 1.25D);
    this.bX.setBounds(0, 0, i, i);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder("   ");
    localSpannableStringBuilder.setSpan(new ImageSpan(this.bX), 1, 2, 33);
    localSpannableStringBuilder.append(paramCharSequence);
    return localSpannableStringBuilder;
  }
  
  @TargetApi(11)
  private void ⅽ()
  {
    this.bV.addOnLayoutChangeListener(new Ј(this));
  }
  
  private void ײַ()
  {
    this.bV.getViewTreeObserver().addOnGlobalLayoutListener(new с(this));
  }
  
  private int ﭝ()
  {
    return getContext().getResources().getDimensionPixelSize(ڊ.ˋ.abc_search_view_preferred_width);
  }
  
  @TargetApi(8)
  private boolean ﭥ()
  {
    if ((this.cu != null) && (this.cu.getVoiceSearchEnabled()))
    {
      Intent localIntent = null;
      if (this.cu.getVoiceSearchLaunchWebSearch()) {
        localIntent = this.ca;
      } else if (this.cu.getVoiceSearchLaunchRecognizer()) {
        localIntent = this.cb;
      }
      if (localIntent != null) {
        return getContext().getPackageManager().resolveActivity(localIntent, 65536) != null;
      }
    }
    return false;
  }
  
  private boolean ﮆ()
  {
    return ((this.ck) || (this.cp)) && (!isIconified());
  }
  
  private void ﹱ()
  {
    int j = 8;
    int i = j;
    if (ﮆ()) {
      if (this.bS.getVisibility() != 0)
      {
        i = j;
        if (this.bU.getVisibility() != 0) {}
      }
      else
      {
        i = 0;
      }
    }
    this.bQ.setVisibility(i);
  }
  
  private void ﹺ(boolean paramBoolean)
  {
    this.ci = paramBoolean;
    int i;
    if (paramBoolean) {
      i = 0;
    } else {
      i = 8;
    }
    boolean bool;
    if (!TextUtils.isEmpty(this.bN.getText())) {
      bool = true;
    } else {
      bool = false;
    }
    this.bR.setVisibility(i);
    ｰ(bool);
    Object localObject = this.bO;
    if (paramBoolean) {
      i = 8;
    } else {
      i = 0;
    }
    ((View)localObject).setVisibility(i);
    localObject = this.bW;
    if (this.ch) {
      i = 8;
    } else {
      i = 0;
    }
    ((ImageView)localObject).setVisibility(i);
    ﺀ();
    if (!bool) {
      paramBoolean = true;
    } else {
      paramBoolean = false;
    }
    ʴ(paramBoolean);
    ﹱ();
  }
  
  private void ﺀ()
  {
    int i;
    if (!TextUtils.isEmpty(this.bN.getText())) {
      i = 1;
    } else {
      i = 0;
    }
    int j;
    if ((i != 0) || ((this.ch) && (!this.cs))) {
      j = 1;
    } else {
      j = 0;
    }
    Object localObject = this.bT;
    if (j != 0) {
      j = 0;
    } else {
      j = 8;
    }
    ((ImageView)localObject).setVisibility(j);
    Drawable localDrawable = this.bT.getDrawable();
    if (localDrawable != null)
    {
      if (i != 0) {
        localObject = ENABLED_STATE_SET;
      } else {
        localObject = EMPTY_STATE_SET;
      }
      localDrawable.setState((int[])localObject);
    }
  }
  
  private void ﺪ()
  {
    post(this.cy);
  }
  
  private void ﺭ()
  {
    int[] arrayOfInt;
    if (this.bN.hasFocus()) {
      arrayOfInt = FOCUSED_STATE_SET;
    } else {
      arrayOfInt = EMPTY_STATE_SET;
    }
    Drawable localDrawable = this.bP.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    localDrawable = this.bQ.getBackground();
    if (localDrawable != null) {
      localDrawable.setState(arrayOfInt);
    }
    invalidate();
  }
  
  private void ｊ()
  {
    if (this.cl != null)
    {
      this.bN.setHint(ι(this.cl));
      return;
    }
    if ((bM) && (this.cu != null))
    {
      String str = null;
      int i = this.cu.getHintId();
      if (i != 0) {
        str = getContext().getString(i);
      }
      if (str != null) {
        this.bN.setHint(ι(str));
      }
      return;
    }
    this.bN.setHint(ι(""));
  }
  
  @TargetApi(8)
  private void ｭ()
  {
    this.bN.setThreshold(this.cu.getSuggestThreshold());
    this.bN.setImeOptions(this.cu.getImeOptions());
    int j = this.cu.getInputType();
    int i = j;
    if ((j & 0xF) == 1)
    {
      j &= 0xFFFEFFFF;
      i = j;
      if (this.cu.getSuggestAuthority() != null) {
        i = j | 0x10000 | 0x80000;
      }
    }
    this.bN.setInputType(i);
    if (this.cj != null) {
      this.cj.changeCursor(null);
    }
    if (this.cu.getSuggestAuthority() != null)
    {
      this.cj = new ך(getContext(), this, this.cu, this.cA);
      this.bN.setAdapter(this.cj);
      ך localך = (ך)this.cj;
      if (this.cm) {
        i = 2;
      } else {
        i = 1;
      }
      localך.ᵧ(i);
    }
  }
  
  private void ｰ(boolean paramBoolean)
  {
    int j = 8;
    int i = j;
    if (this.ck)
    {
      i = j;
      if (ﮆ())
      {
        i = j;
        if (hasFocus()) {
          if (!paramBoolean)
          {
            i = j;
            if (this.cp) {}
          }
          else
          {
            i = 0;
          }
        }
      }
    }
    this.bS.setVisibility(i);
  }
  
  public void clearFocus()
  {
    this.cn = true;
    ʳ(false);
    super.clearFocus();
    this.bN.clearFocus();
    this.cn = false;
  }
  
  public boolean isIconified()
  {
    return this.ci;
  }
  
  public void onActionViewCollapsed()
  {
    setQuery("", false);
    clearFocus();
    ﹺ(true);
    this.bN.setImeOptions(this.ct);
    this.cs = false;
  }
  
  public void onActionViewExpanded()
  {
    if (this.cs) {
      return;
    }
    this.cs = true;
    this.ct = this.bN.getImeOptions();
    this.bN.setImeOptions(this.ct | 0x2000000);
    this.bN.setText("");
    setIconified(false);
  }
  
  protected void onDetachedFromWindow()
  {
    removeCallbacks(this.cy);
    post(this.cz);
    super.onDetachedFromWindow();
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (isIconified())
    {
      super.onMeasure(paramInt1, paramInt2);
      return;
    }
    int j = View.MeasureSpec.getMode(paramInt1);
    int i = View.MeasureSpec.getSize(paramInt1);
    switch (j)
    {
    default: 
      paramInt1 = i;
      break;
    case -2147483648: 
      if (this.co > 0) {
        paramInt1 = Math.min(this.co, i);
      } else {
        paramInt1 = Math.min(ﭝ(), i);
      }
      break;
    case 1073741824: 
      paramInt1 = i;
      if (this.co > 0) {
        paramInt1 = Math.min(this.co, i);
      }
      break;
    case 0: 
      if (this.co > 0) {
        paramInt1 = this.co;
      } else {
        paramInt1 = ﭝ();
      }
      break;
    }
    super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
  }
  
  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    ﺪ();
  }
  
  public boolean requestFocus(int paramInt, Rect paramRect)
  {
    if (this.cn) {
      return false;
    }
    if (!isFocusable()) {
      return false;
    }
    if (!isIconified())
    {
      boolean bool = this.bN.requestFocus(paramInt, paramRect);
      if (bool) {
        ﹺ(false);
      }
      return bool;
    }
    return super.requestFocus(paramInt, paramRect);
  }
  
  public void setAppSearchData(Bundle paramBundle)
  {
    this.cv = paramBundle;
  }
  
  public void setIconified(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      Į();
      return;
    }
    į();
  }
  
  public void setIconifiedByDefault(boolean paramBoolean)
  {
    if (this.ch == paramBoolean) {
      return;
    }
    this.ch = paramBoolean;
    ﹺ(paramBoolean);
    ｊ();
  }
  
  public void setImeOptions(int paramInt)
  {
    this.bN.setImeOptions(paramInt);
  }
  
  public void setInputType(int paramInt)
  {
    this.bN.setInputType(paramInt);
  }
  
  public void setMaxWidth(int paramInt)
  {
    this.co = paramInt;
    requestLayout();
  }
  
  public void setOnCloseListener(ɔ.ˊ paramˊ)
  {
    this.cd = paramˊ;
  }
  
  public void setOnQueryTextFocusChangeListener(View.OnFocusChangeListener paramOnFocusChangeListener)
  {
    this.ce = paramOnFocusChangeListener;
  }
  
  public void setOnQueryTextListener(ɔ.ˋ paramˋ)
  {
    this.cc = paramˋ;
  }
  
  public void setOnSearchClickListener(View.OnClickListener paramOnClickListener)
  {
    this.cg = paramOnClickListener;
  }
  
  public void setOnSuggestionListener(ɔ.ˎ paramˎ)
  {
    this.cf = paramˎ;
  }
  
  public void setQuery(CharSequence paramCharSequence, boolean paramBoolean)
  {
    this.bN.setText(paramCharSequence);
    if (paramCharSequence != null)
    {
      this.bN.setSelection(this.bN.length());
      this.cr = paramCharSequence;
    }
    if ((paramBoolean) && (!TextUtils.isEmpty(paramCharSequence))) {
      Ī();
    }
  }
  
  public void setQueryHint(CharSequence paramCharSequence)
  {
    this.cl = paramCharSequence;
    ｊ();
  }
  
  public void setQueryRefinementEnabled(boolean paramBoolean)
  {
    this.cm = paramBoolean;
    if ((this.cj instanceof ך))
    {
      ך localך = (ך)this.cj;
      int i;
      if (paramBoolean) {
        i = 2;
      } else {
        i = 1;
      }
      localך.ᵧ(i);
    }
  }
  
  public void setSearchableInfo(SearchableInfo paramSearchableInfo)
  {
    this.cu = paramSearchableInfo;
    if (this.cu != null)
    {
      if (bM) {
        ｭ();
      }
      ｊ();
    }
    boolean bool;
    if ((bM) && (ﭥ())) {
      bool = true;
    } else {
      bool = false;
    }
    this.cp = bool;
    if (this.cp) {
      this.bN.setPrivateImeOptions("nm");
    }
    ﹺ(isIconified());
  }
  
  public void setSubmitButtonEnabled(boolean paramBoolean)
  {
    this.ck = paramBoolean;
    ﹺ(isIconified());
  }
  
  public void setSuggestionsAdapter(د paramد)
  {
    this.cj = paramد;
    this.bN.setAdapter(this.cj);
  }
  
  void ȉ()
  {
    ﹺ(isIconified());
    ﺪ();
    if (this.bN.hasFocus()) {
      ɭ();
    }
  }
  
  void ͺ(CharSequence paramCharSequence)
  {
    ʿ(paramCharSequence);
  }
  
  int ﬧ()
  {
    return this.bY;
  }
  
  int דּ()
  {
    return this.bZ;
  }
}


/* Location:           C:\Users\Dan\Documents\android\periscope\classes-dex2jar.jar
 * Qualified Name:     o.É
 * JD-Core Version:    0.7.0.1
 */