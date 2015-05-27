.class public Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;
.super Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;
.source ""


# instance fields
.field private aQb:I

.field private aby:Ljava/lang/String;

.field private avM:I

.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

.field private bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

.field private bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

.field private bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/Permutation;Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0, p11}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceKeyParameters;-><init>(ZLorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;)V

    .line 67
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->aby:Ljava/lang/String;

    .line 68
    iput p3, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->avM:I

    .line 69
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->aQb:I

    .line 70
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 71
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 72
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 73
    iput-object p7, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 74
    iput-object p8, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    .line 75
    iput-object p9, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    .line 76
    iput-object p10, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    .line 77
    return-void
.end method


# virtual methods
.method public kC()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->aQb:I

    return v0
.end method

.method public ri()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->avM:I

    return v0
.end method

.method public rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bfY:Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 180
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bga:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;
    .locals 1

    .line 189
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgb:[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    return-object v0
.end method

.method public rp()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->aby:Ljava/lang/String;

    return-object v0
.end method

.method public rt()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgk:Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    return-object v0
.end method

.method public ru()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgl:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method

.method public rv()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McEliecePrivateKeyParameters;->bgm:Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    return-object v0
.end method
