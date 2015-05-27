.class public Lo/ﻠ;
.super Lo/לּ;
.source ""

# interfaces
.implements Lo/ｪ$ˊ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ﻠ$if;
    }
.end annotation


# instance fields
.field private fT:I

.field private ic:Z

.field private final kF:Lo/ﻠ$if;

.field private final kG:Lo/ᵨ;

.field private final kH:Lo/ｪ;

.field private kI:Z

.field private kJ:Z

.field private kK:Z

.field private kL:I

.field private final kd:Landroid/graphics/Rect;

.field private ke:Z

.field private final kj:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ᵨ$if;Lo/ი;Lo/ﺭ;IILo/ⅹ;[BLandroid/graphics/Bitmap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Landroid/content/Context;Lo/\u1d68$if;Lo/\u10d8;Lo/\ufead<Landroid/graphics/Bitmap;>;IILo/\u2179;[BLandroid/graphics/Bitmap;)V"
        }
    .end annotation

    .line 73
    new-instance v0, Lo/ﻠ$if;

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object v3, p1

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lo/ﻠ$if;-><init>(Lo/ⅹ;[BLandroid/content/Context;Lo/ﺭ;IILo/ᵨ$if;Lo/ი;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lo/ﻠ;-><init>(Lo/ﻠ$if;)V

    .line 75
    return-void
.end method

.method constructor <init>(Lo/ﻠ$if;)V
    .locals 6

    .line 77
    invoke-direct {p0}, Lo/לּ;-><init>()V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lo/ﻠ;->kd:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﻠ;->kK:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lo/ﻠ;->kL:I

    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GifState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    .line 83
    new-instance v0, Lo/ᵨ;

    iget-object v1, p1, Lo/ﻠ$if;->fy:Lo/ᵨ$if;

    invoke-direct {v0, v1}, Lo/ᵨ;-><init>(Lo/ᵨ$if;)V

    iput-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lo/ﻠ;->kj:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    iget-object v1, p1, Lo/ﻠ$if;->kM:Lo/ⅹ;

    iget-object v2, p1, Lo/ﻠ$if;->fw:[B

    invoke-virtual {v0, v1, v2}, Lo/ᵨ;->ˊ(Lo/ⅹ;[B)V

    .line 86
    new-instance v0, Lo/ｪ;

    iget-object v1, p1, Lo/ﻠ$if;->dV:Landroid/content/Context;

    iget-object v3, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    iget v4, p1, Lo/ﻠ$if;->kO:I

    iget v5, p1, Lo/ﻠ$if;->kP:I

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lo/ｪ;-><init>(Landroid/content/Context;Lo/ｪ$ˊ;Lo/ᵨ;II)V

    iput-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    .line 87
    return-void
.end method

.method private reset()V
    .locals 1

    .line 162
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->clear()V

    .line 163
    invoke-virtual {p0}, Lo/ﻠ;->invalidateSelf()V

    .line 164
    return-void
.end method

.method private Υ()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lo/ﻠ;->fT:I

    .line 133
    return-void
.end method

.method private ϟ()V
    .locals 2

    .line 168
    iget-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->getFrameCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lo/ﻠ;->invalidateSelf()V

    goto :goto_0

    .line 170
    :cond_0
    iget-boolean v0, p0, Lo/ﻠ;->kI:Z

    if-nez v0, :cond_1

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﻠ;->kI:Z

    .line 172
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->start()V

    .line 173
    invoke-virtual {p0}, Lo/ﻠ;->invalidateSelf()V

    .line 175
    :cond_1
    :goto_0
    return-void
.end method

.method private Ѓ()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﻠ;->kI:Z

    .line 179
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->stop()V

    .line 180
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 221
    iget-boolean v0, p0, Lo/ﻠ;->ic:Z

    if-eqz v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    iget-boolean v0, p0, Lo/ﻠ;->ke:Z

    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lo/ﻠ;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lo/ﻠ;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lo/ﻠ;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lo/ﻠ;->kd:Landroid/graphics/Rect;

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 227
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﻠ;->ke:Z

    .line 230
    :cond_1
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->ҁ()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 231
    if-eqz v5, :cond_2

    move-object v6, v5

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v6, v0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    .line 232
    :goto_0
    iget-object v0, p0, Lo/ﻠ;->kd:Landroid/graphics/Rect;

    iget-object v1, p0, Lo/ﻠ;->kj:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v6, v2, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 233
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 273
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 124
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->fw:[B

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 200
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 195
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 248
    const/4 v0, -0x2

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lo/ﻠ;->kI:Z

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 215
    invoke-super {p0, p1}, Lo/לּ;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﻠ;->ke:Z

    .line 217
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﻠ;->ic:Z

    .line 281
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->eD:Lo/ი;

    iget-object v1, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v1, v1, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lo/ი;->ʽ(Landroid/graphics/Bitmap;)Z

    .line 282
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->clear()V

    .line 283
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0}, Lo/ｪ;->stop()V

    .line 284
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 237
    iget-object v0, p0, Lo/ﻠ;->kj:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 238
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lo/ﻠ;->kj:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 243
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 184
    iput-boolean p1, p0, Lo/ﻠ;->kK:Z

    .line 185
    if-nez p1, :cond_0

    .line 186
    invoke-direct {p0}, Lo/ﻠ;->Ѓ()V

    goto :goto_0

    .line 187
    :cond_0
    iget-boolean v0, p0, Lo/ﻠ;->kJ:Z

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0}, Lo/ﻠ;->ϟ()V

    .line 190
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lo/לּ;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public start()V
    .locals 1

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ﻠ;->kJ:Z

    .line 138
    invoke-direct {p0}, Lo/ﻠ;->Υ()V

    .line 139
    iget-boolean v0, p0, Lo/ﻠ;->kK:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lo/ﻠ;->ϟ()V

    .line 142
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ﻠ;->kJ:Z

    .line 147
    invoke-direct {p0}, Lo/ﻠ;->Ѓ()V

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 154
    invoke-direct {p0}, Lo/ﻠ;->reset()V

    .line 156
    :cond_0
    return-void
.end method

.method public ʇ()Landroid/graphics/Bitmap;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public ʋ()Lo/ﺭ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/\ufead<Landroid/graphics/Bitmap;>;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iget-object v0, v0, Lo/ﻠ$if;->kN:Lo/ﺭ;

    return-object v0
.end method

.method public ˊ(Lo/ﺭ;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/\ufead<Landroid/graphics/Bitmap;>;Landroid/graphics/Bitmap;)V"
        }
    .end annotation

    .line 104
    if-nez p2, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The first frame of the GIF must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    if-nez p1, :cond_1

    .line 108
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The frame transformation must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iput-object p1, v0, Lo/ﻠ$if;->kN:Lo/ﺭ;

    .line 111
    iget-object v0, p0, Lo/ﻠ;->kF:Lo/ﻠ$if;

    iput-object p2, v0, Lo/ﻠ$if;->kQ:Landroid/graphics/Bitmap;

    .line 112
    iget-object v0, p0, Lo/ﻠ;->kH:Lo/ｪ;

    invoke-virtual {v0, p1}, Lo/ｪ;->ˊ(Lo/ﺭ;)V

    .line 113
    return-void
.end method

.method public ᑋ(I)V
    .locals 2

    .line 298
    if-gtz p1, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_0
    if-nez p1, :cond_1

    .line 304
    iget-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->Ỉ()I

    move-result v0

    iput v0, p0, Lo/ﻠ;->kL:I

    goto :goto_0

    .line 306
    :cond_1
    iput p1, p0, Lo/ﻠ;->kL:I

    .line 308
    :goto_0
    return-void
.end method

.method public ᔾ(I)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 254
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lo/ﻠ;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lo/ﻠ;->stop()V

    .line 256
    invoke-direct {p0}, Lo/ﻠ;->reset()V

    .line 257
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lo/ﻠ;->invalidateSelf()V

    .line 262
    iget-object v0, p0, Lo/ﻠ;->kG:Lo/ᵨ;

    invoke-virtual {v0}, Lo/ᵨ;->getFrameCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    .line 263
    iget v0, p0, Lo/ﻠ;->fT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/ﻠ;->fT:I

    .line 266
    :cond_1
    iget v0, p0, Lo/ﻠ;->kL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lo/ﻠ;->fT:I

    iget v1, p0, Lo/ﻠ;->kL:I

    if-lt v0, v1, :cond_2

    .line 267
    invoke-virtual {p0}, Lo/ﻠ;->stop()V

    .line 269
    :cond_2
    return-void
.end method

.method public ﾃ()Z
    .locals 1

    .line 293
    const/4 v0, 0x1

    return v0
.end method
