.class public Lo/ᵝ;
.super Lo/לּ;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᵝ$if;
    }
.end annotation


# instance fields
.field private height:I

.field private final kd:Landroid/graphics/Rect;

.field private ke:Z

.field private kf:Z

.field private kg:Lo/ᵝ$if;

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 28
    new-instance v0, Lo/ᵝ$if;

    invoke-direct {v0, p2}, Lo/ᵝ$if;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lo/ᵝ;-><init>(Landroid/content/res/Resources;Lo/ᵝ$if;)V

    .line 29
    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;Lo/ᵝ$if;)V
    .locals 4

    .line 31
    invoke-direct {p0}, Lo/לּ;-><init>()V

    .line 20
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/ᵝ;->kd:Landroid/graphics/Rect;

    .line 32
    if-nez p2, :cond_0

    .line 33
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "BitmapState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p2, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    .line 38
    if-eqz p1, :cond_2

    .line 39
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 40
    if-nez v3, :cond_1

    const/16 v2, 0xa0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 41
    :goto_0
    iput v2, p2, Lo/ᵝ$if;->ki:I

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget v2, p2, Lo/ᵝ$if;->ki:I

    .line 45
    :goto_1
    iget-object v0, p2, Lo/ᵝ$if;->jU:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->getScaledWidth(I)I

    move-result v0

    iput v0, p0, Lo/ᵝ;->width:I

    .line 46
    iget-object v0, p2, Lo/ᵝ$if;->jU:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->getScaledHeight(I)I

    move-result v0

    iput v0, p0, Lo/ᵝ;->height:I

    .line 47
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 97
    iget-boolean v0, p0, Lo/ᵝ;->ke:Z

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lo/ᵝ;->width:I

    iget v1, p0, Lo/ᵝ;->height:I

    invoke-virtual {p0}, Lo/ᵝ;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lo/ᵝ;->kd:Landroid/graphics/Rect;

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ᵝ;->ke:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v0, v0, Lo/ᵝ$if;->jU:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/ᵝ;->kd:Landroid/graphics/Rect;

    iget-object v2, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v2, v2, Lo/ᵝ$if;->kj:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 102
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v0, v0, Lo/ᵝ$if;->jU:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 56
    iget v0, p0, Lo/ᵝ;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lo/ᵝ;->width:I

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .line 121
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v2, v0, Lo/ᵝ$if;->jU:Landroid/graphics/Bitmap;

    .line 122
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v0, v0, Lo/ᵝ$if;->kj:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 128
    iget-boolean v0, p0, Lo/ᵝ;->kf:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lo/לּ;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 129
    new-instance v0, Lo/ᵝ$if;

    iget-object v1, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    invoke-direct {v0, v1}, Lo/ᵝ$if;-><init>(Lo/ᵝ$if;)V

    iput-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵝ;->kf:Z

    .line 132
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 86
    invoke-super {p0, p1}, Lo/לּ;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᵝ;->ke:Z

    .line 88
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    iget-object v0, v0, Lo/ᵝ$if;->kj:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 107
    if-eq v1, p1, :cond_0

    .line 108
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    invoke-virtual {v0, p1}, Lo/ᵝ$if;->setAlpha(I)V

    .line 109
    invoke-virtual {p0}, Lo/ᵝ;->invalidateSelf()V

    .line 111
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 115
    iget-object v0, p0, Lo/ᵝ;->kg:Lo/ᵝ$if;

    invoke-virtual {v0, p1}, Lo/ᵝ$if;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 116
    invoke-virtual {p0}, Lo/ᵝ;->invalidateSelf()V

    .line 117
    return-void
.end method

.method public start()V
    .locals 0

    .line 72
    return-void
.end method

.method public stop()V
    .locals 0

    .line 77
    return-void
.end method

.method public ᑋ(I)V
    .locals 0

    .line 67
    return-void
.end method

.method public ﾃ()Z
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method
