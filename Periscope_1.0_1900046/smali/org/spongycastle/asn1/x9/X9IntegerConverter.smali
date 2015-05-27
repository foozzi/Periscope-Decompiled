.class public Lorg/spongycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Ljava/math/BigInteger;I)[B
    .locals 5

    .line 26
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 28
    array-length v0, v3

    if-ge p2, v0, :cond_0

    .line 30
    new-array v4, p2, [B

    .line 32
    array-length v0, v3

    array-length v1, v4

    sub-int/2addr v0, v1

    array-length v1, v4

    const/4 v2, 0x0

    invoke-static {v3, v0, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    return-object v4

    .line 36
    :cond_0
    array-length v0, v3

    if-le p2, v0, :cond_1

    .line 38
    new-array v4, p2, [B

    .line 40
    array-length v0, v4

    array-length v1, v3

    sub-int/2addr v0, v1

    array-length v1, v3

    const/4 v2, 0x0

    invoke-static {v3, v2, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    return-object v4

    .line 45
    :cond_1
    return-object v3
.end method

.method public ˋ(Lorg/spongycastle/math/ec/ECFieldElement;)I
    .locals 2

    .line 19
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECCurve;)I
    .locals 2

    .line 13
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method
