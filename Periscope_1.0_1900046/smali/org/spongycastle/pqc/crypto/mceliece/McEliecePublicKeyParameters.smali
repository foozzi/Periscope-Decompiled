.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
.source ""


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private bdK:I

.field private bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 1

    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->aby:Ljava/lang/String;

    .line 35
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->aQb:I

    .line 36
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->bdK:I

    .line 37
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 38
    return-void
.end method


# virtual methods
.method public kC()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->aQb:I

    return v0
.end method

.method public ri()I
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public rj()I
    .locals 1

    .line 71
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->bdK:I

    return v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rw()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePublicKeyParameters;->bgn:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
