.class public Lorg/spongycastle/crypto/params/ElGamalKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/ElGamalParameters;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 31
    instance-of v0, p1, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;

    move-object v2, v0

    .line 38
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    if-nez v0, :cond_2

    .line 40
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->kI()Lorg/spongycastle/crypto/params/ElGamalParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public kI()Lorg/spongycastle/crypto/params/ElGamalParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ElGamalKeyParameters;->aQg:Lorg/spongycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method
