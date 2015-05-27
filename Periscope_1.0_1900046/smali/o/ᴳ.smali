.class final Lo/ᴳ;
.super Lo/ᴧ;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/ᴧ;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "AT_MOST.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method

.method protected ʽ(IIII)I
    .locals 5

    .line 57
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v0, v1

    int-to-float v1, p1

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v3, v0

    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 60
    if-ge v4, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    shl-int v0, v4, v0

    return v0
.end method
