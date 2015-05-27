.class public Lo/ƚ;
.super Landroid/widget/HorizontalScrollView;
.source ""

# interfaces
.implements Lo/ﹹ$ˊ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ƚ$ˎ;,
        Lo/ƚ$ˊ;,
        Lo/ƚ$if;,
        Lo/ƚ$ˋ;
    }
.end annotation


# static fields
.field private static final Ἲ:Landroid/view/animation/Interpolator;


# instance fields
.field ৰ:Ljava/lang/Runnable;

.field private ค:Lo/ƚ$ˊ;

.field private ฅ:Lo/ί;

.field private ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private ท:Z

.field ป:I

.field ผ:I

.field private ภ:I

.field protected final ล:Lo/ƚ$ˎ;

.field private ﮈ:I

.field protected ﺓ:Lo/ᵘ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lo/ƚ;->Ἲ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 78
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lo/ƚ$ˎ;

    invoke-direct {v0, p0}, Lo/ƚ$ˎ;-><init>(Lo/ƚ;)V

    iput-object v0, p0, Lo/ƚ;->ล:Lo/ƚ$ˎ;

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ƚ;->setHorizontalScrollBarEnabled(Z)V

    .line 82
    invoke-static {p1}, Lo/ᒄ;->ˏ(Landroid/content/Context;)Lo/ᒄ;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Lo/ᒄ;->ﹲ()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ƚ;->setContentHeight(I)V

    .line 84
    invoke-virtual {v4}, Lo/ᒄ;->ﹷ()I

    move-result v0

    iput v0, p0, Lo/ƚ;->ผ:I

    .line 86
    invoke-direct {p0}, Lo/ƚ;->ᵪ()Lo/ί;

    move-result-object v0

    iput-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    .line 87
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lo/ƚ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method static synthetic ˊ(Lo/ƚ;Lo/ذ$ˊ;Z)Lo/ƚ$ˋ;
    .locals 1

    .line 54
    invoke-direct {p0, p1, p2}, Lo/ƚ;->ˊ(Lo/ذ$ˊ;Z)Lo/ƚ$ˋ;

    move-result-object v0

    return-object v0
.end method

.method private ˊ(Lo/ذ$ˊ;Z)Lo/ƚ$ˋ;
    .locals 4

    .line 288
    new-instance v3, Lo/ƚ$ˋ;

    invoke-virtual {p0}, Lo/ƚ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, p0, v0, p1, p2}, Lo/ƚ$ˋ;-><init>(Lo/ƚ;Landroid/content/Context;Lo/ذ$ˊ;Z)V

    .line 289
    if-eqz p2, :cond_0

    .line 290
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/ƚ$ˋ;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    iget v1, p0, Lo/ƚ;->ﮈ:I

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lo/ƚ$ˋ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 294
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ƚ$ˋ;->setFocusable(Z)V

    .line 296
    iget-object v0, p0, Lo/ƚ;->ค:Lo/ƚ$ˊ;

    if-nez v0, :cond_1

    .line 297
    new-instance v0, Lo/ƚ$ˊ;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/ƚ$ˊ;-><init>(Lo/ƚ;Lo/Ǐ;)V

    iput-object v0, p0, Lo/ƚ;->ค:Lo/ƚ$ˊ;

    .line 299
    :cond_1
    iget-object v0, p0, Lo/ƚ;->ค:Lo/ƚ$ˊ;

    invoke-virtual {v3, v0}, Lo/ƚ$ˋ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    :goto_0
    return-object v3
.end method

.method static synthetic ˊ(Lo/ƚ;)Lo/ί;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    return-object v0
.end method

.method private ᵉ()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private ᵊ()V
    .locals 4

    .line 150
    invoke-direct {p0}, Lo/ƚ;->ᵉ()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-nez v0, :cond_1

    .line 153
    invoke-direct {p0}, Lo/ƚ;->ḯ()Landroid/support/v7/internal/widget/SpinnerCompat;

    move-result-object v0

    iput-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    .line 155
    :cond_1
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {p0, v0}, Lo/ƚ;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lo/ƚ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 159
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    new-instance v1, Lo/ƚ$if;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lo/ƚ$if;-><init>(Lo/ƚ;Lo/Ǐ;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    :cond_2
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 162
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ƚ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    .line 165
    :cond_3
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget v1, p0, Lo/ƚ;->ภ:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 166
    return-void
.end method

.method private ᵡ()Z
    .locals 4

    .line 169
    invoke-direct {p0}, Lo/ƚ;->ᵉ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 171
    :cond_0
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0, v0}, Lo/ƚ;->removeView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lo/ƚ;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ƚ;->setTabSelected(I)V

    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method private ᵪ()Lo/ί;
    .locals 4

    .line 200
    new-instance v3, Lo/ί;

    invoke-virtual {p0}, Lo/ƚ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/ڊ$if;->actionBarTabBarStyle:I

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2, v1}, Lo/ί;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lo/ί;->setMeasureWithLargestChildEnabled(Z)V

    .line 203
    const/16 v0, 0x11

    invoke-virtual {v3, v0}, Lo/ί;->setGravity(I)V

    .line 204
    new-instance v0, Lo/ί$if;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lo/ί$if;-><init>(II)V

    invoke-virtual {v3, v0}, Lo/ί;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-object v3
.end method

