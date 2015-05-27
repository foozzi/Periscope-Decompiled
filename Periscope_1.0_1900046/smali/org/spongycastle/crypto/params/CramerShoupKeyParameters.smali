.class public Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/CramerShoupParameters;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 10
    iput-object p2, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 18
    instance-of v0, p1, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    return v0

    .line 22
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;

    move-object v2, v0

    .line 24
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    if-nez v0, :cond_2

    .line 25
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->kq()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 27
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->kq()Lorg/spongycastle/crypto/params/CramerShoupParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 32
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 34
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/CramerShoupParameters;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 38
    :cond_1
    return v1
.end method

.method public kq()Lorg/spongycastle/crypto/params/CramerShoupParameters;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/spongycastle/crypto/params/CramerShoupKeyParameters;->aPK:Lorg/spongycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method
