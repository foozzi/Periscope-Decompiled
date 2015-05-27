.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.source ""


# instance fields
.field public bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

.field public bhc:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 1

    .line 37
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V

    .line 39
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 40
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 41
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhc:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 158
    if-ne p0, p1, :cond_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    if-nez p1, :cond_1

    .line 164
    const/4 v0, 0x0

    return v0

    .line 166
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    if-nez v0, :cond_2

    .line 168
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    move-object v2, v0

    .line 171
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v0, :cond_3

    .line 173
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-eqz v0, :cond_4

    .line 175
    const/4 v0, 0x0

    return v0

    .line 178
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 180
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v0, :cond_5

    .line 184
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v0, :cond_6

    .line 186
    const/4 v0, 0x0

    return v0

    .line 189
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 191
    const/4 v0, 0x0

    return v0

    .line 193
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 195
    const/4 v0, 0x0

    return v0

    .line 197
    :cond_7
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 148
    const/16 v2, 0x1f

    .line 149
    const/4 v3, 0x1

    .line 150
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bha:Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionParameters;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 151
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhb:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 152
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v3, v0, v1

    .line 153
    return v3
.end method
