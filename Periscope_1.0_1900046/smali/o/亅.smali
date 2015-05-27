.class public final Lo/亅;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private static ʿ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    return-object v0
.end method

.method public static ˊ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    .line 39
    if-nez p1, :cond_0

    .line 40
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p3, :cond_1

    .line 42
    return-object p1

    .line 46
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 47
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v1, p2

    if-le v0, v1, :cond_2

    .line 49
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 50
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v3, v0, v1

    goto :goto_0

    .line 52
    :cond_2
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 53
    int-to-float v0, p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v4, v0, v1

    .line 56
    :goto_0
    invoke-virtual {v5, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 57
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 59
    if-eqz p0, :cond_3

    .line 60
    move-object v6, p0

    goto :goto_1

    .line 62
    :cond_3
    invoke-static {p1}, Lo/亅;->ʿ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 66
    :goto_1
    invoke-static {p1, v6}, Lo/亅;->ˊ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 68
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 69
    new-instance v8, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 70
    invoke-virtual {v7, p1, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 71
    return-object v6
.end method

.method public static ˊ(Landroid/graphics/Bitmap;Lo/ი;I)Landroid/graphics/Bitmap;
    .locals 12

    .line 256
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    invoke-static {p2, v4}, Lo/亅;->ˊ(ILandroid/graphics/Matrix;)V

    .line 258
    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    return-object p0

    .line 263
    :cond_0
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 264
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 266
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 267
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 269
    invoke-static {p0}, Lo/亅;->ʿ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 270
    invoke-interface {p1, v6, v7, v8}, Lo/ი;->ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 271
    if-nez v9, :cond_1

    .line 272
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 275
    :cond_1
    iget v0, v5, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget v1, v5, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 277
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 278
    new-instance v11, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {v11, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 279
    invoke-virtual {v10, p0, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 281
    return-object v9
.end method

.method public static ˊ(Landroid/graphics/Bitmap;Lo/ი;II)Landroid/graphics/Bitmap;
    .locals 13

    .line 86
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    .line 87
    const-string v0, "TransformationUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const-string v0, "TransformationUtils"

    const-string v1, "requested target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-object p0

    .line 92
    :cond_1
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 93
    move/from16 v0, p3

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 94
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 99
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v6, v0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v7, v0

    .line 102
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v6, :cond_3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 103
    const-string v0, "TransformationUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    const-string v0, "TransformationUtils"

    const-string v1, "adjusted target size matches input, returning input"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_2
    return-object p0

    .line 109
    :cond_3
    invoke-static {p0}, Lo/亅;->ʿ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v8

    .line 110
    invoke-interface {p1, v6, v7, v8}, Lo/ი;->ˋ(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 111
    if-nez v9, :cond_4

    .line 112
    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 115
    :cond_4
    invoke-static {p0, v9}, Lo/亅;->ˊ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 117
    const-string v0, "TransformationUtils"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 118
    const-string v0, "TransformationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v0, "TransformationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toFit:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v0, "TransformationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toReuse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "TransformationUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minPct:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_5
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 125
    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    .line 126
    invoke-virtual {v11, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 127
    new-instance v12, Landroid/graphics/Paint;

    const/4 v0, 0x6

    invoke-direct {v12, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 128
    invoke-virtual {v10, p0, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 130
    return-object v9
.end method

.method static ˊ(ILandroid/graphics/Matrix;)V
    .locals 2

    .line 290
    packed-switch p0, :pswitch_data_0

    goto/16 :goto_0

    .line 292
    :pswitch_0
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 293
    goto :goto_0

    .line 295
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 296
    goto :goto_0

    .line 298
    :pswitch_2
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 299
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 300
    goto :goto_0

    .line 302
    :pswitch_3
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 303
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    goto :goto_0

    .line 306
    :pswitch_4
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 307
    goto :goto_0

    .line 309
    :pswitch_5
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 310
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 311
    goto :goto_0

    .line 313
    :pswitch_6
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 314
    .line 318
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static ˊ(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 146
    :cond_0
    return-void
.end method

.method public static ᓫ(I)I
    .locals 2

    .line 227
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 230
    :pswitch_0
    const/16 v1, 0x5a

    .line 231
    goto :goto_1

    .line 234
    :pswitch_1
    const/16 v1, 0xb4

    .line 235
    goto :goto_1

    .line 238
    :pswitch_2
    const/16 v1, 0x10e

    .line 239
    goto :goto_1

    .line 241
    :goto_0
    const/4 v1, 0x0

    .line 244
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
