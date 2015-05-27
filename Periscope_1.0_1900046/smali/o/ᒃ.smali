.class Lo/ᒃ;
.super Landroid/graphics/drawable/Drawable;
.source ""

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ᒃ$ˋ;,
        Lo/ᒃ$if;,
        Lo/ᒃ$ˊ;
    }
.end annotation


# static fields
.field private static final ς:Landroid/view/animation/Interpolator;

.field private static final ϛ:Landroid/view/animation/Interpolator;

.field private static final ч:Landroid/view/animation/Interpolator;

.field private static final ѓ:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private final ב:[I

.field private final װ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Landroid/view/animation/Animation;>;"
        }
    .end annotation
.end field

.field private final ه:Lo/ᒃ$ˊ;

.field private ډ:F

.field private ږ:Landroid/content/res/Resources;

.field private ڗ:Landroid/view/View;

.field private ە:F

.field private ܕ:D

.field private ণ:D

.field จ:Z

.field private final แ:Landroid/graphics/drawable/Drawable$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lo/ᒃ;->ς:Landroid/view/animation/Interpolator;

    .line 53
    new-instance v0, Lo/ᒃ$if;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ᒃ$if;-><init>(Lo/ᓒ;)V

    sput-object v0, Lo/ᒃ;->ϛ:Landroid/view/animation/Interpolator;

    .line 54
    new-instance v0, Lo/ᒃ$ˋ;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ᒃ$ˋ;-><init>(Lo/ᓒ;)V

    sput-object v0, Lo/ᒃ;->ч:Landroid/view/animation/Interpolator;

    .line 55
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lo/ᒃ;->ѓ:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lo/ᒃ;->ב:[I

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ᒃ;->װ:Ljava/util/ArrayList;

    .line 380
    new-instance v0, Lo/ᙆ;

    invoke-direct {v0, p0}, Lo/ᙆ;-><init>(Lo/ᒃ;)V

    iput-object v0, p0, Lo/ᒃ;->แ:Landroid/graphics/drawable/Drawable$Callback;

    .line 112
    iput-object p2, p0, Lo/ᒃ;->ڗ:Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lo/ᒃ;->ږ:Landroid/content/res/Resources;

    .line 115
    new-instance v0, Lo/ᒃ$ˊ;

    iget-object v1, p0, Lo/ᒃ;->แ:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {v0, v1}, Lo/ᒃ$ˊ;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    .line 116
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    iget-object v1, p0, Lo/ᒃ;->ב:[I

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->setColors([I)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/ᒃ;->ˡ(I)V

    .line 119
    invoke-direct {p0}, Lo/ᒃ;->ﹴ()V

    .line 120
    return-void

    nop

    :array_0
    .array-data 4
        -0x1000000
    .end array-data
.end method

.method static synthetic ˊ(Lo/ᒃ;)F
    .locals 1

    .line 51
    iget v0, p0, Lo/ᒃ;->ە:F

    return v0
.end method

.method static synthetic ˊ(Lo/ᒃ;F)F
    .locals 0

    .line 51
    iput p1, p0, Lo/ᒃ;->ە:F

    return p1
.end method

.method private ˊ(DDDDFF)V
    .locals 6

    .line 124
    iget-object v3, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    .line 125
    iget-object v0, p0, Lo/ᒃ;->ږ:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 126
    iget v5, v4, Landroid/util/DisplayMetrics;->density:F

    .line 128
    float-to-double v0, v5

    mul-double/2addr v0, p1

    iput-wide v0, p0, Lo/ᒃ;->ܕ:D

    .line 129
    float-to-double v0, v5

    mul-double/2addr v0, p3

    iput-wide v0, p0, Lo/ᒃ;->ণ:D

    .line 130
    double-to-float v0, p7

    mul-float/2addr v0, v5

    invoke-virtual {v3, v0}, Lo/ᒃ$ˊ;->setStrokeWidth(F)V

    .line 131
    float-to-double v0, v5

    mul-double/2addr v0, p5

    invoke-virtual {v3, v0, v1}, Lo/ᒃ$ˊ;->ˊ(D)V

    .line 132
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lo/ᒃ$ˊ;->ˮ(I)V

    .line 133
    mul-float v0, p9, v5

    mul-float v1, p10, v5

    invoke-virtual {v3, v0, v1}, Lo/ᒃ$ˊ;->ι(FF)V

    .line 134
    iget-wide v0, p0, Lo/ᒃ;->ܕ:D

    double-to-int v0, v0

    iget-wide v1, p0, Lo/ᒃ;->ণ:D

    double-to-int v1, v1

    invoke-virtual {v3, v0, v1}, Lo/ᒃ$ˊ;->ʼ(II)V

    .line 135
    return-void
.end method

.method private ˊ(FLo/ᒃ$ˊ;)V
    .locals 7

    .line 299
    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ˤ()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v4, v0

    .line 301
    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ʸ()F

    move-result v0

    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ˀ()F

    move-result v1

    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ʸ()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float v5, v0, v1

    .line 303
    invoke-virtual {p2, v5}, Lo/ᒃ$ˊ;->ʿ(F)V

    .line 304
    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ˤ()F

    move-result v0

    invoke-virtual {p2}, Lo/ᒃ$ˊ;->ˤ()F

    move-result v1

    sub-float v1, v4, v1

    mul-float/2addr v1, p1

    add-float v6, v0, v1

    .line 306
    invoke-virtual {p2, v6}, Lo/ᒃ$ˊ;->setRotation(F)V

    .line 307
    return-void
.end method

.method static synthetic ˊ(Lo/ᒃ;FLo/ᒃ$ˊ;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lo/ᒃ;->ˊ(FLo/ᒃ$ˊ;)V

    return-void
.end method

.method private ﹴ()V
    .locals 3

    .line 310
    iget-object v1, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    .line 311
    new-instance v2, Lo/ᓒ;

    invoke-direct {v2, p0, v1}, Lo/ᓒ;-><init>(Lo/ᒃ;Lo/ᒃ$ˊ;)V

    .line 346
    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 347
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 348
    sget-object v0, Lo/ᒃ;->ς:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 349
    new-instance v0, Lo/ᕪ;

    invoke-direct {v0, p0, v1}, Lo/ᕪ;-><init>(Lo/ᒃ;Lo/ᒃ$ˊ;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 377
    iput-object v2, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    .line 378
    return-void
.end method

.method static synthetic ﹸ()Landroid/view/animation/Interpolator;
    .locals 1

    .line 51
    sget-object v0, Lo/ᒃ;->ч:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic ﹾ()Landroid/view/animation/Interpolator;
    .locals 1

    .line 51
    sget-object v0, Lo/ᒃ;->ϛ:Landroid/view/animation/Interpolator;

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 219
    invoke-virtual {p0}, Lo/ᒃ;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 220
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 221
    iget v0, p0, Lo/ᒃ;->ډ:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 222
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1, v3}, Lo/ᒃ$ˊ;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 223
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 224
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 232
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 209
    iget-wide v0, p0, Lo/ᒃ;->ণ:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 214
    iget-wide v0, p0, Lo/ᒃ;->ܕ:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 253
    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 5

    .line 258
    iget-object v1, p0, Lo/ᒃ;->װ:Ljava/util/ArrayList;

    .line 259
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 260
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 261
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    move-object v4, v0

    .line 262
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    const/4 v0, 0x1

    return v0

    .line 260
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->setAlpha(I)V

    .line 229
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 192
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->setBackgroundColor(I)V

    .line 193
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 237
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->setColors([I)V

    .line 204
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ˮ(I)V

    .line 205
    return-void
.end method

.method setRotation(F)V
    .locals 0

    .line 242
    iput p1, p0, Lo/ᒃ;->ډ:F

    .line 243
    invoke-virtual {p0}, Lo/ᒃ;->invalidateSelf()V

    .line 244
    return-void
.end method

.method public start()V
    .locals 3

    .line 271
    iget-object v0, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 272
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ι()V

    .line 274
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->ˁ()F

    move-result v0

    iget-object v1, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v1}, Lo/ᒃ$ˊ;->ʵ()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ᒃ;->จ:Z

    .line 276
    iget-object v0, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 277
    iget-object v0, p0, Lo/ᒃ;->ڗ:Landroid/view/View;

    iget-object v1, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ˮ(I)V

    .line 280
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->৲()V

    .line 281
    iget-object v0, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x535

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 282
    iget-object v0, p0, Lo/ᒃ;->ڗ:Landroid/view/View;

    iget-object v1, p0, Lo/ᒃ;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 284
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 288
    iget-object v0, p0, Lo/ᒃ;->ڗ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 289
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᒃ;->setRotation(F)V

    .line 290
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ʾ(Z)V

    .line 291
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/ᒃ$ˊ;->ˮ(I)V

    .line 292
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0}, Lo/ᒃ$ˊ;->৲()V

    .line 293
    return-void
.end method

.method public ʾ(F)V
    .locals 1

    .line 185
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->setRotation(F)V

    .line 186
    return-void
.end method

.method public ˡ(I)V
    .locals 11

    .line 145
    if-nez p1, :cond_0

    .line 146
    move-object v0, p0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    invoke-direct/range {v0 .. v10}, Lo/ᒃ;->ˊ(DDDDFF)V

    goto :goto_0

    .line 149
    :cond_0
    move-object v0, p0

    const-wide/high16 v1, 0x4044000000000000L    # 40.0

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    const-wide v5, 0x4021800000000000L    # 8.75

    const-wide/high16 v7, 0x4004000000000000L    # 2.5

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x40a00000    # 5.0f

    invoke-direct/range {v0 .. v10}, Lo/ᒃ;->ˊ(DDDDFF)V

    .line 152
    :goto_0
    return-void
.end method

.method public ͺ(FF)V
    .locals 1

    .line 175
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->ʿ(F)V

    .line 176
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p2}, Lo/ᒃ$ˊ;->ˈ(F)V

    .line 177
    return-void
.end method

.method public ι(F)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->ι(F)V

    .line 166
    return-void
.end method

.method public ι(Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lo/ᒃ;->ه:Lo/ᒃ$ˊ;

    invoke-virtual {v0, p1}, Lo/ᒃ$ˊ;->ʾ(Z)V

    .line 159
    return-void
.end method
