.class public Lorg/spongycastle/jce/spec/ECParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private aDB:Ljava/math/BigInteger;

.field private aDC:Ljava/math/BigInteger;

.field private aDw:Lorg/spongycastle/math/ec/ECCurve;

.field private aDx:[B

.field private aQd:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 27
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aQd:Lorg/spongycastle/math/ec/ECPoint;

    .line 28
    iput-object p3, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDB:Ljava/math/BigInteger;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDC:Ljava/math/BigInteger;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDx:[B

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 54
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aQd:Lorg/spongycastle/math/ec/ECPoint;

    .line 55
    iput-object p3, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDB:Ljava/math/BigInteger;

    .line 56
    iput-object p4, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDC:Ljava/math/BigInteger;

    .line 57
    iput-object p5, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDx:[B

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 107
    instance-of v0, p1, Lorg/spongycastle/jce/spec/ECParameterSpec;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-object v2, v0

    .line 114
    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECCurve;->ʼ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint;->ʻ(Lorg/spongycastle/math/ec/ECPoint;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSeed()[B
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDx:[B

    return-object v0
.end method

.method public gy()Ljava/math/BigInteger;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 119
    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECPoint;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public iv()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public iw()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aQd:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public ix()Ljava/math/BigInteger;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECParameterSpec;->aDC:Ljava/math/BigInteger;

    return-object v0
.end method
