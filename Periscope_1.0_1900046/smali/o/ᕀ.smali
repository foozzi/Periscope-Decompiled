.class public abstract Lo/ᕀ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ﻨ:I


# instance fields
.field private ﺩ:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const/high16 v0, 0x100000

    sput v0, Lo/ᕀ;->ﻨ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˊ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 14

    .line 195
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 196
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 197
    if-lez v2, :cond_0

    if-gtz v3, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 200
    :cond_1
    sget v0, Lo/ᕀ;->ﻨ:I

    int-to-float v0, v0

    mul-int v1, v2, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 201
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-nez v0, :cond_2

    .line 203
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 205
    :cond_2
    int-to-float v0, v2

    mul-float/2addr v0, v4

    float-to-int v5, v0

    .line 206
    int-to-float v0, v3

    mul-float/2addr v0, v4

    float-to-int v6, v0

    .line 207
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 208
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 209
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 210
    iget v10, v9, Landroid/graphics/Rect;->left:I

    .line 211
    iget v11, v9, Landroid/graphics/Rect;->top:I

    .line 212
    iget v12, v9, Landroid/graphics/Rect;->right:I

    .line 213
    iget v13, v9, Landroid/graphics/Rect;->bottom:I

    .line 214
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 215
    invoke-virtual {p0, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    return-object v7
.end method


# virtual methods
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 10

    .line 149
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 150
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 151
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 152
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 153
    if-eqz v4, :cond_1

    if-nez v5, :cond_1

    .line 154
    invoke-static {v4}, Lo/ᕀ;->ˊ(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 155
    if-eqz v6, :cond_1

    .line 156
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v0, "sharedElement:snapshot:bitmap"

    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 158
    const-string v0, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v3}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {v3}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 162
    const/16 v0, 0x9

    new-array v9, v0, [F

    .line 163
    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 164
    const-string v0, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v7, v0, v9}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 166
    :cond_0
    return-object v7

    .line 170
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 171
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 172
    const/4 v5, 0x0

    .line 173
    if-lez v3, :cond_3

    if-lez v4, :cond_3

    .line 174
    sget v0, Lo/ᕀ;->ﻨ:I

    int-to-float v0, v0

    mul-int v1, v3, v4

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 175
    int-to-float v0, v3

    mul-float/2addr v0, v6

    float-to-int v3, v0

    .line 176
    int-to-float v0, v4

    mul-float/2addr v0, v6

    float-to-int v4, v0

    .line 177
    iget-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    .line 180
    :cond_2
    iget-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    iget v1, p3, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v2, p3, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 182
    iget-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 183
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 184
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    iget-object v0, p0, Lo/ᕀ;->ﺩ:Landroid/graphics/Matrix;

    invoke-virtual {v7, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 186
    invoke-virtual {p1, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 188
    :cond_3
    return-object v5
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 8

    .line 238
    const/4 v2, 0x0

    .line 239
    instance-of v0, p2, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 240
    move-object v0, p2

    check-cast v0, Landroid/os/Bundle;

    move-object v3, v0

    .line 241
    const-string v0, "sharedElement:snapshot:bitmap"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v4, v0

    .line 242
    if-nez v4, :cond_0

    .line 243
    const/4 v0, 0x0

    return-object v0

    .line 245
    :cond_0
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 246
    move-object v2, v5

    .line 247
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const-string v0, "sharedElement:snapshot:imageScaleType"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 250
    invoke-virtual {v5}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    if-ne v0, v1, :cond_1

    .line 251
    const-string v0, "sharedElement:snapshot:imageMatrix"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v6

    .line 252
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->setValues([F)V

    .line 254
    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 256
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 257
    move-object v0, p2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 258
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 259
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    :cond_3
    :goto_0
    return-object v2
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/Map<Ljava/lang/String;Landroid/view/View;>;)V"
        }
    .end annotation

    .line 125
    return-void
.end method

.method public onRejectSharedElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 114
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Landroid/view/View;>;Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 90
    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Landroid/view/View;>;Ljava/util/List<Landroid/view/View;>;)V"
        }
    .end annotation

    .line 65
    return-void
.end method
