.class public Lo/alm;
.super Landroid/widget/ImageView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/alm$if;
    }
.end annotation


# instance fields
.field private bLQ:Landroid/graphics/Bitmap;

.field private bLR:Landroid/graphics/Canvas;

.field private bLS:Landroid/graphics/Path;

.field private bLT:Landroid/graphics/RectF;

.field private bLU:[F

.field private bLV:Lo/alm$if;

.field private bLW:I

.field private final mPaint:Landroid/graphics/Paint;

.field private ذ:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lo/alm;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lo/alm;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lo/alm;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private Bx()V
    .locals 2

    .line 98
    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/alm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˉ(Landroid/content/Context;)Lo/ᓲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓲ;->Ꮀ()Lo/ი;

    move-result-object v0

    iget-object v1, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 101
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alm;->bLR:Landroid/graphics/Canvas;

    .line 103
    iget-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 104
    return-void
.end method

.method private ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 51
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/alm;->bLS:Landroid/graphics/Path;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/alm;->bLT:Landroid/graphics/RectF;

    .line 53
    sget-object v0, Lo/alm$if;->bLX:Lo/alm$if;

    iput-object v0, p0, Lo/alm;->bLV:Lo/alm$if;

    .line 54
    iget-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    sget-object v0, Lo/vh$if;->MaskImageView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 57
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 58
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 59
    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    .line 61
    :sswitch_0
    sget-object v0, Lo/alm$if;->bMa:[Lo/alm$if;

    sget-object v1, Lo/alm$if;->bLX:Lo/alm$if;

    invoke-virtual {v1}, Lo/alm$if;->ordinal()I

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lo/alm;->bLV:Lo/alm$if;

    .line 57
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private і(II)V
    .locals 6

    .line 118
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 119
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p0}, Lo/alm;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˉ(Landroid/content/Context;)Lo/ᓲ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ᓲ;->Ꮀ()Lo/ი;

    move-result-object v5

    .line 122
    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-interface {v5, v0}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 123
    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, p1, p2}, Lo/abd;->ˊ(Lo/ი;Landroid/graphics/Bitmap$Config;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    .line 127
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lo/alm;->bLR:Landroid/graphics/Canvas;

    .line 129
    iget-object v0, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    iget-object v2, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 132
    iget-object v0, p0, Lo/alm;->bLT:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 133
    iget-object v0, p0, Lo/alm;->bLS:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 135
    iget-object v0, p0, Lo/alm;->bLV:Lo/alm$if;

    sget-object v1, Lo/alm$if;->bLZ:Lo/alm$if;

    if-ne v0, v1, :cond_3

    .line 136
    iget-object v0, p0, Lo/alm;->bLS:Landroid/graphics/Path;

    iget-object v1, p0, Lo/alm;->bLT:Landroid/graphics/RectF;

    iget-object v2, p0, Lo/alm;->bLU:[F

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    goto :goto_0

    .line 138
    :cond_3
    iget-object v0, p0, Lo/alm;->bLS:Landroid/graphics/Path;

    iget-object v1, p0, Lo/alm;->bLT:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 140
    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lo/alm;->bLV:Lo/alm$if;

    sget-object v1, Lo/alm$if;->bLX:Lo/alm$if;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/alm;->ذ:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget v0, p0, Lo/alm;->bLW:I

    if-nez v0, :cond_1

    .line 145
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 146
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lo/alm;->bLR:Landroid/graphics/Canvas;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    iget-object v0, p0, Lo/alm;->bLS:Landroid/graphics/Path;

    iget-object v1, p0, Lo/alm;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 151
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 108
    sub-int v1, p4, p2

    .line 109
    sub-int v2, p5, p3

    .line 111
    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/alm;->bLQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0, v1, v2}, Lo/alm;->і(II)V

    .line 115
    :cond_1
    return-void
.end method

.method public setCornerRadius([F)V
    .locals 3

    .line 163
    array-length v0, p1

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected radius size 4, got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x3

    aput v1, v0, v2

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x4

    aput v1, v0, v2

    const/4 v1, 0x2

    aget v1, p1, v1

    const/4 v2, 0x5

    aput v1, v0, v2

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x6

    aput v1, v0, v2

    const/4 v1, 0x3

    aget v1, p1, v1

    const/4 v2, 0x7

    aput v1, v0, v2

    iput-object v0, p0, Lo/alm;->bLU:[F

    .line 172
    sget-object v0, Lo/alm$if;->bLZ:Lo/alm$if;

    invoke-virtual {p0, v0}, Lo/alm;->setMaskType(Lo/alm$if;)V

    .line 173
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lo/alm;->ذ:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_1

    .line 72
    iput-object p1, p0, Lo/alm;->ذ:Landroid/graphics/drawable/Drawable;

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lo/alm;->bLW:I

    .line 74
    if-nez p1, :cond_0

    .line 75
    invoke-direct {p0}, Lo/alm;->Bx()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lo/alm;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/alm;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/alm;->і(II)V

    .line 80
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 85
    iget v0, p0, Lo/alm;->bLW:I

    if-eq v0, p1, :cond_1

    .line 86
    iput p1, p0, Lo/alm;->bLW:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alm;->ذ:Landroid/graphics/drawable/Drawable;

    .line 88
    if-nez p1, :cond_0

    .line 89
    invoke-direct {p0}, Lo/alm;->Bx()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lo/alm;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/alm;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lo/alm;->і(II)V

    .line 94
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    return-void
.end method

.method public setMaskType(Lo/alm$if;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lo/alm;->bLV:Lo/alm$if;

    .line 155
    return-void
.end method
