.class public Lorg/spongycastle/crypto/params/DHParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFB:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private aPX:Ljava/math/BigInteger;

.field private aPY:Lorg/spongycastle/crypto/params/DHValidationParameters;

.field private avL:I

.field private avO:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2

    .line 36
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 8

    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {p4}, Lorg/spongycastle/crypto/params/DHParameters;->ΐ(I)I

    move-result v4

    move v5, p4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V
    .locals 5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    if-eqz p5, :cond_1

    .line 87
    add-int/lit8 v0, p5, -0x1

    int-to-long v0, v0

    const-wide/16 v2, 0x2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 88
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it must satisfy 2^(l-1) <= p"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-ge p5, p4, :cond_1

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "when l value specified, it may not be less than m value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_1
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFB:Ljava/math/BigInteger;

    .line 99
    iput-object p1, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFz:Ljava/math/BigInteger;

    .line 100
    iput-object p3, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFA:Ljava/math/BigInteger;

    .line 101
    iput p4, p0, Lorg/spongycastle/crypto/params/DHParameters;->avL:I

    .line 102
    iput p5, p0, Lorg/spongycastle/crypto/params/DHParameters;->avO:I

    .line 103
    iput-object p6, p0, Lorg/spongycastle/crypto/params/DHParameters;->aPX:Ljava/math/BigInteger;

    .line 104
    iput-object p7, p0, Lorg/spongycastle/crypto/params/DHParameters;->aPY:Lorg/spongycastle/crypto/params/DHValidationParameters;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V
    .locals 8

    .line 73
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    move-object v7, p5

    const/16 v4, 0xa0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/spongycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lorg/spongycastle/crypto/params/DHValidationParameters;)V

    .line 74
    return-void
.end method

.method private static ΐ(I)I
    .locals 1

    .line 24
    if-nez p0, :cond_0

    .line 26
    const/16 v0, 0xa0

    return v0

    .line 29
    :cond_0
    const/16 v0, 0xa0

    if-ge p0, v0, :cond_1

    move v0, p0

    goto :goto_0

    :cond_1
    const/16 v0, 0xa0

    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 160
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x0

    return v0

    .line 165
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHParameters;

    move-object v2, v0

    .line 167
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 171
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_2
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFz:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFB:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getL()I
    .locals 1

    .line 149
    iget v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->avO:I

    return v0
.end method

.method public getM()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->avL:I

    return v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHParameters;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 187
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
