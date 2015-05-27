.class public abstract Lorg/spongycastle/math/ec/ECFieldElement;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/math/ec/ECFieldElement$F2m;,
        Lorg/spongycastle/math/ec/ECFieldElement$Fp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    return-void
.end method


# virtual methods
.method public bitLength()I
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 2

    .line 74
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/BigIntegers;->ʻ(ILjava/math/BigInteger;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public isZero()Z
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pA()Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pB()Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    return v0
.end method

.method public abstract pv()Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract pw()Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract px()Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract py()Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract pz()Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract toBigInteger()Ljava/math/BigInteger;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 69
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 59
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 44
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 49
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public abstract ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method

.method public abstract ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
.end method
