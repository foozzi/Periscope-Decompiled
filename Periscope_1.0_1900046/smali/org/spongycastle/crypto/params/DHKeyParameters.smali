.class public Lorg/spongycastle/crypto/params/DHKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private aPW:Lorg/spongycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLorg/spongycastle/crypto/params/DHParameters;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    instance-of v0, p1, Lorg/spongycastle/crypto/params/DHKeyParameters;

    if-nez v0, :cond_0

    .line 28
    const/4 v0, 0x0

    return v0

    .line 31
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/DHKeyParameters;

    move-object v2, v0

    .line 33
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    if-nez v0, :cond_2

    .line 35
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 39
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/DHKeyParameters;->kA()Lorg/spongycastle/crypto/params/DHParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/spongycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 47
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/DHParameters;->hashCode()I

    move-result v0

    xor-int/2addr v1, v0

    .line 52
    :cond_1
    return v1
.end method

.method public kA()Lorg/spongycastle/crypto/params/DHParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/crypto/params/DHKeyParameters;->aPW:Lorg/spongycastle/crypto/params/DHParameters;

    return-object v0
.end method