.method private ḯ()Landroid/support/v7/internal/widget/SpinnerCompat;
    .locals 4

    .line 210
    new-instance v3, Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {p0}, Lo/ƚ;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lo/ڊ$if;->actionDropDownStyle:I

    const/4 v2, 0x0

    invoke-direct {v3, v0, v2, v1}, Landroid/support/v7/internal/widget/SpinnerCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 212
    new-instance v0, Lo/ί$if;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lo/ί$if;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    invoke-virtual {v3, p0}, Landroid/support/v7/internal/widget/SpinnerCompat;->ˊ(Lo/ﹹ$ˊ;)V

    .line 215
    return-object v3
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .line 272
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 273
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ƚ;->post(Ljava/lang/Runnable;)Z

    .line 277
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 219
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 220
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 223
    :cond_0
    invoke-virtual {p0}, Lo/ƚ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᒄ;->ˏ(Landroid/content/Context;)Lo/ᒄ;

    move-result-object v2

    .line 226
    invoke-virtual {v2}, Lo/ᒄ;->ﹲ()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ƚ;->setContentHeight(I)V

    .line 227
    invoke-virtual {v2}, Lo/ᒄ;->ﹷ()I

    move-result v0

    iput v0, p0, Lo/ƚ;->ผ:I

    .line 228
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 281
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 282
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ƚ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 285
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 8

    .line 93
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 94
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 95
    :goto_0
    invoke-virtual {p0, v3}, Lo/ƚ;->setFillViewport(Z)V

    .line 97
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {v0}, Lo/ί;->getChildCount()I

    move-result v4

    .line 98
    const/4 v0, 0x1

    if-le v4, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne v2, v0, :cond_3

    .line 100
    :cond_1
    const/4 v0, 0x2

    if-le v4, v0, :cond_2

    .line 101
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ƚ;->ป:I

    goto :goto_1

    .line 103
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/ƚ;->ป:I

    .line 105
    :goto_1
    iget v0, p0, Lo/ƚ;->ป:I

    iget v1, p0, Lo/ƚ;->ผ:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lo/ƚ;->ป:I

    goto :goto_2

    .line 107
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lo/ƚ;->ป:I

    .line 110
    :goto_2
    iget v0, p0, Lo/ƚ;->ﮈ:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 112
    if-nez v3, :cond_4

    iget-boolean v0, p0, Lo/ƚ;->ท:Z

    if-eqz v0, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    .line 114
    :goto_3
    if-eqz v5, :cond_6

    .line 116
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lo/ί;->measure(II)V

    .line 117
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {v0}, Lo/ί;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 118
    invoke-direct {p0}, Lo/ƚ;->ᵊ()V

    goto :goto_4

    .line 120
    :cond_5
    invoke-direct {p0}, Lo/ƚ;->ᵡ()Z

    goto :goto_4

    .line 123
    :cond_6
    invoke-direct {p0}, Lo/ƚ;->ᵡ()Z

    .line 126
    :goto_4
    invoke-virtual {p0}, Lo/ƚ;->getMeasuredWidth()I

    move-result v6

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    invoke-virtual {p0}, Lo/ƚ;->getMeasuredWidth()I

    move-result v7

    .line 130
    if-eqz v3, :cond_7

    if-eq v6, v7, :cond_7

    .line 132
    iget v0, p0, Lo/ƚ;->ภ:I

    invoke-virtual {p0, v0}, Lo/ƚ;->setTabSelected(I)V

    .line 134
    :cond_7
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 146
    iput-boolean p1, p0, Lo/ƚ;->ท:Z

    .line 147
    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 195
    iput p1, p0, Lo/ƚ;->ﮈ:I

    .line 196
    invoke-virtual {p0}, Lo/ƚ;->requestLayout()V

    .line 197
    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 179
    iput p1, p0, Lo/ƚ;->ภ:I

    .line 180
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {v0}, Lo/ί;->getChildCount()I

    move-result v1

    .line 181
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 182
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {v0, v2}, Lo/ί;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 183
    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 184
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    .line 185
    if-eqz v4, :cond_1

    .line 186
    invoke-virtual {p0, p1}, Lo/ƚ;->ı(I)V

    .line 181
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_2
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 190
    iget-object v0, p0, Lo/ƚ;->ถ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 192
    :cond_3
    return-void
.end method

.method public ı(I)V
    .locals 2

    .line 256
    iget-object v0, p0, Lo/ƚ;->ฅ:Lo/ί;

    invoke-virtual {v0, p1}, Lo/ί;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 257
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ƚ;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 260
    :cond_0
    new-instance v0, Lo/Ǐ;

    invoke-direct {v0, p0, v1}, Lo/Ǐ;-><init>(Lo/ƚ;Landroid/view/View;)V

    iput-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    .line 267
    iget-object v0, p0, Lo/ƚ;->ৰ:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lo/ƚ;->post(Ljava/lang/Runnable;)Z

    .line 268
    return-void
.end method

.method public ˊ(Lo/ﹹ;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufe79<*>;Landroid/view/View;IJ)V"
        }
    .end annotation

    .line 366
    move-object v0, p2

    check-cast v0, Lo/ƚ$ˋ;

    move-object v1, v0

    .line 367
    invoke-virtual {v1}, Lo/ƚ$ˋ;->Ị()Lo/ذ$ˊ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ذ$ˊ;->select()V

    .line 368
    return-void
.end method
