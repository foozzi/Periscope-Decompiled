.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.source ""


# instance fields
.field public bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 27
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 94
    if-ne p0, p1, :cond_0

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    if-nez p1, :cond_1

    .line 100
    const/4 v0, 0x0

    return v0

    .line 102
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    if-nez v0, :cond_2

    .line 104
    const/4 v0, 0x0

    return v0

    .line 106
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    move-object v2, v0

    .line 107
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v0, :cond_3

    .line 109
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v0, :cond_4

    .line 111
    const/4 v0, 0x0

    return v0

    .line 114
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 116
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v0, :cond_5

    .line 120
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-eqz v0, :cond_6

    .line 122
    const/4 v0, 0x0

    return v0

    .line 125
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    const/4 v0, 0x0

    return v0

    .line 129
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
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 88
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPublicKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 89
    return v3
.end method
