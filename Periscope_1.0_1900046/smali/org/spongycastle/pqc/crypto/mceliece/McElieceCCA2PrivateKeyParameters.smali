.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;
.source ""


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private avM:I

.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private bfZ:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V
    .locals 1

    .line 59
    const/4 v0, 0x1

    invoke-direct {p0, v0, p9}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2KeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Parameters;)V

    .line 60
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->aby:Ljava/lang/String;

    .line 61
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->aQb:I

    .line 62
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->avM:I

    .line 63
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 64
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 65
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfZ:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 66
    iput-object p7, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 67
    iput-object p8, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 68
    return-void
.end method


# virtual methods
.method public kC()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->aQb:I

    return v0
.end method

.method public ri()I
    .locals 1

    .line 115
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->avM:I

    return v0
.end method

.method public rj()I
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;->qs()I

    move-result v0

    return v0
.end method

.method public rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rm()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bfZ:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->aby:Ljava/lang/String;

    return-object v0
.end method
