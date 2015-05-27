.class public Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˎ(Ljava/security/SecureRandom;I)I
    .locals 6

    .line 10
    neg-int v0, p1

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 12
    int-to-long v0, p1

    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const/16 v2, 0x1f

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    ushr-int/lit8 v4, v0, 0x1

    .line 19
    rem-int v5, v4, p1

    .line 21
    sub-int v0, v4, v5

    add-int/lit8 v1, p1, -0x1

    add-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 23
    return v5
.end method
