.class public Lorg/spongycastle/math/ec/ZSignedDigitR2LMultiplier;
.super Lorg/spongycastle/math/ec/AbstractECMultiplier;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/spongycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected ˎ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 12
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->pi()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    move-object v2, p1

    .line 14
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    .line 15
    invoke-virtual {p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v4

    .line 17
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 19
    move v5, v4

    .line 20
    :goto_0
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_1

    .line 22
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 23
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECPoint;->pU()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECPoint;->ʼ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    .line 28
    return-object v1
.end method
