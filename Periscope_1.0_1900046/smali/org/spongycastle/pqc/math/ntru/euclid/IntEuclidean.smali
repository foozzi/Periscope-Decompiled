.class public Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bjw:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static וּ(II)Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;
    .locals 7

    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x1

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_0

    .line 30
    div-int v5, p0, p1

    .line 32
    move v6, p0

    .line 33
    move p0, p1

    .line 34
    rem-int p1, v6, p1

    .line 36
    move v6, v1

    .line 37
    mul-int v0, v5, v1

    sub-int v1, v2, v0

    .line 38
    move v2, v6

    .line 40
    move v6, v3

    .line 41
    mul-int v0, v5, v3

    sub-int v3, v4, v0

    .line 42
    move v4, v6

    .line 43
    goto :goto_0

    .line 45
    :cond_0
    new-instance v5, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;

    invoke-direct {v5}, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;-><init>()V

    .line 46
    iput v2, v5, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->x:I

    .line 47
    iput v4, v5, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->y:I

    .line 48
    iput p0, v5, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->bjw:I

    .line 49
    return-object v5
.end method
