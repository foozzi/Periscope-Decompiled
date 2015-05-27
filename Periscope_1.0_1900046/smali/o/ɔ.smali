.class public Lo/ɔ;
.super Lo/ί;
.source ""

# interfaces
.implements Lo/ᓱ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ɔ$if;,
        Lo/ɔ$ˏ;,
        Lo/ɔ$ˎ;,
        Lo/ɔ$ˊ;,
        Lo/ɔ$ˋ;
    }
.end annotation


# static fields
.field private static final bM:Z

.field static final cw:Lo/ɔ$if;


# instance fields
.field private final bN:Lo/ɔ$ˏ;

.field private final bO:Landroid/view/View;

.field private final bP:Landroid/view/View;

.field private final bQ:Landroid/view/View;

.field private final bR:Landroid/widget/ImageView;

.field private final bS:Landroid/widget/ImageView;

.field private final bT:Landroid/widget/ImageView;

.field private final bU:Landroid/widget/ImageView;

.field private final bV:Landroid/view/View;

.field private final bW:Landroid/widget/ImageView;

.field private final bX:Landroid/graphics/drawable/Drawable;

.field private final bY:I

.field private final bZ:I

.field private final cA:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<Ljava/lang/String;Landroid/graphics/drawable/Drawable$ConstantState;>;"
        }
    .end annotation
.end field

.field private final cB:Landroid/view/View$OnClickListener;

.field cC:Landroid/view/View$OnKeyListener;

.field private final cD:Landroid/widget/TextView$OnEditorActionListener;

.field private final cE:Landroid/widget/AdapterView$OnItemClickListener;

.field private final cF:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private cG:Landroid/text/TextWatcher;

.field private final ca:Landroid/content/Intent;

.field private final cb:Landroid/content/Intent;

.field private cc:Lo/ɔ$ˋ;

.field private cd:Lo/ɔ$ˊ;

.field private ce:Landroid/view/View$OnFocusChangeListener;

.field private cf:Lo/ɔ$ˎ;

.field private cg:Landroid/view/View$OnClickListener;

.field private ch:Z

.field private ci:Z

.field private cj:Lo/د;

.field private ck:Z

.field private cl:Ljava/lang/CharSequence;

.field private cm:Z

.field private cn:Z

.field private co:I

.field private cp:Z

.field private cq:Ljava/lang/CharSequence;

.field private cr:Ljava/lang/CharSequence;

.field private cs:Z

.field private ct:I

.field private cu:Landroid/app/SearchableInfo;

.field private cv:Landroid/os/Bundle;

.field private cx:Ljava/lang/Runnable;

.field private final cy:Ljava/lang/Runnable;

.field private cz:Ljava/lang/Runnable;

