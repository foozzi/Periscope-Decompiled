.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# instance fields
.field private bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

.field public bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;)V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 28
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 29
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 95
    if-ne p0, p1, :cond_0

    .line 97
    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    if-nez p1, :cond_1

    .line 101
    const/4 v0, 0x0

    return v0

    .line 103
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    move-object v2, v0

    .line 108
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v0, :cond_3

    .line 110
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v0, :cond_4

    .line 112
    const/4 v0, 0x0

    return v0

    .line 115
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 117
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-nez v0, :cond_5

    .line 121
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-eqz v0, :cond_6

    .line 123
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 128
    const/4 v0, 0x0

    return v0

    .line 130
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 85
    const/16 v2, 0x1f

    .line 86
    const/4 v3, 0x1

    .line 87
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 88
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;->bhJ:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 89
    return v3
.end method
