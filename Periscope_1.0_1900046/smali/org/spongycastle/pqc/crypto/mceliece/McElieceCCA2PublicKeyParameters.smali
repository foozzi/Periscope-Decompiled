.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;
.super Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
.source ""


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private bdK:I

.field private bgc:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0, p5}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->aby:Ljava/lang/String;

    .line 38
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->aQb:I

    .line 39
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->bdK:I

    .line 40
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-direct {v0, p4}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->bgc:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 41
    return-void
.end method


# virtual methods
.method public kC()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->aQb:I

    return v0
.end method

.method public ri()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->bgc:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->getNumRows()I

    move-result v0

    return v0
.end method

.method public rj()I
    .locals 1

    .line 73
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->bdK:I

    return v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rq()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->bgc:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method
