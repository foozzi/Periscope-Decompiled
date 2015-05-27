.class public Lorg/spongycastle/math/ec/ZSignedDigitL2RMultiplier;
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
    .locals 7

    .line 12
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->pT()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    .line 14
    move-object v3, v1

    .line 16
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 17
    invoke-virtual {p2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 19
    move v6, v4

    .line 20
    :goto_0
    add-int/lit8 v6, v6, -0x1

    if-le v6, v5, :cond_1

    .line 22
    invoke-virtual {p2, v6}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    move-object v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECPoint;->ʽ(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECPoint;->ﺬ(I)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    .line 27
    return-object v3
.end method
