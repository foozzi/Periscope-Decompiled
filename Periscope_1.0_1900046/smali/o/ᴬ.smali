.class public Lo/ᴬ;
.super Lo/ᴿ;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lo/ᖦ$if;
.implements Lo/ᵊ$if;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᴬ$ˊ;,
        Lo/ᴬ$if;
    }
.end annotation


# instance fields
.field private ḹ:Ljava/lang/CharSequence;

.field private ℐ:Lo/ᵃ;

.field private 〱:Landroid/graphics/drawable/Drawable;

.field private 丿:Lo/ᵁ$ˊ;

.field private בּ:Lo/ῑ$ˊ;

.field private ﭩ:Lo/ᴬ$ˊ;

.field private ﮇ:Z

.field private ﮊ:Z

.field private ﮞ:I

.field private ﮣ:I

.field private ﺰ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/ᴬ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/ᴬ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 72
    invoke-direct {p0, p1, p2, p3}, Lo/ᴿ;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 74
    sget v0, Lo/ڊ$ˊ;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lo/ᴬ;->ﮇ:Z

    .line 76
    sget-object v0, Lo/ڊ$ʽ;->ActionMenuItemView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 78
    sget v0, Lo/ڊ$ʽ;->ActionMenuItemView_android_minWidth:I

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lo/ᴬ;->ﮞ:I

    .line 80
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 83
    const/high16 v0, 0x42000000    # 32.0f

    mul-float/2addr v0, v4

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lo/ᴬ;->ﺰ:I

    .line 85
    invoke-virtual {p0, p0}, Lo/ᴬ;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p0, p0}, Lo/ᴬ;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lo/ᴬ;->ﮣ:I

    .line 89
    return-void
.end method

.method static synthetic ˊ(Lo/ᴬ;)Lo/ᴬ$ˊ;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ᴬ;->ﭩ:Lo/ᴬ$ˊ;

    return-object v0
.end method

.method static synthetic ˋ(Lo/ᴬ;)Lo/ᵁ$ˊ;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ᴬ;->丿:Lo/ᵁ$ˊ;

    return-object v0
.end method

.method static synthetic ˎ(Lo/ᴬ;)Lo/ᵃ;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    return-object v0
.end method

.method private І()V
    .locals 2

    .line 173
    iget-object v0, p0, Lo/ᴬ;->ḹ:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 174
    :goto_0
    iget-object v0, p0, Lo/ᴬ;->〱:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->ʶ()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/ᴬ;->ﮇ:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/ᴬ;->ﮊ:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    and-int/2addr v1, v0

    .line 177
    if-eqz v1, :cond_3

    iget-object v0, p0, Lo/ᴬ;->ḹ:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p0, v0}, Lo/ᴬ;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method


