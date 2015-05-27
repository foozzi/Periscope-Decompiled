.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
.super Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
    }
.end annotation


# instance fields
.field private bhF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;"
        }
    .end annotation
.end field

.field private bhG:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/util/List<Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;>;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;)V"
        }
    .end annotation

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    .line 63
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhG:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPublicKeyParameters;

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 140
    if-ne p0, p1, :cond_0

    .line 142
    const/4 v0, 0x1

    return v0

    .line 144
    :cond_0
    if-nez p1, :cond_1

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 150
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;

    move-object v2, v0

    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    if-nez v0, :cond_3

    .line 155
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 157
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 162
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_4
    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_9

    .line 166
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-object v4, v0

    .line 167
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-object v5, v0

    .line 168
    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v1, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_5
    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v1, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 174
    const/4 v0, 0x0

    return v0

    .line 176
    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_7
    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-object v1, v5, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 182
    const/4 v0, 0x0

    return v0

    .line 164
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 127
    const/16 v2, 0x1f

    .line 128
    const/4 v3, 0x1

    .line 129
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 130
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;->bhF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-object v5, v0

    .line 132
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->hashCode()I

    move-result v0

    add-int/2addr v3, v0

    .line 133
    goto :goto_1

    .line 134
    :cond_1
    return v3
.end method
