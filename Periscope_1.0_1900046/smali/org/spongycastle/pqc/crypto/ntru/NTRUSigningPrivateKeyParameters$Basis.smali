.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Basis"
.end annotation


# instance fields
.field bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

.field public bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

.field public bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

.field public bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method protected constructor <init>(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 209
    iput-object p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    .line 210
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 211
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    .line 212
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 325
    if-ne p0, p1, :cond_0

    .line 327
    const/4 v0, 0x1

    return v0

    .line 329
    :cond_0
    if-nez p1, :cond_1

    .line 331
    const/4 v0, 0x0

    return v0

    .line 333
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    if-nez v0, :cond_2

    .line 335
    const/4 v0, 0x0

    return v0

    .line 337
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;

    move-object v2, v0

    .line 338
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v0, :cond_3

    .line 340
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v0, :cond_4

    .line 342
    const/4 v0, 0x0

    return v0

    .line 345
    :cond_3
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 347
    const/4 v0, 0x0

    return v0

    .line 349
    :cond_4
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v0, :cond_5

    .line 351
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-eqz v0, :cond_6

    .line 353
    const/4 v0, 0x0

    return v0

    .line 356
    :cond_5
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 358
    const/4 v0, 0x0

    return v0

    .line 360
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v0, :cond_7

    .line 362
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-eqz v0, :cond_8

    .line 364
    const/4 v0, 0x0

    return v0

    .line 367
    :cond_7
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 369
    const/4 v0, 0x0

    return v0

    .line 371
    :cond_8
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v0, :cond_9

    .line 373
    iget-object v0, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-eqz v0, :cond_a

    .line 375
    const/4 v0, 0x0

    return v0

    .line 378
    :cond_9
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-object v1, v2, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 380
    const/4 v0, 0x0

    return v0

    .line 382
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 313
    const/16 v2, 0x1f

    .line 314
    const/4 v3, 0x1

    .line 315
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhH:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v3, v0, 0x1f

    .line 316
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhI:Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v3, v0, v1

    .line 317
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhd:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v3, v0, v1

    .line 318
    mul-int/lit8 v0, v3, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->hashCode()I

    move-result v1

    :goto_3
    add-int v3, v0, v1

    .line 319
    return v3
.end method