# virtual methods
.method public hasText()Z
    .locals 1

    .line 203
    invoke-virtual {p0}, Lo/ᴬ;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lo/ᴬ;->丿:Lo/ᵁ$ˊ;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lo/ᴬ;->丿:Lo/ᵁ$ˊ;

    iget-object v1, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-interface {v0, v1}, Lo/ᵁ$ˊ;->ˊ(Lo/ᵃ;)Z

    .line 141
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 93
    invoke-super {p0, p1}, Lo/ᴿ;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lo/ᴬ;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lo/ڊ$ˊ;->abc_config_allowActionMenuItemTextWithIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lo/ᴬ;->ﮇ:Z

    .line 98
    invoke-direct {p0}, Lo/ᴬ;->І()V

    .line 99
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10

    .line 231
    invoke-virtual {p0}, Lo/ᴬ;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return v0

    .line 236
    :cond_0
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 237
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 238
    invoke-virtual {p0, v2}, Lo/ᴬ;->getLocationOnScreen([I)V

    .line 239
    invoke-virtual {p0, v3}, Lo/ᴬ;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 241
    invoke-virtual {p0}, Lo/ᴬ;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 242
    invoke-virtual {p0}, Lo/ᴬ;->getWidth()I

    move-result v5

    .line 243
    invoke-virtual {p0}, Lo/ᴬ;->getHeight()I

    move-result v6

    .line 244
    const/4 v0, 0x1

    aget v0, v2, v0

    div-int/lit8 v1, v6, 0x2

    add-int v7, v0, v1

    .line 245
    const/4 v0, 0x0

    aget v0, v2, v0

    div-int/lit8 v1, v5, 0x2

    add-int v8, v0, v1

    .line 246
    invoke-static {p1}, Lo/ﺑ;->ˌ(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_1

    .line 247
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v9, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 248
    sub-int v8, v9, v8

    .line 250
    :cond_1
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v4, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 251
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 253
    const v0, 0x800035

    invoke-virtual {v9, v0, v8, v6}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 256
    :cond_2
    const/16 v0, 0x51

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 258
    :goto_0
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 259
    const/4 v0, 0x1

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11

    .line 264
    invoke-virtual {p0}, Lo/ᴬ;->hasText()Z

    move-result v4

    .line 265
    if-eqz v4, :cond_0

    iget v0, p0, Lo/ᴬ;->ﮣ:I

    if-ltz v0, :cond_0

    .line 266
    iget v0, p0, Lo/ᴬ;->ﮣ:I

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Lo/ᴿ;->setPadding(IIII)V

    .line 270
    :cond_0
    invoke-super {p0, p1, p2}, Lo/ᴿ;->onMeasure(II)V

    .line 272
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 274
    invoke-virtual {p0}, Lo/ᴬ;->getMeasuredWidth()I

    move-result v7

    .line 275
    const/high16 v0, -0x80000000

    if-ne v5, v0, :cond_1

    iget v0, p0, Lo/ᴬ;->ﮞ:I

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    goto :goto_0

    :cond_1
    iget v8, p0, Lo/ᴬ;->ﮞ:I

    .line 278
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v5, v0, :cond_2

    iget v0, p0, Lo/ᴬ;->ﮞ:I

    if-lez v0, :cond_2

    if-ge v7, v8, :cond_2

    .line 280
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v8, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Lo/ᴿ;->onMeasure(II)V

    .line 284
    :cond_2
    if-nez v4, :cond_3

    iget-object v0, p0, Lo/ᴬ;->〱:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 287
    invoke-virtual {p0}, Lo/ᴬ;->getMeasuredWidth()I

    move-result v9

    .line 288
    iget-object v0, p0, Lo/ᴬ;->〱:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 289
    sub-int v0, v9, v10

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lo/ᴬ;->getPaddingBottom()I

    move-result v3

    invoke-super {p0, v0, v1, v2, v3}, Lo/ᴿ;->setPadding(IIII)V

    .line 291
    :cond_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 129
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴬ;->בּ:Lo/ῑ$ˊ;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴬ;->בּ:Lo/ῑ$ˊ;

    invoke-virtual {v0, p0, p1}, Lo/ῑ$ˊ;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_0
    invoke-super {p0, p1}, Lo/ᴿ;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 157
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 161
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    .line 164
    iget-boolean v0, p0, Lo/ᴬ;->ﮊ:Z

    if-eq v0, p1, :cond_0

    .line 165
    iput-boolean p1, p0, Lo/ᴬ;->ﮊ:Z

    .line 166
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->＿()V

    .line 170
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 181
    iput-object p1, p0, Lo/ᴬ;->〱:Landroid/graphics/drawable/Drawable;

    .line 182
    if-eqz p1, :cond_2

    .line 183
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 185
    iget v0, p0, Lo/ᴬ;->ﺰ:I

    if-le v3, v0, :cond_0

    .line 186
    iget v0, p0, Lo/ᴬ;->ﺰ:I

    int-to-float v0, v0

    int-to-float v1, v3

    div-float v5, v0, v1

    .line 187
    iget v3, p0, Lo/ᴬ;->ﺰ:I

    .line 188
    int-to-float v0, v4

    mul-float/2addr v0, v5

    float-to-int v4, v0

    .line 190
    :cond_0
    iget v0, p0, Lo/ᴬ;->ﺰ:I

    if-le v4, v0, :cond_1

    .line 191
    iget v0, p0, Lo/ᴬ;->ﺰ:I

    int-to-float v0, v0

    int-to-float v1, v4

    div-float v5, v0, v1

    .line 192
    iget v4, p0, Lo/ᴬ;->ﺰ:I

    .line 193
    int-to-float v0, v3

    mul-float/2addr v0, v5

    float-to-int v3, v0

    .line 195
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 197
    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lo/ᴬ;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-direct {p0}, Lo/ᴬ;->І()V

    .line 200
    return-void
.end method

.method public setItemInvoker(Lo/ᵁ$ˊ;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/ᴬ;->丿:Lo/ᵁ$ˊ;

    .line 145
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 103
    iput p1, p0, Lo/ᴬ;->ﮣ:I

    .line 104
    invoke-super {p0, p1, p2, p3, p4}, Lo/ᴿ;->setPadding(IIII)V

    .line 105
    return-void
.end method

.method public setPopupCallback(Lo/ᴬ$ˊ;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lo/ᴬ;->ﭩ:Lo/ᴬ$ˊ;

    .line 149
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    .line 208
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 211
    iput-object p1, p0, Lo/ᴬ;->ḹ:Ljava/lang/CharSequence;

    .line 213
    iget-object v0, p0, Lo/ᴬ;->ḹ:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lo/ᴬ;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    invoke-direct {p0}, Lo/ᴬ;->І()V

    .line 215
    return-void
.end method

.method public ʺ()Lo/ᵃ;
    .locals 1

    .line 108
    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    return-object v0
.end method

.method public ˊ(Lo/ᵃ;I)V
    .locals 1

    .line 112
    iput-object p1, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    .line 114
    invoke-virtual {p1}, Lo/ᵃ;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴬ;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 115
    invoke-virtual {p1, p0}, Lo/ᵃ;->ˊ(Lo/ᵊ$if;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ᴬ;->setTitle(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p1}, Lo/ᵃ;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᴬ;->setId(I)V

    .line 118
    invoke-virtual {p1}, Lo/ᵃ;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lo/ᴬ;->setVisibility(I)V

    .line 119
    invoke-virtual {p1}, Lo/ᵃ;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lo/ᴬ;->setEnabled(Z)V

    .line 120
    invoke-virtual {p1}, Lo/ᵃ;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lo/ᴬ;->בּ:Lo/ῑ$ˊ;

    if-nez v0, :cond_1

    .line 122
    new-instance v0, Lo/ᴬ$if;

    invoke-direct {v0, p0}, Lo/ᴬ$if;-><init>(Lo/ᴬ;)V

    iput-object v0, p0, Lo/ᴬ;->בּ:Lo/ῑ$ˊ;

    .line 125
    :cond_1
    return-void
.end method

.method public Ι()Z
    .locals 1

    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public і()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Lo/ᴬ;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᴬ;->ℐ:Lo/ᵃ;

    invoke-virtual {v0}, Lo/ᵃ;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ї()Z
    .locals 1

    .line 226
    invoke-virtual {p0}, Lo/ᴬ;->hasText()Z

    move-result v0

    return v0
.end method