.field private final ᒴ:Lo/ฯ;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lo/ɔ;->bM:Z

    .line 165
    new-instance v0, Lo/ɔ$if;

    invoke-direct {v0}, Lo/ɔ$if;-><init>()V

    sput-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ɔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 273
    sget v0, Lo/ڊ$if;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lo/ɔ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 274
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lo/ί;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    new-instance v0, Lo/ɟ;

    invoke-direct {v0, p0}, Lo/ɟ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cx:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Lo/ˠ;

    invoke-direct {v0, p0}, Lo/ˠ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cy:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Lo/ϲ;

    invoke-direct {v0, p0}, Lo/ϲ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cz:Ljava/lang/Runnable;

    .line 198
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo/ɔ;->cA:Ljava/util/WeakHashMap;

    .line 926
    new-instance v0, Lo/т;

    invoke-direct {v0, p0}, Lo/т;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    .line 948
    new-instance v0, Lo/х;

    invoke-direct {v0, p0}, Lo/х;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cC:Landroid/view/View$OnKeyListener;

    .line 1123
    new-instance v0, Lo/ґ;

    invoke-direct {v0, p0}, Lo/ґ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cD:Landroid/widget/TextView$OnEditorActionListener;

    .line 1307
    new-instance v0, Lo/ɺ;

    invoke-direct {v0, p0}, Lo/ɺ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cE:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1318
    new-instance v0, Lo/ɼ;

    invoke-direct {v0, p0}, Lo/ɼ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cF:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1611
    new-instance v0, Lo/ʱ;

    invoke-direct {v0, p0}, Lo/ʱ;-><init>(Lo/ɔ;)V

    iput-object v0, p0, Lo/ɔ;->cG:Landroid/text/TextWatcher;

    .line 279
    sget-object v0, Lo/ڊ$ʽ;->SearchView:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v3

    .line 282
    invoke-virtual {v3}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->ᒴ:Lo/ฯ;

    .line 284
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 285
    sget v0, Lo/ڊ$ʽ;->SearchView_layout:I

    sget v1, Lo/ڊ$ᐝ;->abc_search_view:I

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v5

    .line 287
    const/4 v0, 0x1

    invoke-virtual {v4, v5, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 289
    sget v0, Lo/ڊ$ˏ;->search_src_text:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ɔ$ˏ;

    iput-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    .line 290
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p0}, Lo/ɔ$ˏ;->ˍ(Lo/ɔ;)V

    .line 292
    sget v0, Lo/ڊ$ˏ;->search_edit_frame:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->bO:Landroid/view/View;

    .line 293
    sget v0, Lo/ڊ$ˏ;->search_plate:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->bP:Landroid/view/View;

    .line 294
    sget v0, Lo/ڊ$ˏ;->submit_area:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->bQ:Landroid/view/View;

    .line 295
    sget v0, Lo/ڊ$ˏ;->search_button:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ɔ;->bR:Landroid/widget/ImageView;

    .line 296
    sget v0, Lo/ڊ$ˏ;->search_go_btn:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    .line 297
    sget v0, Lo/ڊ$ˏ;->search_close_btn:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    .line 298
    sget v0, Lo/ڊ$ˏ;->search_voice_btn:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    .line 299
    sget v0, Lo/ڊ$ˏ;->search_mag_icon:I

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ɔ;->bW:Landroid/widget/ImageView;

    .line 302
    iget-object v0, p0, Lo/ɔ;->bP:Landroid/view/View;

    sget v1, Lo/ڊ$ʽ;->SearchView_queryBackground:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lo/ɔ;->bQ:Landroid/view/View;

    sget v1, Lo/ڊ$ʽ;->SearchView_submitBackground:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 304
    iget-object v0, p0, Lo/ɔ;->bR:Landroid/widget/ImageView;

    sget v1, Lo/ڊ$ʽ;->SearchView_searchIcon:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 305
    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    sget v1, Lo/ڊ$ʽ;->SearchView_goIcon:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    iget-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    sget v1, Lo/ڊ$ʽ;->SearchView_closeIcon:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 307
    iget-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    sget v1, Lo/ڊ$ʽ;->SearchView_voiceIcon:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    iget-object v0, p0, Lo/ɔ;->bW:Landroid/widget/ImageView;

    sget v1, Lo/ڊ$ʽ;->SearchView_searchIcon:I

    invoke-virtual {v3, v1}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    sget v0, Lo/ڊ$ʽ;->SearchView_searchHintIcon:I

    invoke-virtual {v3, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->bX:Landroid/graphics/drawable/Drawable;

    .line 313
    sget v0, Lo/ڊ$ʽ;->SearchView_suggestionRowLayout:I

    sget v1, Lo/ڊ$ᐝ;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ɔ;->bY:I

    .line 315
    sget v0, Lo/ڊ$ʽ;->SearchView_commitIcon:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/ɔ;->bZ:I

    .line 317
    iget-object v0, p0, Lo/ɔ;->bR:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    iget-object v1, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cB:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cG:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 324
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cD:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 325
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cE:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 326
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cF:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 327
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cC:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 330
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    new-instance v1, Lo/ϳ;

    invoke-direct {v1, p0}, Lo/ϳ;-><init>(Lo/ɔ;)V

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 338
    sget v0, Lo/ڊ$ʽ;->SearchView_iconifiedByDefault:I

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getBoolean(IZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ɔ;->setIconifiedByDefault(Z)V

    .line 340
    sget v0, Lo/ڊ$ʽ;->SearchView_android_maxWidth:I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getDimensionPixelSize(II)I

    move-result v6

    .line 341
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 342
    invoke-virtual {p0, v6}, Lo/ɔ;->setMaxWidth(I)V

    .line 345
    :cond_0
    sget v0, Lo/ڊ$ʽ;->SearchView_queryHint:I

    invoke-virtual {v3, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 346
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    invoke-virtual {p0, v7}, Lo/ɔ;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 350
    :cond_1
    sget v0, Lo/ڊ$ʽ;->SearchView_android_imeOptions:I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getInt(II)I

    move-result v8

    .line 351
    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    .line 352
    invoke-virtual {p0, v8}, Lo/ɔ;->setImeOptions(I)V

    .line 355
    :cond_2
    sget v0, Lo/ڊ$ʽ;->SearchView_android_inputType:I

    const/4 v1, -0x1

    invoke-virtual {v3, v0, v1}, Lo/ๅ;->getInt(II)I

    move-result v9

    .line 356
    const/4 v0, -0x1

    if-eq v9, v0, :cond_3

    .line 357
    invoke-virtual {p0, v9}, Lo/ɔ;->setInputType(I)V

    .line 360
    :cond_3
    const/4 v10, 0x1

    .line 361
    sget v0, Lo/ڊ$ʽ;->SearchView_android_focusable:I

    invoke-virtual {v3, v0, v10}, Lo/ๅ;->getBoolean(IZ)Z

    move-result v10

    .line 362
    invoke-virtual {p0, v10}, Lo/ɔ;->setFocusable(Z)V

    .line 364
    invoke-virtual {v3}, Lo/ๅ;->recycle()V

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ɔ;->ca:Landroid/content/Intent;

    .line 368
    iget-object v0, p0, Lo/ɔ;->ca:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 369
    iget-object v0, p0, Lo/ɔ;->ca:Landroid/content/Intent;

    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "web_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ɔ;->cb:Landroid/content/Intent;

    .line 373
    iget-object v0, p0, Lo/ɔ;->cb:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getDropDownAnchor()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ɔ;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    .line 376
    iget-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 377
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 378
    invoke-direct {p0}, Lo/ɔ;->ⅽ()V

    goto :goto_0

    .line 380
    :cond_4
    invoke-direct {p0}, Lo/ɔ;->ײַ()V

    .line 384
    :cond_5
    :goto_0
    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 385
    invoke-direct {p0}, Lo/ɔ;->ｊ()V

    .line 386
    return-void
.end method

.method private Ī()V
    .locals 4

    .line 1149
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 1150
    if-eqz v3, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_2

    .line 1151
    iget-object v0, p0, Lo/ɔ;->cc:Lo/ɔ$ˋ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->cc:Lo/ɔ$ˋ;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ɔ$ˋ;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    :cond_0
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 1154
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lo/ɔ;->ˊ(ILjava/lang/String;Ljava/lang/String;)V

    .line 1156
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ɔ;->ʳ(Z)V

    .line 1157
    invoke-direct {p0}, Lo/ɔ;->Ĭ()V

    .line 1160
    :cond_2
    return-void
.end method

.method private Ĭ()V
    .locals 1

    .line 1163
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->dismissDropDown()V

    .line 1164
    return-void
.end method

.method private Į()V
    .locals 3

    .line 1167
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1168
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1169
    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    if-eqz v0, :cond_2

    .line 1171
    iget-object v0, p0, Lo/ɔ;->cd:Lo/ɔ$ˊ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->cd:Lo/ɔ$ˊ;

    invoke-interface {v0}, Lo/ɔ$ˊ;->onClose()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1173
    :cond_0
    invoke-virtual {p0}, Lo/ɔ;->clearFocus()V

    .line 1175
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    goto :goto_0

    .line 1179
    :cond_1
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setText(Ljava/lang/CharSequence;)V

    .line 1180
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->requestFocus()Z

    .line 1181
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ɔ;->ʳ(Z)V

    .line 1184
    :cond_2
    :goto_0
    return-void
.end method

.method private į()V
    .locals 1

    .line 1187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 1188
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->requestFocus()Z

    .line 1189
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ɔ;->ʳ(Z)V

    .line 1190
    iget-object v0, p0, Lo/ɔ;->cg:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1191
    iget-object v0, p0, Lo/ɔ;->cg:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1193
    :cond_0
    return-void
.end method

.method private ŕ()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1198
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 1199
    return-void

    .line 1201
    :cond_0
    iget-object v2, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    .line 1203
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lo/ɔ;->ca:Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lo/ɔ;->ˊ(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1206
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1207
    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1208
    iget-object v0, p0, Lo/ɔ;->cb:Landroid/content/Intent;

    invoke-direct {p0, v0, v2}, Lo/ɔ;->ˋ(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1210
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :cond_2
    :goto_0
    goto :goto_1

    .line 1212
    :catch_0
    move-exception v3

    .line 1215
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    :goto_1
    return-void
.end method

.method private ȓ()V
    .locals 9

    .line 1264
    iget-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1265
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1266
    iget-object v0, p0, Lo/ɔ;->bP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    .line 1267
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1268
    invoke-static {p0}, Lo/ᓯ;->ᐩ(Landroid/view/View;)Z

    move-result v5

    .line 1269
    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    if-eqz v0, :cond_0

    sget v0, Lo/ڊ$ˋ;->abc_dropdownitem_icon_width:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lo/ڊ$ˋ;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v6, v0, v1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 1273
    :goto_0
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1275
    if-eqz v5, :cond_1

    .line 1276
    iget v0, v4, Landroid/graphics/Rect;->left:I

    neg-int v7, v0

    goto :goto_1

    .line 1278
    :cond_1
    iget v0, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v6

    sub-int v7, v3, v0

    .line 1280
    :goto_1
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v7}, Lo/ɔ$ˏ;->setDropDownHorizontalOffset(I)V

    .line 1281
    iget-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v6

    sub-int v8, v0, v3

    .line 1283
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v8}, Lo/ɔ$ˏ;->setDropDownWidth(I)V

    .line 1285
    :cond_2
    return-void
.end method

.method private ɭ()V
    .locals 2

    .line 1599
    sget-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    iget-object v1, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v1}, Lo/ɔ$if;->ˊ(Landroid/widget/AutoCompleteTextView;)V

    .line 1600
    sget-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    iget-object v1, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v1}, Lo/ɔ$if;->ˋ(Landroid/widget/AutoCompleteTextView;)V

    .line 1601
    return-void
.end method

.method private ʳ(Z)V
    .locals 3

    .line 905
    if-eqz p1, :cond_0

    .line 906
    iget-object v0, p0, Lo/ɔ;->cx:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ɔ;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 908
    :cond_0
    iget-object v0, p0, Lo/ɔ;->cx:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ɔ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 909
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v2, v0

    .line 912
    if-eqz v2, :cond_1

    .line 913
    invoke-virtual {p0}, Lo/ɔ;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 916
    :cond_1
    :goto_0
    return-void
.end method

.method private ʴ(Z)V
    .locals 3

    .line 1115
    const/16 v2, 0x8

    .line 1116
    iget-boolean v0, p0, Lo/ɔ;->cp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1117
    const/4 v2, 0x0

    .line 1118
    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    :cond_0
    iget-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1121
    return-void
.end method

.method static synthetic ʻ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->į()V

    return-void
.end method

.method static synthetic ʼ(Lo/ɔ;)Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ʽ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->Į()V

    return-void
.end method

.method static synthetic ʾ(Lo/ɔ;)Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    return-object v0
.end method

.method private ʾ(Ljava/lang/CharSequence;)V
    .locals 4

    .line 1135
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1136
    iput-object v2, p0, Lo/ɔ;->cr:Ljava/lang/CharSequence;

    .line 1137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1138
    :goto_0
    invoke-direct {p0, v3}, Lo/ɔ;->ｰ(Z)V

    .line 1139
    if-nez v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lo/ɔ;->ʴ(Z)V

    .line 1140
    invoke-direct {p0}, Lo/ɔ;->ﺀ()V

    .line 1141
    invoke-direct {p0}, Lo/ɔ;->ﹱ()V

    .line 1142
    iget-object v0, p0, Lo/ɔ;->cc:Lo/ɔ$ˋ;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/ɔ;->cq:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1143
    iget-object v0, p0, Lo/ɔ;->cc:Lo/ɔ$ˋ;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/ɔ$ˋ;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1145
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/ɔ;->cq:Ljava/lang/CharSequence;

    .line 1146
    return-void
.end method

.method private ʿ(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1407
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p1}, Lo/ɔ$ˏ;->setText(Ljava/lang/CharSequence;)V

    .line 1409
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setSelection(I)V

    .line 1410
    return-void
.end method

.method static synthetic ʿ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->ŕ()V

    return-void
.end method

.method static synthetic ˈ(Lo/ɔ;)Lo/ɔ$ˏ;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    return-object v0
.end method

.method static ˈ(Landroid/content/Context;)Z
    .locals 2

    .line 1604
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic ˉ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->ɭ()V

    return-void
.end method

.method private ˊ(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1467
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1468
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1469
    const-string v0, "calling_package"

    if-nez v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1471
    return-object v2
.end method

.method private ˊ(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12

    .line 1558
    const-string v0, "suggest_intent_action"

    :try_start_0
    invoke-static {p1, v0}, Lo/ך;->ˊ(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1560
    if-nez v7, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 1561
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v7

    .line 1563
    :cond_0
    if-nez v7, :cond_1

    .line 1564
    const-string v7, "android.intent.action.SEARCH"

    .line 1568
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Lo/ך;->ˊ(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1569
    sget-boolean v0, Lo/ɔ;->bM:Z

    if-eqz v0, :cond_2

    if-nez v8, :cond_2

    .line 1570
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v8

    .line 1573
    :cond_2
    if-eqz v8, :cond_3

    .line 1574
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Lo/ך;->ˊ(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1575
    if-eqz v9, :cond_3

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1579
    :cond_3
    if-nez v8, :cond_4

    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1581
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Lo/ך;->ˊ(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1582
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Lo/ך;->ˊ(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1584
    move-object v0, p0

    move-object v1, v7

    move-object v2, v9

    move-object v3, v11

    move-object v4, v10

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lo/ɔ;->ˊ(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 1585
    :catch_0
    move-exception v7

    .line 1588
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    .line 1591
    goto :goto_1

    .line 1589
    :catch_1
    move-exception v9

    .line 1590
    const/4 v8, -0x1

    .line 1592
    :goto_1
    const-string v0, "SearchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search suggestions cursor at row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returned exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1594
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˊ(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 1434
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1435
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1439
    if-eqz p2, :cond_0

    .line 1440
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1442
    :cond_0
    const-string v0, "user_query"

    iget-object v1, p0, Lo/ɔ;->cr:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1443
    if-eqz p4, :cond_1

    .line 1444
    const-string v0, "query"

    invoke-virtual {v2, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1446
    :cond_1
    if-eqz p3, :cond_2

    .line 1447
    const-string v0, "intent_extra_data_key"

    invoke-virtual {v2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    :cond_2
    iget-object v0, p0, Lo/ɔ;->cv:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 1450
    const-string v0, "app_data"

    iget-object v1, p0, Lo/ɔ;->cv:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1452
    :cond_3
    if-eqz p5, :cond_4

    .line 1453
    const-string v0, "action_key"

    invoke-virtual {v2, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1454
    const-string v0, "action_msg"

    invoke-virtual {v2, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1456
    :cond_4
    sget-boolean v0, Lo/ɔ;->bM:Z

    if-eqz v0, :cond_5

    .line 1457
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1459
    :cond_5
    return-object v2
.end method

.method private ˊ(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1413
    const-string v7, "android.intent.action.SEARCH"

    .line 1414
    move-object v0, p0

    move-object v1, v7

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v6}, Lo/ɔ;->ˊ(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1415
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1416
    return-void
.end method

.method static synthetic ˊ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->ﺭ()V

    return-void
.end method

.method static synthetic ˊ(Lo/ɔ;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lo/ɔ;->ˊ(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ɔ;Ljava/lang/CharSequence;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lo/ɔ;->ʾ(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic ˊ(Lo/ɔ;Z)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lo/ɔ;->ʳ(Z)V

    return-void
.end method

.method private ˊ(IILjava/lang/String;)Z
    .locals 2

    .line 1288
    iget-object v0, p0, Lo/ɔ;->cf:Lo/ɔ$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->cf:Lo/ɔ$ˎ;

    invoke-interface {v0, p1}, Lo/ɔ$ˎ;->onSuggestionClick(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1290
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/ɔ;->ˋ(IILjava/lang/String;)Z

    .line 1291
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ɔ;->ʳ(Z)V

    .line 1292
    invoke-direct {p0}, Lo/ɔ;->Ĭ()V

    .line 1293
    const/4 v0, 0x1

    return v0

    .line 1295
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ˊ(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 992
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    .line 993
    const/4 v0, 0x0

    return v0

    .line 995
    :cond_0
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    if-nez v0, :cond_1

    .line 996
    const/4 v0, 0x0

    return v0

    .line 998
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p3}, Lo/ᒻ;->ˊ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1001
    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x54

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3d

    if-ne p2, v0, :cond_3

    .line 1003
    :cond_2
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getListSelection()I

    move-result v3

    .line 1004
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v3, v0, v1}, Lo/ɔ;->ˊ(IILjava/lang/String;)Z

    move-result v0

    return v0

    .line 1009
    :cond_3
    const/16 v0, 0x15

    if-eq p2, v0, :cond_4

    const/16 v0, 0x16

    if-ne p2, v0, :cond_6

    .line 1014
    :cond_4
    const/16 v0, 0x15

    if-ne p2, v0, :cond_5

    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->length()I

    move-result v3

    .line 1016
    :goto_0
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v3}, Lo/ɔ$ˏ;->setSelection(I)V

    .line 1017
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setListSelection(I)V

    .line 1018
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->clearListSelection()V

    .line 1019
    sget-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    iget-object v1, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo/ɔ$if;->ˊ(Landroid/widget/AutoCompleteTextView;Z)V

    .line 1021
    const/4 v0, 0x1

    return v0

    .line 1025
    :cond_6
    const/16 v0, 0x13

    if-ne p2, v0, :cond_7

    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getListSelection()I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_7

    .line 1028
    const/4 v0, 0x0

    return v0

    .line 1031
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ˊ(Lo/ɔ;I)Z
    .locals 1

    .line 104
    invoke-direct {p0, p1}, Lo/ɔ;->ᵄ(I)Z

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ɔ;IILjava/lang/String;)Z
    .locals 1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lo/ɔ;->ˊ(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic ˊ(Lo/ɔ;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lo/ɔ;->ˊ(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private ˋ(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1483
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1488
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEARCH"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1489
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1490
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1497
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1498
    iget-object v0, p0, Lo/ɔ;->cv:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1499
    const-string v0, "app_data"

    iget-object v1, p0, Lo/ɔ;->cv:Landroid/os/Bundle;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1505
    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1508
    const-string v8, "free_form"

    .line 1509
    const/4 v9, 0x0

    .line 1510
    const/4 v10, 0x0

    .line 1511
    const/4 v11, 0x1

    .line 1513
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_4

    .line 1514
    invoke-virtual {p0}, Lo/ɔ;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1515
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1516
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1518
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1519
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1521
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1522
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1524
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1525
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v11

    .line 1528
    :cond_4
    const-string v0, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1529
    const-string v0, "android.speech.extra.PROMPT"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1530
    const-string v0, "android.speech.extra.LANGUAGE"

    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1531
    const-string v0, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    const-string v0, "calling_package"

    if-nez v3, :cond_5

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1536
    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1537
    const-string v0, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1539
    return-object v7
.end method

.method static synthetic ˋ(Lo/ɔ;)Lo/د;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    return-object v0
.end method

.method private ˋ(Landroid/content/Intent;)V
    .locals 4

    .line 1391
    if-nez p1, :cond_0

    .line 1392
    return-void

    .line 1397
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1400
    goto :goto_0

    .line 1398
    :catch_0
    move-exception v3

    .line 1399
    const-string v0, "SearchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    :goto_0
    return-void
.end method

.method private ˋ(IILjava/lang/String;)Z
    .locals 3

    .line 1374
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    invoke-virtual {v0}, Lo/د;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1375
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    invoke-direct {p0, v1, p2, p3}, Lo/ɔ;->ˊ(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1380
    invoke-direct {p0, v2}, Lo/ɔ;->ˋ(Landroid/content/Intent;)V

    .line 1382
    const/4 v0, 0x1

    return v0

    .line 1384
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ˌ(Lo/ɔ;)Landroid/app/SearchableInfo;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ɔ;)Landroid/view/View$OnFocusChangeListener;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->ce:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->ȓ()V

    return-void
.end method

.method static synthetic ͺ(Lo/ɔ;)Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/ɔ;)Landroid/widget/ImageView;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ɔ;->bR:Landroid/widget/ImageView;

    return-object v0
.end method

.method private ᵄ(I)Z
    .locals 1

    .line 1299
    iget-object v0, p0, Lo/ɔ;->cf:Lo/ɔ$ˎ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->cf:Lo/ɔ$ˎ;

    invoke-interface {v0, p1}, Lo/ɔ$ˎ;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1301
    :cond_0
    invoke-direct {p0, p1}, Lo/ɔ;->ᵞ(I)V

    .line 1302
    const/4 v0, 0x1

    return v0

    .line 1304
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private ᵞ(I)V
    .locals 4

    .line 1341
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1342
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    invoke-virtual {v0}, Lo/د;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1343
    if-nez v2, :cond_0

    .line 1344
    return-void

    .line 1346
    :cond_0
    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    invoke-virtual {v0, v2}, Lo/د;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1349
    if-eqz v3, :cond_1

    .line 1352
    invoke-direct {p0, v3}, Lo/ɔ;->ʿ(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1355
    :cond_1
    invoke-direct {p0, v1}, Lo/ɔ;->ʿ(Ljava/lang/CharSequence;)V

    .line 1357
    :goto_0
    goto :goto_1

    .line 1359
    :cond_2
    invoke-direct {p0, v1}, Lo/ɔ;->ʿ(Ljava/lang/CharSequence;)V

    .line 1361
    :goto_1
    return-void
.end method

.method private ι(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .line 1037
    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->bX:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1038
    :cond_0
    return-object p1

    .line 1041
    :cond_1
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v4, v0

    .line 1042
    iget-object v0, p0, Lo/ɔ;->bX:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1044
    new-instance v5, Landroid/text/SpannableStringBuilder;

    const-string v0, "   "

    invoke-direct {v5, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1045
    new-instance v0, Landroid/text/style/ImageSpan;

    iget-object v1, p0, Lo/ɔ;->bX:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x21

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1046
    invoke-virtual {v5, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1047
    return-object v5
.end method

.method static synthetic ι(Lo/ɔ;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lo/ɔ;->Ī()V

    return-void
.end method

.method private ⅽ()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 390
    iget-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    new-instance v1, Lo/Ј;

    invoke-direct {v1, p0}, Lo/Ј;-><init>(Lo/ɔ;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 397
    return-void
.end method

.method private ײַ()V
    .locals 2

    .line 400
    iget-object v0, p0, Lo/ɔ;->bV:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lo/с;

    invoke-direct {v1, p0}, Lo/с;-><init>(Lo/ɔ;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 407
    return-void
.end method

.method private ﭝ()I
    .locals 2

    .line 806
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/ڊ$ˋ;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private ﭥ()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 828
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 829
    const/4 v2, 0x0

    .line 830
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    iget-object v2, p0, Lo/ɔ;->ca:Landroid/content/Intent;

    goto :goto_0

    .line 832
    :cond_0
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    iget-object v2, p0, Lo/ɔ;->cb:Landroid/content/Intent;

    .line 835
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 836
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x10000

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 838
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 841
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private ﮆ()Z
    .locals 1

    .line 845
    iget-boolean v0, p0, Lo/ɔ;->ck:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/ɔ;->cp:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ﹱ()V
    .locals 2

    .line 858
    const/16 v1, 0x8

    .line 859
    invoke-direct {p0}, Lo/ɔ;->ﮆ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ɔ;->bU:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 862
    :cond_0
    const/4 v1, 0x0

    .line 864
    :cond_1
    iget-object v0, p0, Lo/ɔ;->bQ:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    return-void
.end method

.method private ﹺ(Z)V
    .locals 4

    .line 811
    iput-boolean p1, p0, Lo/ɔ;->ci:Z

    .line 813
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 815
    :goto_0
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 817
    :goto_1
    iget-object v0, p0, Lo/ɔ;->bR:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 818
    invoke-direct {p0, v3}, Lo/ɔ;->ｰ(Z)V

    .line 819
    iget-object v0, p0, Lo/ɔ;->bO:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 820
    iget-object v0, p0, Lo/ɔ;->bW:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lo/ɔ;->ch:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 821
    invoke-direct {p0}, Lo/ɔ;->ﺀ()V

    .line 822
    if-nez v3, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    invoke-direct {p0, v0}, Lo/ɔ;->ʴ(Z)V

    .line 823
    invoke-direct {p0}, Lo/ɔ;->ﹱ()V

    .line 824
    return-void
.end method

.method private ﺀ()V
    .locals 5

    .line 868
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 871
    :goto_0
    if-nez v2, :cond_1

    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/ɔ;->cs:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 872
    :goto_1
    iget-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lo/ɔ;->bT:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 874
    if-eqz v4, :cond_5

    .line 875
    if-eqz v2, :cond_4

    sget-object v0, Lo/ɔ;->ENABLED_STATE_SET:[I

    goto :goto_3

    :cond_4
    sget-object v0, Lo/ɔ;->EMPTY_STATE_SET:[I

    :goto_3
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 877
    :cond_5
    return-void
.end method

.method private ﺪ()V
    .locals 1

    .line 880
    iget-object v0, p0, Lo/ɔ;->cy:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ɔ;->post(Ljava/lang/Runnable;)Z

    .line 881
    return-void
.end method

.method private ﺭ()V
    .locals 5

    .line 884
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->hasFocus()Z

    move-result v1

    .line 885
    if-eqz v1, :cond_0

    sget-object v2, Lo/ɔ;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v2, Lo/ɔ;->EMPTY_STATE_SET:[I

    .line 886
    :goto_0
    iget-object v0, p0, Lo/ɔ;->bP:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 887
    if-eqz v3, :cond_1

    .line 888
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 890
    :cond_1
    iget-object v0, p0, Lo/ɔ;->bQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 891
    if-eqz v4, :cond_2

    .line 892
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 894
    :cond_2
    invoke-virtual {p0}, Lo/ɔ;->invalidate()V

    .line 895
    return-void
.end method

.method private ｊ()V
    .locals 4

    .line 1051
    iget-object v0, p0, Lo/ɔ;->cl:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cl:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lo/ɔ;->ι(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1053
    :cond_0
    sget-boolean v0, Lo/ɔ;->bM:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_3

    .line 1054
    const/4 v2, 0x0

    .line 1055
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v3

    .line 1056
    if-eqz v3, :cond_1

    .line 1057
    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1059
    :cond_1
    if-eqz v2, :cond_2

    .line 1060
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-direct {p0, v2}, Lo/ɔ;->ι(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setHint(Ljava/lang/CharSequence;)V

    .line 1062
    :cond_2
    goto :goto_0

    .line 1063
    :cond_3
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const-string v1, ""

    invoke-direct {p0, v1}, Lo/ɔ;->ι(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setHint(Ljava/lang/CharSequence;)V

    .line 1065
    :goto_0
    return-void
.end method

.method private ｭ()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .line 1072
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setThreshold(I)V

    .line 1073
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setImeOptions(I)V

    .line 1074
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v4

    .line 1077
    and-int/lit8 v0, v4, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1080
    const v0, -0x10001

    and-int/2addr v4, v0

    .line 1081
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1082
    const/high16 v0, 0x10000

    or-int/2addr v4, v0

    .line 1089
    const/high16 v0, 0x80000

    or-int/2addr v4, v0

    .line 1092
    :cond_0
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, v4}, Lo/ɔ$ˏ;->setInputType(I)V

    .line 1093
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/د;->changeCursor(Landroid/database/Cursor;)V

    .line 1098
    :cond_1
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1099
    new-instance v0, Lo/ך;

    invoke-virtual {p0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    iget-object v3, p0, Lo/ɔ;->cA:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v2, v3}, Lo/ך;-><init>(Landroid/content/Context;Lo/ɔ;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Lo/ɔ;->cj:Lo/د;

    .line 1101
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cj:Lo/د;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1102
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    check-cast v0, Lo/ך;

    iget-boolean v1, p0, Lo/ɔ;->cm:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lo/ך;->ᵧ(I)V

    .line 1106
    :cond_3
    return-void
.end method

.method private ｰ(Z)V
    .locals 2

    .line 849
    const/16 v1, 0x8

    .line 850
    iget-boolean v0, p0, Lo/ɔ;->ck:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lo/ɔ;->ﮆ()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/ɔ;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lo/ɔ;->cp:Z

    if-nez v0, :cond_1

    .line 852
    :cond_0
    const/4 v1, 0x0

    .line 854
    :cond_1
    iget-object v0, p0, Lo/ɔ;->bS:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 855
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .line 512
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ɔ;->cn:Z

    .line 513
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ɔ;->ʳ(Z)V

    .line 514
    invoke-super {p0}, Lo/ί;->clearFocus()V

    .line 515
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->clearFocus()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ɔ;->cn:Z

    .line 517
    return-void
.end method

.method public isIconified()Z
    .locals 1

    .line 677
    iget-boolean v0, p0, Lo/ɔ;->ci:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .line 1241
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/ɔ;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 1242
    invoke-virtual {p0}, Lo/ɔ;->clearFocus()V

    .line 1243
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 1244
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget v1, p0, Lo/ɔ;->ct:I

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setImeOptions(I)V

    .line 1245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ɔ;->cs:Z

    .line 1246
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .line 1253
    iget-boolean v0, p0, Lo/ɔ;->cs:Z

    if-eqz v0, :cond_0

    return-void

    .line 1255
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ɔ;->cs:Z

    .line 1256
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getImeOptions()I

    move-result v0

    iput v0, p0, Lo/ɔ;->ct:I

    .line 1257
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget v1, p0, Lo/ɔ;->ct:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setImeOptions(I)V

    .line 1258
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ɔ;->setIconified(Z)V

    .line 1260
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 899
    iget-object v0, p0, Lo/ɔ;->cy:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ɔ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 900
    iget-object v0, p0, Lo/ɔ;->cz:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ɔ;->post(Ljava/lang/Runnable;)Z

    .line 901
    invoke-super {p0}, Lo/ί;->onDetachedFromWindow()V

    .line 902
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 773
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    invoke-super {p0, p1, p2}, Lo/ί;->onMeasure(II)V

    .line 775
    return-void

    .line 778
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 779
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 781
    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 784
    :sswitch_0
    iget v0, p0, Lo/ɔ;->co:I

    if-lez v0, :cond_1

    .line 785
    iget v0, p0, Lo/ɔ;->co:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 787
    :cond_1
    invoke-direct {p0}, Lo/ɔ;->ﭝ()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 789
    goto :goto_0

    .line 792
    :sswitch_1
    iget v0, p0, Lo/ɔ;->co:I

    if-lez v0, :cond_3

    .line 793
    iget v0, p0, Lo/ɔ;->co:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 798
    :sswitch_2
    iget v0, p0, Lo/ɔ;->co:I

    if-lez v0, :cond_2

    iget v2, p0, Lo/ɔ;->co:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lo/ɔ;->ﭝ()I

    move-result v2

    .line 801
    :cond_3
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 802
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lo/ί;->onMeasure(II)V

    .line 803
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1231
    invoke-super {p0, p1}, Lo/ί;->onWindowFocusChanged(Z)V

    .line 1233
    invoke-direct {p0}, Lo/ɔ;->ﺪ()V

    .line 1234
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 494
    iget-boolean v0, p0, Lo/ɔ;->cn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lo/ɔ;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 498
    :cond_1
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    if-nez v0, :cond_3

    .line 499
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p1, p2}, Lo/ɔ$ˏ;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 500
    if-eqz v1, :cond_2

    .line 501
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 503
    :cond_2
    return v1

    .line 505
    :cond_3
    invoke-super {p0, p1, p2}, Lo/ί;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lo/ɔ;->cv:Landroid/os/Bundle;

    .line 451
    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    .line 663
    if-eqz p1, :cond_0

    .line 664
    invoke-direct {p0}, Lo/ɔ;->Į()V

    goto :goto_0

    .line 666
    :cond_0
    invoke-direct {p0}, Lo/ɔ;->į()V

    .line 668
    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 638
    iget-boolean v0, p0, Lo/ɔ;->ch:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 639
    :cond_0
    iput-boolean p1, p0, Lo/ɔ;->ch:Z

    .line 640
    invoke-direct {p0, p1}, Lo/ɔ;->ﹺ(Z)V

    .line 641
    invoke-direct {p0}, Lo/ɔ;->ｊ()V

    .line 642
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 460
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p1}, Lo/ɔ$ˏ;->setImeOptions(I)V

    .line 461
    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 479
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p1}, Lo/ɔ$ˏ;->setInputType(I)V

    .line 480
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 756
    iput p1, p0, Lo/ɔ;->co:I

    .line 758
    invoke-virtual {p0}, Lo/ɔ;->requestLayout()V

    .line 759
    return-void
.end method

.method public setOnCloseListener(Lo/ɔ$ˊ;)V
    .locals 0

    .line 535
    iput-object p1, p0, Lo/ɔ;->cd:Lo/ɔ$ˊ;

    .line 536
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lo/ɔ;->ce:Landroid/view/View$OnFocusChangeListener;

    .line 545
    return-void
.end method

.method public setOnQueryTextListener(Lo/ɔ$ˋ;)V
    .locals 0

    .line 526
    iput-object p1, p0, Lo/ɔ;->cc:Lo/ɔ$ˋ;

    .line 527
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lo/ɔ;->cg:Landroid/view/View$OnClickListener;

    .line 566
    return-void
.end method

.method public setOnSuggestionListener(Lo/ɔ$ˎ;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lo/ɔ;->cf:Lo/ɔ$ˎ;

    .line 554
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 586
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0, p1}, Lo/ɔ$ˏ;->setText(Ljava/lang/CharSequence;)V

    .line 587
    if-eqz p1, :cond_0

    .line 588
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v1}, Lo/ɔ$ˏ;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setSelection(I)V

    .line 589
    iput-object p1, p0, Lo/ɔ;->cr:Ljava/lang/CharSequence;

    .line 593
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 594
    invoke-direct {p0}, Lo/ɔ;->Ī()V

    .line 596
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lo/ɔ;->cl:Ljava/lang/CharSequence;

    .line 606
    invoke-direct {p0}, Lo/ɔ;->ｊ()V

    .line 607
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 717
    iput-boolean p1, p0, Lo/ɔ;->cm:Z

    .line 718
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    instance-of v0, v0, Lo/ך;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lo/ɔ;->cj:Lo/د;

    check-cast v0, Lo/ך;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lo/ך;->ᵧ(I)V

    .line 722
    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2

    .line 426
    iput-object p1, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    .line 427
    iget-object v0, p0, Lo/ɔ;->cu:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    .line 428
    sget-boolean v0, Lo/ɔ;->bM:Z

    if-eqz v0, :cond_0

    .line 429
    invoke-direct {p0}, Lo/ɔ;->ｭ()V

    .line 431
    :cond_0
    invoke-direct {p0}, Lo/ɔ;->ｊ()V

    .line 434
    :cond_1
    sget-boolean v0, Lo/ɔ;->bM:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lo/ɔ;->ﭥ()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/ɔ;->cp:Z

    .line 436
    iget-boolean v0, p0, Lo/ɔ;->cp:Z

    if-eqz v0, :cond_3

    .line 439
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 441
    :cond_3
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 442
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1

    .line 689
    iput-boolean p1, p0, Lo/ɔ;->ck:Z

    .line 690
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 691
    return-void
.end method

.method public setSuggestionsAdapter(Lo/د;)V
    .locals 2

    .line 739
    iput-object p1, p0, Lo/ɔ;->cj:Lo/د;

    .line 741
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    iget-object v1, p0, Lo/ɔ;->cj:Lo/د;

    invoke-virtual {v0, v1}, Lo/ɔ$ˏ;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 742
    return-void
.end method

.method ȉ()V
    .locals 1

    .line 1220
    invoke-virtual {p0}, Lo/ɔ;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lo/ɔ;->ﹺ(Z)V

    .line 1223
    invoke-direct {p0}, Lo/ɔ;->ﺪ()V

    .line 1224
    iget-object v0, p0, Lo/ɔ;->bN:Lo/ɔ$ˏ;

    invoke-virtual {v0}, Lo/ɔ$ˏ;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1225
    invoke-direct {p0}, Lo/ɔ;->ɭ()V

    .line 1227
    :cond_0
    return-void
.end method

.method ͺ(Ljava/lang/CharSequence;)V
    .locals 0

    .line 923
    invoke-direct {p0, p1}, Lo/ɔ;->ʿ(Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method ﬧ()I
    .locals 1

    .line 410
    iget v0, p0, Lo/ɔ;->bY:I

    return v0
.end method

.method דּ()I
    .locals 1

    .line 414
    iget v0, p0, Lo/ɔ;->bZ:I

    return v0
.end method
