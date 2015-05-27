.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;
.super Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FGBasis"
.end annotation


# instance fields
.field final synthetic bhC:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;

.field public bhD:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

.field public bhE:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;


# direct methods
.method constructor <init>(Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhC:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator;

    .line 339
    invoke-direct {p0, p2, p3, p4, p7}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningPrivateKeyParameters$Basis;-><init>(Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/Polynomial;Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;)V

    .line 340
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhD:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 341
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhE:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    .line 342
    return-void
.end method


# virtual methods
.method rG()Z
    .locals 5

    .line 352
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget-wide v2, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bhw:D

    .line 353
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhB:Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;

    iget v4, v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyGenerationParameters;->bgC:I

    .line 354
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhD:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ノ(I)J

    move-result-wide v0

    long-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningKeyPairGenerator$FGBasis;->bhE:Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v0, v4}, Lorg/spongycastle/pqc/math/ntru/polynomial/IntegerPolynomial;->ノ(I)J

    move-result-wide v0

    long-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
