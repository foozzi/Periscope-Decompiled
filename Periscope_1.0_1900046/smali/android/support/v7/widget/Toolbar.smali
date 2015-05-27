.class public Landroid/support/v7/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/Toolbar$if;,
        Landroid/support/v7/widget/Toolbar$SavedState;,
        Landroid/support/v7/widget/Toolbar$ˊ;,
        Landroid/support/v7/widget/Toolbar$ˋ;
    }
.end annotation


# instance fields
.field private dA:Z

.field private dB:Z

.field private final dC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/View;>;"
        }
    .end annotation
.end field

.field private final dD:[I

.field private dE:Landroid/support/v7/widget/Toolbar$ˋ;

.field private final dF:Lo/ᖦ$ˋ;

.field private dG:Lo/ᐞ;

.field private dH:Lo/ᓴ;

.field private dI:Landroid/support/v7/widget/Toolbar$if;

.field private dJ:Z

.field private dK:I

.field private final dL:Ljava/lang/Runnable;

.field private de:Landroid/widget/TextView;

.field private df:Landroid/widget/TextView;

.field private dg:Landroid/widget/ImageButton;

.field private dh:Landroid/widget/ImageView;

.field private di:Landroid/graphics/drawable/Drawable;

.field private dj:Ljava/lang/CharSequence;

.field private dk:Landroid/widget/ImageButton;

.field dl:Landroid/view/View;

.field private dm:I

.field private do:I

.field private dp:I

.field private dq:I

.field private dr:I

.field private ds:I

.field private dt:I

.field private du:I

.field private final dv:Lo/ſ;

.field private dw:Ljava/lang/CharSequence;

.field private dx:Ljava/lang/CharSequence;

.field private dy:I

.field private dz:I

.field private Ť:I

.field private ƈ:Lo/ᵉ$if;

.field private ȝ:Lo/ᵁ$if;

.field private ᒰ:I

.field private final ᒴ:Lo/ฯ;

.field private Ἴ:Landroid/content/Context;

.field private Ἵ:Lo/ᖦ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 192
    sget v0, Lo/ڊ$if;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18

    .line 198
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lo/ᓯ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v1, v0, v2, v3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Lo/ſ;

    invoke-direct {v0}, Lo/ſ;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    .line 141
    const v0, 0x800013

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->ᒰ:I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dD:[I

    .line 159
    new-instance v0, Lo/כ;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lo/כ;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dF:Lo/ᖦ$ˋ;

    .line 179
    new-instance v0, Lo/ء;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lo/ء;-><init>(Landroid/support/v7/widget/Toolbar;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dL:Ljava/lang/Runnable;

    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ڊ$ʽ;->Toolbar:[I

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x0

    invoke-static {v0, v2, v1, v3, v4}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v5

    .line 204
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleTextAppearance:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dm:I

    .line 205
    sget v0, Lo/ڊ$ʽ;->Toolbar_subtitleTextAppearance:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->do:I

    .line 206
    sget v0, Lo/ڊ$ʽ;->Toolbar_android_gravity:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->ᒰ:I

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getInteger(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->ᒰ:I

    .line 207
    const/16 v0, 0x30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dp:I

    .line 208
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleMargins:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->du:I

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dt:I

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->ds:I

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dr:I

    .line 211
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleMarginStart:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v6

    .line 212
    if-ltz v6, :cond_0

    .line 213
    move-object/from16 v0, p0

    iput v6, v0, Landroid/support/v7/widget/Toolbar;->dr:I

    .line 216
    :cond_0
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleMarginEnd:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v7

    .line 217
    if-ltz v7, :cond_1

    .line 218
    move-object/from16 v0, p0

    iput v7, v0, Landroid/support/v7/widget/Toolbar;->ds:I

    .line 221
    :cond_1
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleMarginTop:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v8

    .line 222
    if-ltz v8, :cond_2

    .line 223
    move-object/from16 v0, p0

    iput v8, v0, Landroid/support/v7/widget/Toolbar;->dt:I

    .line 226
    :cond_2
    sget v0, Lo/ڊ$ʽ;->Toolbar_titleMarginBottom:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v9

    .line 228
    if-ltz v9, :cond_3

    .line 229
    move-object/from16 v0, p0

    iput v9, v0, Landroid/support/v7/widget/Toolbar;->du:I

    .line 232
    :cond_3
    sget v0, Lo/ڊ$ʽ;->Toolbar_maxButtonHeight:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelSize(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dq:I

    .line 234
    sget v0, Lo/ڊ$ʽ;->Toolbar_contentInsetStart:I

    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v10

    .line 237
    sget v0, Lo/ڊ$ʽ;->Toolbar_contentInsetEnd:I

    const/high16 v1, -0x80000000

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v11

    .line 240
    sget v0, Lo/ڊ$ʽ;->Toolbar_contentInsetLeft:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelSize(II)I

    move-result v12

    .line 242
    sget v0, Lo/ڊ$ʽ;->Toolbar_contentInsetRight:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelSize(II)I

    move-result v13

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0, v12, v13}, Lo/ſ;->ᐧ(II)V

    .line 247
    const/high16 v0, -0x80000000

    if-ne v10, v0, :cond_4

    const/high16 v0, -0x80000000

    if-eq v11, v0, :cond_5

    .line 249
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0, v10, v11}, Lo/ſ;->ـ(II)V

    .line 252
    :cond_5
    sget v0, Lo/ڊ$ʽ;->Toolbar_collapseIcon:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->di:Landroid/graphics/drawable/Drawable;

    .line 253
    sget v0, Lo/ڊ$ʽ;->Toolbar_collapseContentDescription:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->dj:Ljava/lang/CharSequence;

    .line 255
    sget v0, Lo/ڊ$ʽ;->Toolbar_title:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 256
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 260
    :cond_6
    sget v0, Lo/ڊ$ʽ;->Toolbar_subtitle:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v15

    .line 261
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 262
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 265
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    .line 266
    sget v0, Lo/ڊ$ʽ;->Toolbar_popupTheme:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 268
    sget v0, Lo/ڊ$ʽ;->Toolbar_navigationIcon:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 269
    if-eqz v16, :cond_8

    .line 270
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :cond_8
    sget v0, Lo/ڊ$ʽ;->Toolbar_navigationContentDescription:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 273
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 278
    :cond_9
    sget v0, Lo/ڊ$ʽ;->Toolbar_android_minHeight:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelSize(II)I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/Toolbar;->dK:I

    .line 280
    invoke-virtual {v5}, Lo/ๅ;->recycle()V

    .line 283
    invoke-virtual {v5}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/Toolbar;->ᒴ:Lo/ฯ;

    .line 284
    return-void
.end method

.method private ɩ(Landroid/view/View;)I
    .locals 3

    .line 1688
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 1689
    invoke-static {v2}, Lo/ᕽ;->ˊ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v0

    invoke-static {v2}, Lo/ᕽ;->ˋ(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private ɻ()V
    .locals 2

    .line 510
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    .line 513
    :cond_0
    return-void
.end method

.method private ʏ()V
    .locals 4

    .line 838
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Lo/ᖦ;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᖦ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    .line 840
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->Ť:I

    invoke-virtual {v0, v1}, Lo/ᖦ;->setPopupTheme(I)V

    .line 841
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->dF:Lo/ᖦ$ˋ;

    invoke-virtual {v0, v1}, Lo/ᖦ;->setOnMenuItemClickListener(Lo/ᖦ$ˋ;)V

    .line 842
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->ƈ:Lo/ᵉ$if;

    iget-object v2, p0, Landroid/support/v7/widget/Toolbar;->ȝ:Lo/ᵁ$if;

    invoke-virtual {v0, v1, v2}, Lo/ᖦ;->setMenuCallbacks(Lo/ᵉ$if;Lo/ᵁ$if;)V

    .line 843
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v3

    .line 844
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dp:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800005

    or-int/2addr v0, v1

    iput v0, v3, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0, v3}, Lo/ᖦ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 846
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ﹸ(Landroid/view/View;)V

    .line 848
    :cond_0
    return-void
.end method

.method private ʔ()V
    .locals 5

    .line 995
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/ڊ$if;->toolbarNavigationButtonStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    .line 998
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v4

    .line 999
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dp:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, v4, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    .line 1000
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1002
    :cond_0
    return-void
.end method

.method private ʕ()V
    .locals 5

    .line 1005
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lo/ڊ$if;->toolbarNavigationButtonStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    .line 1008
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->di:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1009
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->dj:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1010
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v4

    .line 1011
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dp:I

    and-int/lit8 v0, v0, 0x70

    const v1, 0x800003

    or-int/2addr v0, v1

    iput v0, v4, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    .line 1012
    const/4 v0, 0x2

    iput v0, v4, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1013
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1014
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    new-instance v1, Lo/ر;

    invoke-direct {v1, p0}, Lo/ر;-><init>(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    :cond_0
    return-void
.end method

.method private ʖ()V
    .locals 1

    .line 1068
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1069
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    .line 1070
    return-void
.end method

.method private ʵ(Landroid/view/View;)I
    .locals 3

    .line 1694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 1695
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private ʷ()Z
    .locals 4

    .line 1179
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dJ:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1181
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v1

    .line 1182
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1183
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1184
    invoke-direct {p0, v3}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1186
    const/4 v0, 0x0

    return v0

    .line 1182
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1189
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private ʸ(Landroid/view/View;)V
    .locals 3

    .line 1750
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v2, v0

    .line 1751
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-eq p1, v0, :cond_1

    .line 1752
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1754
    :cond_1
    return-void
.end method

.method private ˆ(Z)V
    .locals 6

    .line 1739
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v2

    .line 1740
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 1741
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1742
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v5, v0

    .line 1743
    iget v0, v5, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-eq v4, v0, :cond_1

    .line 1744
    if-eqz p1, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1740
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1747
    :cond_2
    return-void
.end method

.method private ˊ(Landroid/view/View;IIII[I)I
    .locals 10

    .line 1155
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 1157
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v1, 0x0

    aget v1, p6, v1

    sub-int v3, v0, v1

    .line 1158
    iget v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v1, 0x1

    aget v1, p6, v1

    sub-int v4, v0, v1

    .line 1159
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1160
    const/4 v0, 0x0

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1161
    add-int v7, v5, v6

    .line 1162
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p6, v1

    .line 1163
    neg-int v0, v4

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p6, v1

    .line 1165
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/2addr v0, p3

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v8

    .line 1167
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v9

    .line 1171
    invoke-virtual {p1, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1172
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v7

    return v0
.end method

.method private ˊ(Landroid/view/View;I[II)I
    .locals 6

    .line 1565
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v2, v0

    .line 1566
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->leftMargin:I

    const/4 v1, 0x0

    aget v1, p3, v1

    sub-int v3, v0, v1

    .line 1567
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr p2, v0

    .line 1568
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 1569
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->ˌ(Landroid/view/View;I)I

    move-result v4

    .line 1570
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1571
    add-int v0, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, p2, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 1572
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->rightMargin:I

    add-int/2addr v0, v5

    add-int/2addr p2, v0

    .line 1573
    return p2
.end method

.method private ˊ(Ljava/util/List;[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;[I)I"
        }
    .end annotation

    .line 1545
    const/4 v0, 0x0

    aget v2, p2, v0

    .line 1546
    const/4 v0, 0x1

    aget v3, p2, v0

    .line 1547
    const/4 v4, 0x0

    .line 1548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1549
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    .line 1550
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .line 1551
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v8, v0

    .line 1552
    iget v0, v8, Landroid/support/v7/widget/Toolbar$ˊ;->leftMargin:I

    sub-int v9, v0, v2

    .line 1553
    iget v0, v8, Landroid/support/v7/widget/Toolbar$ˊ;->rightMargin:I

    sub-int v10, v0, v3

    .line 1554
    const/4 v0, 0x0

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1555
    const/4 v0, 0x0

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1556
    neg-int v0, v9

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1557
    neg-int v0, v10

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1558
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    add-int/2addr v4, v0

    .line 1549
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1560
    :cond_0
    return v4
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʕ()V

    return-void
.end method

.method static synthetic ˊ(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Landroid/support/v7/widget/Toolbar;->ˆ(Z)V

    return-void
.end method

.method private ˊ(Ljava/util/List;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;I)V"
        }
    .end annotation

    .line 1641
    invoke-static {p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1642
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v3

    .line 1643
    invoke-static {p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Lo/৲;->getAbsoluteGravity(II)I

    move-result v4

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1648
    if-eqz v2, :cond_3

    .line 1649
    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_2

    .line 1650
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1651
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v7, v0

    .line 1652
    iget v0, v7, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    if-nez v0, :cond_1

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v7, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->וֹ(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1654
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1649
    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    goto :goto_3

    .line 1658
    :cond_3
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_5

    .line 1659
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1660
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v7, v0

    .line 1661
    iget v0, v7, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    if-nez v0, :cond_4

    invoke-direct {p0, v6}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, v7, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->וֹ(I)I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1663
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1658
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1667
    :cond_5
    :goto_3
    return-void
.end method

.method private ˋ(Landroid/view/View;I[II)I
    .locals 6

    .line 1578
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v2, v0

    .line 1579
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->rightMargin:I

    const/4 v1, 0x1

    aget v1, p3, v1

    sub-int v3, v0, v1

    .line 1580
    const/4 v0, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr p2, v0

    .line 1581
    neg-int v0, v3

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 1582
    invoke-direct {p0, p1, p4}, Landroid/support/v7/widget/Toolbar;->ˌ(Landroid/view/View;I)I

    move-result v4

    .line 1583
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 1584
    sub-int v0, p2, v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, v4, p2, v1}, Landroid/view/View;->layout(IIII)V

    .line 1585
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->leftMargin:I

    add-int/2addr v0, v5

    sub-int/2addr p2, v0

    .line 1586
    return p2
.end method

.method static synthetic ˋ(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;
    .locals 1

    .line 107
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    return-object v0
.end method

.method private ˋ(Landroid/view/View;IIIII)V
    .locals 7

    .line 1130
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object v2, v0

    .line 1132
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v3

    .line 1135
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/2addr v0, p5

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result v4

    .line 1139
    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 1140
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v0, :cond_1

    if-ltz p6, :cond_1

    .line 1141
    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, p6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, p6

    .line 1144
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1146
    :cond_1
    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1147
    return-void
.end method

.method private ˌ(Landroid/view/View;I)I
    .locals 11

    .line 1590
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v2, v0

    .line 1591
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1592
    if-lez p2, :cond_0

    sub-int v0, v3, p2

    div-int/lit8 v4, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1593
    :goto_0
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->gravity:I

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->וּ(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    .line 1595
    :sswitch_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    sub-int/2addr v0, v4

    return v0

    .line 1598
    :sswitch_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    iget v1, v2, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    return v0

    .line 1603
    :goto_1
    :sswitch_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v5

    .line 1604
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v6

    .line 1605
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v7

    .line 1606
    sub-int v0, v7, v5

    sub-int v8, v0, v6

    .line 1607
    sub-int v0, v8, v3

    div-int/lit8 v9, v0, 0x2

    .line 1608
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    if-ge v9, v0, :cond_1

    .line 1609
    iget v9, v2, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    goto :goto_2

    .line 1611
    :cond_1
    sub-int v0, v7, v6

    sub-int/2addr v0, v3

    sub-int/2addr v0, v9

    sub-int v10, v0, v5

    .line 1613
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    if-ge v10, v0, :cond_2

    .line 1614
    iget v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    sub-int/2addr v0, v10

    sub-int v0, v9, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1617
    :cond_2
    :goto_2
    add-int v0, v5, v9

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method static synthetic ˎ(Landroid/support/v7/widget/Toolbar;)I
    .locals 1

    .line 107
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dp:I

    return v0
.end method

.method private τ()I
    .locals 2

    .line 1784
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 1786
    invoke-static {p0}, Lo/ﺑ;->ᐨ(Landroid/view/View;)I

    move-result v0

    return v0

    .line 1789
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dK:I

    return v0
.end method

.method private וּ(I)I
    .locals 3

    .line 1622
    and-int/lit8 v2, p1, 0x70

    .line 1623
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1627
    :sswitch_0
    return v2

    .line 1629
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->ᒰ:I

    and-int/lit8 v0, v0, 0x70

    return v0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private וֹ(I)I
    .locals 4

    .line 1670
    invoke-static {p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v1

    .line 1671
    invoke-static {p1, v1}, Lo/৲;->getAbsoluteGravity(II)I

    move-result v2

    .line 1672
    and-int/lit8 v3, v2, 0x7

    .line 1673
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1677
    :pswitch_0
    return v3

    .line 1679
    :goto_0
    :pswitch_1
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ﹸ(Landroid/view/View;)V
    .locals 3

    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1026
    if-nez v1, :cond_0

    .line 1027
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v2

    goto :goto_0

    .line 1028
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/Toolbar;->ˏ(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v2

    goto :goto_0

    .line 1031
    :cond_1
    move-object v0, v1

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v2, v0

    .line 1033
    :goto_0
    const/4 v0, 0x1

    iput v0, v2, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    .line 1034
    invoke-virtual {p0, p1, v2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1035
    return-void
.end method

.method private ﹾ(Landroid/view/View;)Z
    .locals 2

    .line 1684
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .line 1723
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$ˊ;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public collapseActionView()V
    .locals 2

    .line 540
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    iget-object v1, v0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    .line 542
    :goto_0
    if-eqz v1, :cond_1

    .line 543
    invoke-virtual {v1}, Lo/ᵃ;->collapseActionView()Z

    .line 545
    :cond_1
    return-void
.end method

.method protected synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 107
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->ΐ()Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->ˏ(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 107
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->ˏ(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$ˊ;

    move-result-object v0

    return-object v0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .line 933
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0}, Lo/ſ;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .line 972
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0}, Lo/ſ;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .locals 1

    .line 991
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0}, Lo/ſ;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .locals 1

    .line 914
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0}, Lo/ſ;->getStart()I

    move-result v0

    return v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 712
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .line 609
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dx:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dw:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 345
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1074
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1075
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dL:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1076
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1109
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1110
    const/16 v0, 0x9

    if-ne v1, v0, :cond_0

    .line 1111
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dB:Z

    .line 1114
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dB:Z

    if-nez v0, :cond_1

    .line 1115
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1116
    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    if-nez v2, :cond_1

    .line 1117
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dB:Z

    .line 1121
    :cond_1
    const/16 v0, 0xa

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 1122
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dB:Z

    .line 1125
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 31

    .line 1330
    invoke-static/range {p0 .. p0}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1331
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getWidth()I

    move-result v6

    .line 1332
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v7

    .line 1333
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v8

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v9

    .line 1335
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v10

    .line 1336
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v11

    .line 1337
    move v12, v8

    .line 1338
    sub-int v13, v6, v9

    .line 1340
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/widget/Toolbar;->dD:[I

    .line 1341
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, v14, v1

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1344
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->τ()I

    move-result v15

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1347
    if-eqz v5, :cond_1

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_1

    .line 1351
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    .line 1356
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1357
    if-eqz v5, :cond_3

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_2

    .line 1361
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    .line 1366
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1367
    if-eqz v5, :cond_5

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    goto :goto_3

    .line 1371
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    .line 1376
    :cond_6
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v0

    sub-int/2addr v0, v12

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1377
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v0

    sub-int v1, v6, v9

    sub-int/2addr v1, v13

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v14, v1

    .line 1378
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetLeft()I

    move-result v0

    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1379
    sub-int v0, v6, v9

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1382
    if-eqz v5, :cond_7

    .line 1383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_4

    .line 1386
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    .line 1391
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1392
    if-eqz v5, :cond_9

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    goto :goto_5

    .line 1396
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    .line 1401
    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v16

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v17

    .line 1403
    const/16 v18, 0x0

    .line 1404
    if-eqz v16, :cond_b

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v19, v0

    .line 1406
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, v19

    iget v1, v1, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    add-int/lit8 v18, v0, 0x0

    .line 1408
    :cond_b
    if-eqz v17, :cond_c

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v19, v0

    .line 1410
    move-object/from16 v0, v19

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    move-object/from16 v1, v19

    iget v1, v1, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int/2addr v0, v1

    add-int v18, v18, v0

    .line 1413
    :cond_c
    if-nez v16, :cond_d

    if-eqz v17, :cond_1d

    .line 1415
    :cond_d
    if-eqz v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v20, v0

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move-object/from16 v20, v0

    .line 1416
    :goto_6
    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move-object/from16 v21, v0

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v21, v0

    .line 1417
    :goto_7
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v22, v0

    .line 1418
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v23, v0

    .line 1419
    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-gtz v0, :cond_11

    :cond_10
    if-eqz v17, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_12

    :cond_11
    const/16 v24, 0x1

    goto :goto_8

    :cond_12
    const/16 v24, 0x0

    .line 1422
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->ᒰ:I

    and-int/lit8 v0, v0, 0x70

    sparse-switch v0, :sswitch_data_0

    goto :goto_9

    .line 1424
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    move-object/from16 v1, v22

    iget v1, v1, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    add-int/2addr v0, v1

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->dt:I

    add-int v19, v0, v1

    .line 1425
    goto/16 :goto_b

    .line 1428
    :goto_9
    :sswitch_1
    sub-int v0, v7, v10

    sub-int v25, v0, v11

    .line 1429
    sub-int v0, v25, v18

    div-int/lit8 v26, v0, 0x2

    .line 1430
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->dt:I

    add-int/2addr v0, v1

    move/from16 v1, v26

    if-ge v1, v0, :cond_13

    .line 1431
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->dt:I

    add-int v26, v0, v1

    goto :goto_a

    .line 1433
    :cond_13
    sub-int v0, v7, v11

    sub-int v0, v0, v18

    sub-int v0, v0, v26

    sub-int v27, v0, v10

    .line 1435
    move-object/from16 v0, v22

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->du:I

    add-int/2addr v0, v1

    move/from16 v1, v27

    if-ge v1, v0, :cond_14

    .line 1436
    move-object/from16 v0, v23

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->du:I

    add-int/2addr v0, v1

    sub-int v0, v0, v27

    sub-int v0, v26, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 1440
    :cond_14
    :goto_a
    add-int v19, v10, v26

    .line 1441
    goto :goto_b

    .line 1443
    :sswitch_2
    sub-int v0, v7, v11

    move-object/from16 v1, v23

    iget v1, v1, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    sub-int/2addr v0, v1

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->du:I

    sub-int/2addr v0, v1

    sub-int v19, v0, v18

    .line 1447
    :goto_b
    if-eqz v5, :cond_19

    .line 1448
    if-eqz v24, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->dr:I

    goto :goto_c

    :cond_15
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x1

    aget v1, v14, v1

    sub-int v25, v0, v1

    .line 1449
    const/4 v0, 0x0

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v13, v0

    .line 1450
    move/from16 v0, v25

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v14, v1

    .line 1451
    move/from16 v26, v13

    .line 1452
    move/from16 v27, v13

    .line 1454
    if-eqz v16, :cond_16

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v28, v0

    .line 1456
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v29, v26, v0

    .line 1457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v30, v19, v0

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move/from16 v1, v29

    move/from16 v2, v19

    move/from16 v3, v26

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->ds:I

    sub-int v26, v29, v0

    .line 1460
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int v19, v30, v0

    .line 1462
    :cond_16
    if-eqz v17, :cond_17

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v28, v0

    .line 1464
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    add-int v19, v19, v0

    .line 1465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int v29, v27, v0

    .line 1466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v30, v19, v0

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move/from16 v1, v29

    move/from16 v2, v19

    move/from16 v3, v27

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1468
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->ds:I

    sub-int v27, v27, v0

    .line 1469
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int v19, v30, v0

    .line 1471
    :cond_17
    if-eqz v24, :cond_18

    .line 1472
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1474
    :cond_18
    goto/16 :goto_e

    .line 1475
    :cond_19
    if-eqz v24, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->dr:I

    goto :goto_d

    :cond_1a
    const/4 v0, 0x0

    :goto_d
    const/4 v1, 0x0

    aget v1, v14, v1

    sub-int v25, v0, v1

    .line 1476
    const/4 v0, 0x0

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v12, v0

    .line 1477
    move/from16 v0, v25

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    aput v0, v14, v1

    .line 1478
    move/from16 v26, v12

    .line 1479
    move/from16 v27, v12

    .line 1481
    if-eqz v16, :cond_1b

    .line 1482
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v28, v0

    .line 1483
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int v29, v26, v0

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v30, v19, v0

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move/from16 v1, v26

    move/from16 v2, v19

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1486
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->ds:I

    add-int v26, v29, v0

    .line 1487
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int v19, v30, v0

    .line 1489
    :cond_1b
    if-eqz v17, :cond_1c

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v28, v0

    .line 1491
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->topMargin:I

    add-int v19, v19, v0

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    add-int v29, v27, v0

    .line 1493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    add-int v30, v19, v0

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move/from16 v1, v27

    move/from16 v2, v19

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1495
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->ds:I

    add-int v27, v29, v0

    .line 1496
    move-object/from16 v0, v28

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->bottomMargin:I

    add-int v19, v30, v0

    .line 1498
    :cond_1c
    if-eqz v24, :cond_1d

    .line 1499
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1507
    :cond_1d
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->ˊ(Ljava/util/List;I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 1509
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    move/from16 v1, v19

    if-ge v0, v1, :cond_1e

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v12, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v12

    .line 1509
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 1514
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x5

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->ˊ(Ljava/util/List;I)V

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1516
    const/16 v21, 0x0

    :goto_10
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v13, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;I[II)I

    move-result v13

    .line 1516
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1523
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/support/v7/widget/Toolbar;->ˊ(Ljava/util/List;I)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    invoke-direct {v1, v0, v14}, Landroid/support/v7/widget/Toolbar;->ˊ(Ljava/util/List;[I)I

    move-result v21

    .line 1525
    sub-int v0, v6, v8

    sub-int/2addr v0, v9

    div-int/lit8 v0, v0, 0x2

    add-int v22, v8, v0

    .line 1526
    div-int/lit8 v23, v21, 0x2

    .line 1527
    sub-int v24, v22, v23

    .line 1528
    add-int v25, v24, v21

    .line 1529
    move/from16 v0, v24

    if-ge v0, v12, :cond_20

    .line 1530
    move/from16 v24, v12

    goto :goto_11

    .line 1531
    :cond_20
    move/from16 v0, v25

    if-le v0, v13, :cond_21

    .line 1532
    sub-int v0, v25, v13

    sub-int v24, v24, v0

    .line 1535
    :cond_21
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 1536
    const/16 v27, 0x0

    :goto_12
    move/from16 v0, v27

    move/from16 v1, v26

    if-ge v0, v1, :cond_22

    .line 1537
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-direct {v1, v0, v2, v14, v15}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;I[II)I

    move-result v24

    .line 1536
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 1541
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1542
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24

    .line 1194
    const/4 v7, 0x0

    .line 1195
    const/4 v8, 0x0

    .line 1196
    const/4 v9, 0x0

    .line 1198
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/Toolbar;->dD:[I

    .line 1201
    invoke-static/range {p0 .. p0}, Lo/ᓯ;->ᐩ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    const/4 v11, 0x1

    .line 1203
    const/4 v12, 0x0

    goto :goto_0

    .line 1205
    :cond_0
    const/4 v11, 0x0

    .line 1206
    const/4 v12, 0x1

    .line 1211
    :goto_0
    const/4 v13, 0x0

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->dq:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;IIIII)V

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ɩ(Landroid/view/View;)I

    move-result v1

    add-int v13, v0, v1

    .line 1216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1218
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1222
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1223
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->dq:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;IIIII)V

    .line 1225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ɩ(Landroid/view/View;)I

    move-result v1

    add-int v13, v0, v1

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dk:Landroid/widget/ImageButton;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1233
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetStart()I

    move-result v14

    .line 1234
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v7, v0, 0x0

    .line 1235
    sub-int v0, v14, v13

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v11

    .line 1237
    const/4 v15, 0x0

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1239
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object/from16 v5, p0

    iget v6, v5, Landroid/support/v7/widget/Toolbar;->dq:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˋ(Landroid/view/View;IIIII)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ɩ(Landroid/view/View;)I

    move-result v1

    add-int v15, v0, v1

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1248
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v16

    .line 1249
    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v7, v0

    .line 1250
    sub-int v0, v16, v15

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v10, v12

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1253
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dl:Landroid/view/View;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1261
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1262
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1270
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v17

    .line 1271
    const/16 v18, 0x0

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    .line 1272
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    .line 1273
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object/from16 v20, v0

    .line 1274
    move-object/from16 v0, v20

    iget v0, v0, Landroid/support/v7/widget/Toolbar$ˊ;->dO:I

    if-nez v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1276
    goto :goto_2

    .line 1279
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, p1

    move v3, v7

    move/from16 v4, p2

    move-object v6, v10

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v7, v0

    .line 1281
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1282
    invoke-static/range {v19 .. v19}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1271
    :cond_7
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1286
    :cond_8
    const/16 v18, 0x0

    .line 1287
    const/16 v19, 0x0

    .line 1288
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->dt:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->du:I

    add-int v20, v0, v1

    .line 1289
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/Toolbar;->dr:I

    move-object/from16 v1, p0

    iget v1, v1, Landroid/support/v7/widget/Toolbar;->ds:I

    add-int v21, v0, v1

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move/from16 v2, p1

    add-int v3, v7, v21

    move/from16 v4, p2

    move/from16 v5, v20

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;IIII[I)I

    move-result v18

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ɩ(Landroid/view/View;)I

    move-result v1

    add-int v18, v0, v1

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int v19, v0, v1

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1299
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move-object/from16 v1, p0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar;->ﹾ(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1300
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move/from16 v2, p1

    add-int v3, v7, v21

    move/from16 v4, p2

    add-int v5, v19, v20

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/Toolbar;->ˊ(Landroid/view/View;IIII[I)I

    move-result v0

    move/from16 v1, v18

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, p0

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    move-object/from16 v2, p0

    invoke-direct {v2, v1}, Landroid/support/v7/widget/Toolbar;->ʵ(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v19, v19, v0

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-static {v0}, Lo/ﺑ;->ˍ(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lo/ᓯ;->combineMeasuredStates(II)I

    move-result v9

    .line 1310
    :cond_a
    add-int v7, v7, v18

    .line 1311
    move/from16 v0, v19

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1315
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingLeft()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v7, v0

    .line 1316
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v8, v0

    .line 1318
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, -0x1000000

    and-int/2addr v1, v9

    move/from16 v2, p1

    invoke-static {v0, v2, v1}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v22

    .line 1321
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v1, v9, 0x10

    move/from16 v2, p2

    invoke-static {v0, v2, v1}, Lo/ﺑ;->resolveSizeAndState(III)I

    move-result v23

    .line 1325
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/Toolbar;->ʷ()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_3

    :cond_b
    move/from16 v0, v23

    :goto_3
    move-object/from16 v1, p0

    move/from16 v2, v22

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/Toolbar;->setMeasuredDimension(II)V

    .line 1326
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1051
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/Toolbar$SavedState;

    move-object v1, v0

    .line 1052
    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1054
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->ﭜ()Lo/ᵁ;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1055
    :goto_0
    iget v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->dP:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 1056
    iget v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->dP:I

    invoke-interface {v2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1057
    if-eqz v3, :cond_1

    .line 1058
    invoke-static {v3}, Lo/ᵄ;->ˎ(Landroid/view/MenuItem;)Z

    .line 1062
    :cond_1
    iget-boolean v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->dQ:Z

    if-eqz v0, :cond_2

    .line 1063
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʖ()V

    .line 1065
    :cond_2
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 315
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lo/ſ;->ᴵ(Z)V

    .line 318
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1039
    new-instance v1, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1041
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar$if;->dN:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->getItemId()I

    move-result v0

    iput v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->dP:I

    .line 1045
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->isOverflowMenuShowing()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/Toolbar$SavedState;->dQ:Z

    .line 1046
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1085
    invoke-static {p1}, Lo/ᵧ;->ˊ(Landroid/view/MotionEvent;)I

    move-result v1

    .line 1086
    if-nez v1, :cond_0

    .line 1087
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dA:Z

    .line 1090
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dA:Z

    if-nez v0, :cond_1

    .line 1091
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1092
    if-nez v1, :cond_1

    if-nez v2, :cond_1

    .line 1093
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dA:Z

    .line 1097
    :cond_1
    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-ne v1, v0, :cond_3

    .line 1098
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar;->dA:Z

    .line 1101
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 1762
    iput-boolean p1, p0, Landroid/support/v7/widget/Toolbar;->dJ:Z

    .line 1763
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 1764
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1

    .line 953
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0, p1, p2}, Lo/ſ;->ᐧ(II)V

    .line 954
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1

    .line 895
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dv:Lo/ſ;

    invoke-virtual {v0, p1, p2}, Lo/ſ;->ـ(II)V

    .line 896
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 446
    if-eqz p1, :cond_0

    .line 447
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ɻ()V

    .line 448
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ﹸ(Landroid/view/View;)V

    .line 450
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ʸ(Landroid/view/View;)V

    goto :goto_0

    .line 452
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 455
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    .line 480
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 481
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 492
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ɻ()V

    .line 495
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dh:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 498
    :cond_1
    return-void
.end method

.method public setMenu(Lo/ᵁ;Lo/ᓴ;)V
    .locals 4

    .line 373
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-nez v0, :cond_0

    .line 374
    return-void

    .line 377
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʏ()V

    .line 378
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->ﭜ()Lo/ᵁ;

    move-result-object v3

    .line 379
    if-ne v3, p1, :cond_1

    .line 380
    return-void

    .line 383
    :cond_1
    if-eqz v3, :cond_2

    .line 384
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dH:Lo/ᓴ;

    invoke-virtual {v3, v0}, Lo/ᵁ;->ˊ(Lo/ᵉ;)V

    .line 385
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    invoke-virtual {v3, v0}, Lo/ᵁ;->ˊ(Lo/ᵉ;)V

    .line 388
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    if-nez v0, :cond_3

    .line 389
    new-instance v0, Landroid/support/v7/widget/Toolbar$if;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/Toolbar$if;-><init>(Landroid/support/v7/widget/Toolbar;Lo/כ;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    .line 392
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/ᓴ;->setExpandedActionViewsExclusive(Z)V

    .line 393
    if-eqz p1, :cond_4

    .line 394
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    invoke-virtual {p1, p2, v0}, Lo/ᵁ;->ˊ(Lo/ᵉ;Landroid/content/Context;)V

    .line 395
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lo/ᵁ;->ˊ(Lo/ᵉ;Landroid/content/Context;)V

    goto :goto_0

    .line 397
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lo/ᓴ;->ˊ(Landroid/content/Context;Lo/ᵁ;)V

    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    iget-object v1, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$if;->ˊ(Landroid/content/Context;Lo/ᵁ;)V

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lo/ᓴ;->ˈ(Z)V

    .line 400
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dI:Landroid/support/v7/widget/Toolbar$if;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar$if;->ˈ(Z)V

    .line 402
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->Ť:I

    invoke-virtual {v0, v1}, Lo/ᖦ;->setPopupTheme(I)V

    .line 403
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0, p2}, Lo/ᖦ;->setPresenter(Lo/ᓴ;)V

    .line 404
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->dH:Lo/ᓴ;

    .line 405
    return-void
.end method

.method public setMenuCallbacks(Lo/ᵉ$if;Lo/ᵁ$if;)V
    .locals 0

    .line 1771
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->ƈ:Lo/ᵉ$if;

    .line 1772
    iput-object p2, p0, Landroid/support/v7/widget/Toolbar;->ȝ:Lo/ᵁ$if;

    .line 1773
    return-void
.end method

.method public setMinimumHeight(I)V
    .locals 0

    .line 1778
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->dK:I

    .line 1780
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 1781
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .line 724
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 725
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    .line 736
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 737
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʔ()V

    .line 739
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 740
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 742
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    .line 757
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 758
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 773
    if-eqz p1, :cond_0

    .line 774
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʔ()V

    .line 775
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 776
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ﹸ(Landroid/view/View;)V

    .line 777
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ʸ(Landroid/view/View;)V

    goto :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 782
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 785
    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 807
    invoke-direct {p0}, Landroid/support/v7/widget/Toolbar;->ʔ()V

    .line 808
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dg:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/Toolbar$ˋ;)V
    .locals 0

    .line 875
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->dE:Landroid/support/v7/widget/Toolbar$ˋ;

    .line 876
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    .line 294
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->Ť:I

    if-eq v0, p1, :cond_1

    .line 295
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->Ť:I

    .line 296
    if-nez p1, :cond_0

    .line 297
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    goto :goto_0

    .line 299
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἴ:Landroid/content/Context;

    .line 302
    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 621
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 631
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 632
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 634
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    .line 635
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 636
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 637
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->do:I

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->do:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 640
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dz:I

    if-eqz v0, :cond_1

    .line 641
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->dz:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 645
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ﹸ(Landroid/view/View;)V

    .line 646
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ʸ(Landroid/view/View;)V

    goto :goto_0

    .line 648
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 649
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 651
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 652
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->dx:Ljava/lang/CharSequence;

    .line 655
    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 673
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->do:I

    .line 674
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 677
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1

    .line 697
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->dz:I

    .line 698
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->df:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 701
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 565
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 566
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 578
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 579
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 580
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    .line 581
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 582
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 583
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dm:I

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->dm:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 586
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/Toolbar;->dy:I

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/widget/Toolbar;->dy:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 590
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 591
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ﹸ(Landroid/view/View;)V

    .line 592
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/Toolbar;->ʸ(Landroid/view/View;)V

    goto :goto_0

    .line 594
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 597
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 598
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/Toolbar;->dw:Ljava/lang/CharSequence;

    .line 601
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1

    .line 662
    iput p2, p0, Landroid/support/v7/widget/Toolbar;->dm:I

    .line 663
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 666
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1

    .line 685
    iput p1, p0, Landroid/support/v7/widget/Toolbar;->dy:I

    .line 686
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 687
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->de:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 359
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->Ἵ:Lo/ᖦ;

    invoke-virtual {v0}, Lo/ᖦ;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ˏ(Landroid/util/AttributeSet;)Landroid/support/v7/widget/Toolbar$ˊ;
    .locals 2

    .line 1700
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected ˏ(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/Toolbar$ˊ;
    .locals 2

    .line 1705
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar$ˊ;

    if-eqz v0, :cond_0

    .line 1706
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v1, p1

    check-cast v1, Landroid/support/v7/widget/Toolbar$ˊ;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(Landroid/support/v7/widget/Toolbar$ˊ;)V

    return-object v0

    .line 1707
    :cond_0
    instance-of v0, p1, Lo/ذ$if;

    if-eqz v0, :cond_1

    .line 1708
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v1, p1

    check-cast v1, Lo/ذ$if;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(Lo/ذ$if;)V

    return-object v0

    .line 1709
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 1710
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1712
    :cond_2
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected ΐ()Landroid/support/v7/widget/Toolbar$ˊ;
    .locals 3

    .line 1718
    new-instance v0, Landroid/support/v7/widget/Toolbar$ˊ;

    const/4 v1, -0x2

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/Toolbar$ˊ;-><init>(II)V

    return-object v0
.end method

.method public Γ()Lo/ﻴ;
    .locals 2

    .line 1732
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dG:Lo/ᐞ;

    if-nez v0, :cond_0

    .line 1733
    new-instance v0, Lo/ᐞ;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lo/ᐞ;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v0, p0, Landroid/support/v7/widget/Toolbar;->dG:Lo/ᐞ;

    .line 1735
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/Toolbar;->dG:Lo/ᐞ;

    return-object v0
.end method
