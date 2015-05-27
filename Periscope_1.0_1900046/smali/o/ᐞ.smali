.class public Lo/ᐞ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ﻴ;


# instance fields
.field private ε:Ljava/lang/CharSequence;

.field private ν:Landroid/view/View;

.field private final ᒴ:Lo/ฯ;

.field private ḹ:Ljava/lang/CharSequence;

.field private Ἶ:Landroid/support/v7/widget/Toolbar;

.field private Ἷ:I

.field private ℷ:Landroid/graphics/drawable/Drawable;

.field private ⅈ:Lo/ᓴ;

.field private Ⅱ:Landroid/graphics/drawable/Drawable;

.field private ⅱ:Z

.field private 々:Ljava/lang/CharSequence;

.field private 〱:Landroid/graphics/drawable/Drawable;

.field private ぃ:Landroid/view/Window$Callback;

.field private ァ:Z

.field private ッ:I

.field private ヾ:I

.field private 乀:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 2

    .line 87
    sget v0, Lo/ڊ$ʻ;->abc_action_bar_up_description:I

    sget v1, Lo/ڊ$ˎ;->abc_ic_ab_back_mtrl_am_alpha:I

    invoke-direct {p0, p1, p2, v0, v1}, Lo/ᐞ;-><init>(Landroid/support/v7/widget/Toolbar;ZII)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;ZII)V
    .locals 18

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᐞ;->ッ:I

    .line 83
    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᐞ;->ヾ:I

    .line 93
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    .line 94
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->ḹ:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->ε:Ljava/lang/CharSequence;

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->ḹ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object/from16 v1, p0

    iput-boolean v0, v1, Lo/ᐞ;->ⅱ:Z

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->Ⅱ:Landroid/graphics/drawable/Drawable;

    .line 99
    if-eqz p2, :cond_d

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lo/ڊ$ʽ;->ActionBar:[I

    sget v2, Lo/ڊ$if;->actionBarStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v2, v4}, Lo/ๅ;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lo/ๅ;

    move-result-object v5

    .line 103
    sget v0, Lo/ڊ$ʽ;->ActionBar_title:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 104
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lo/ᐞ;->setTitle(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    sget v0, Lo/ڊ$ʽ;->ActionBar_subtitle:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 109
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lo/ᐞ;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 113
    :cond_2
    sget v0, Lo/ڊ$ʽ;->ActionBar_logo:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 114
    if-eqz v8, :cond_3

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lo/ᐞ;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_3
    sget v0, Lo/ڊ$ʽ;->ActionBar_icon:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ⅱ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    if-eqz v9, :cond_4

    .line 120
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lo/ᐞ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 123
    :cond_4
    sget v0, Lo/ڊ$ʽ;->ActionBar_homeAsUpIndicator:I

    invoke-virtual {v5, v0}, Lo/ๅ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 124
    if-eqz v10, :cond_5

    .line 125
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lo/ᐞ;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    :cond_5
    sget v0, Lo/ڊ$ʽ;->ActionBar_displayOptions:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getInt(II)I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᐞ;->setDisplayOptions(I)V

    .line 130
    sget v0, Lo/ڊ$ʽ;->ActionBar_customNavigationLayout:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v11

    .line 132
    if-eqz v11, :cond_6

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᐞ;->setCustomView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lo/ᐞ;->Ἷ:I

    or-int/lit8 v0, v0, 0x10

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᐞ;->setDisplayOptions(I)V

    .line 138
    :cond_6
    sget v0, Lo/ڊ$ʽ;->ActionBar_height:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getLayoutDimension(II)I

    move-result v12

    .line 139
    if-lez v12, :cond_7

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    .line 141
    iput v12, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    :cond_7
    sget v0, Lo/ڊ$ʽ;->ActionBar_contentInsetStart:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v13

    .line 147
    sget v0, Lo/ڊ$ʽ;->ActionBar_contentInsetEnd:I

    const/4 v1, -0x1

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getDimensionPixelOffset(II)I

    move-result v14

    .line 149
    if-gez v13, :cond_8

    if-ltz v14, :cond_9

    .line 150
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 154
    :cond_9
    sget v0, Lo/ڊ$ʽ;->ActionBar_titleTextStyle:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v15

    .line 155
    if-eqz v15, :cond_a

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v15}, Landroid/support/v7/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 159
    :cond_a
    sget v0, Lo/ڊ$ʽ;->ActionBar_subtitleTextStyle:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v16

    .line 161
    if-eqz v16, :cond_b

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    move-object/from16 v1, p0

    iget-object v1, v1, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 165
    :cond_b
    sget v0, Lo/ڊ$ʽ;->ActionBar_popupTheme:I

    const/4 v1, 0x0

    invoke-virtual {v5, v0, v1}, Lo/ๅ;->getResourceId(II)I

    move-result v17

    .line 166
    if-eqz v17, :cond_c

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setPopupTheme(I)V

    .line 170
    :cond_c
    invoke-virtual {v5}, Lo/ๅ;->recycle()V

    .line 172
    invoke-virtual {v5}, Lo/ๅ;->ゝ()Lo/ฯ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->ᒴ:Lo/ฯ;

    .line 173
    goto :goto_1

    .line 174
    :cond_d
    invoke-direct/range {p0 .. p0}, Lo/ᐞ;->ー()I

    move-result v0

    move-object/from16 v1, p0

    iput v0, v1, Lo/ᐞ;->Ἷ:I

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ฯ;->ʻ(Landroid/content/Context;)Lo/ฯ;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->ᒴ:Lo/ฯ;

    .line 179
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lo/ᐞ;->ו(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lo/ᐞ;->々:Ljava/lang/CharSequence;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->ᒴ:Lo/ฯ;

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lo/ᐞ;->ʽ(Landroid/graphics/drawable/Drawable;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    new-instance v1, Lo/ᓐ;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lo/ᓐ;-><init>(Lo/ᐞ;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private ʽ(Ljava/lang/CharSequence;)V
    .locals 2

    .line 283
    iput-object p1, p0, Lo/ᐞ;->ḹ:Ljava/lang/CharSequence;

    .line 284
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 287
    :cond_0
    return-void
.end method

.method static synthetic ˊ(Lo/ᐞ;)Landroid/support/v7/widget/Toolbar;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᐞ;)Ljava/lang/CharSequence;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ᐞ;->ḹ:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᐞ;)Landroid/view/Window$Callback;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ᐞ;->ぃ:Landroid/view/Window$Callback;

    return-object v0
.end method

.method static synthetic ˏ(Lo/ᐞ;)Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lo/ᐞ;->ァ:Z

    return v0
.end method

.method private ー()I
    .locals 2

    .line 225
    const/16 v1, 0xb

    .line 227
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 228
    const/16 v1, 0xf

    .line 230
    :cond_0
    return v1
.end method

.method private ヽ()V
    .locals 3

    .line 366
    const/4 v2, 0x0

    .line 367
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 368
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lo/ᐞ;->ℷ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lo/ᐞ;->ℷ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lo/ᐞ;->〱:Landroid/graphics/drawable/Drawable;

    :goto_0
    goto :goto_1

    .line 371
    :cond_1
    iget-object v2, p0, Lo/ᐞ;->〱:Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_2
    :goto_1
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 375
    return-void
.end method

.method private 一()V
    .locals 2

    .line 654
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 655
    iget-object v0, p0, Lo/ᐞ;->々:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget v1, p0, Lo/ᐞ;->ヾ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V

    goto :goto_0

    .line 658
    :cond_0
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->々:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 661
    :cond_1
    :goto_0
    return-void
.end method

.method private גּ()V
    .locals 2

    .line 664
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->Ⅱ:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ᐞ;->Ⅱ:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lo/ᐞ;->乀:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_1
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 240
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2

    .line 586
    iget-object v0, p0, Lo/ᐞ;->ν:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ν:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 589
    :cond_0
    iput-object p1, p0, Lo/ᐞ;->ν:Landroid/view/View;

    .line 590
    if-eqz p1, :cond_1

    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ν:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 593
    :cond_1
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4

    .line 429
    iget v2, p0, Lo/ᐞ;->Ἷ:I

    .line 430
    xor-int v3, v2, p1

    .line 431
    iput p1, p0, Lo/ᐞ;->Ἷ:I

    .line 432
    if-eqz v3, :cond_6

    .line 433
    and-int/lit8 v0, v3, 0x4

    if-eqz v0, :cond_1

    .line 434
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 435
    invoke-direct {p0}, Lo/ᐞ;->גּ()V

    .line 436
    invoke-direct {p0}, Lo/ᐞ;->一()V

    goto :goto_0

    .line 438
    :cond_0
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 442
    :cond_1
    :goto_0
    and-int/lit8 v0, v3, 0x3

    if-eqz v0, :cond_2

    .line 443
    invoke-direct {p0}, Lo/ᐞ;->ヽ()V

    .line 446
    :cond_2
    and-int/lit8 v0, v3, 0x8

    if-eqz v0, :cond_4

    .line 447
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ḹ:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 449
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ε:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 451
    :cond_3
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 456
    :cond_4
    :goto_1
    and-int/lit8 v0, v3, 0x10

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/ᐞ;->ν:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 457
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    .line 458
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ν:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 460
    :cond_5
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lo/ᐞ;->ν:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 464
    :cond_6
    :goto_2
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .line 345
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ᐞ;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᐞ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 346
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lo/ᐞ;->〱:Landroid/graphics/drawable/Drawable;

    .line 351
    invoke-direct {p0}, Lo/ᐞ;->ヽ()V

    .line 352
    return-void
.end method

.method public setLogo(I)V
    .locals 1

    .line 356
    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/ᐞ;->ᒴ:Lo/ฯ;

    invoke-virtual {v0, p1}, Lo/ฯ;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᐞ;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 357
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lo/ᐞ;->ℷ:Landroid/graphics/drawable/Drawable;

    .line 362
    invoke-direct {p0}, Lo/ᐞ;->ヽ()V

    .line 363
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lo/ᵉ$if;)V
    .locals 3

    .line 409
    iget-object v0, p0, Lo/ᐞ;->ⅈ:Lo/ᓴ;

    if-nez v0, :cond_0

    .line 410
    new-instance v0, Lo/ᓴ;

    iget-object v1, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ᓴ;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/ᐞ;->ⅈ:Lo/ᓴ;

    .line 411
    iget-object v0, p0, Lo/ᐞ;->ⅈ:Lo/ᓴ;

    sget v1, Lo/ڊ$ˏ;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lo/ᓴ;->setId(I)V

    .line 413
    :cond_0
    iget-object v0, p0, Lo/ᐞ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0, p2}, Lo/ᓴ;->ˊ(Lo/ᵉ$if;)V

    .line 414
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    move-object v1, p1

    check-cast v1, Lo/ᵁ;

    iget-object v2, p0, Lo/ᐞ;->ⅈ:Lo/ᓴ;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setMenu(Lo/ᵁ;Lo/ᓴ;)V

    .line 415
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .line 404
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᐞ;->ァ:Z

    .line 405
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    .line 650
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/ᐞ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᐞ;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 651
    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lo/ᐞ;->々:Ljava/lang/CharSequence;

    .line 645
    invoke-direct {p0}, Lo/ᐞ;->一()V

    .line 646
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lo/ᐞ;->Ⅱ:Landroid/graphics/drawable/Drawable;

    .line 632
    invoke-direct {p0}, Lo/ᐞ;->גּ()V

    .line 633
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    .line 296
    iput-object p1, p0, Lo/ᐞ;->ε:Ljava/lang/CharSequence;

    .line 297
    iget v0, p0, Lo/ᐞ;->Ἷ:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 300
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᐞ;->ⅱ:Z

    .line 279
    invoke-direct {p0, p1}, Lo/ᐞ;->ʽ(Ljava/lang/CharSequence;)V

    .line 280
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lo/ᐞ;->ぃ:Landroid/view/Window$Callback;

    .line 261
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lo/ᐞ;->ⅱ:Z

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0, p1}, Lo/ᐞ;->ʽ(Ljava/lang/CharSequence;)V

    .line 269
    :cond_0
    return-void
.end method

.method public ʽ(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/ᐞ;->乀:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 219
    iput-object p1, p0, Lo/ᐞ;->乀:Landroid/graphics/drawable/Drawable;

    .line 220
    invoke-direct {p0}, Lo/ᐞ;->גּ()V

    .line 222
    :cond_0
    return-void
.end method

.method public ו(I)V
    .locals 1

    .line 207
    iget v0, p0, Lo/ᐞ;->ヾ:I

    if-ne p1, v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iput p1, p0, Lo/ᐞ;->ヾ:I

    .line 211
    iget-object v0, p0, Lo/ᐞ;->Ἶ:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget v0, p0, Lo/ᐞ;->ヾ:I

    invoke-virtual {p0, v0}, Lo/ᐞ;->setNavigationContentDescription(I)V

    .line 214
    :cond_1
    return-void
.end method

.method public ᴾ()Z
    .locals 1

    .line 245
    const/4 v0, 0x0

    return v0
.end method
