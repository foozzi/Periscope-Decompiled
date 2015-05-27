.class public final Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2Primitives;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 3

    .line 38
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PublicKeyParameters;->rq()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v1

    .line 39
    invoke-virtual {v1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v2

    .line 40
    invoke-virtual {v2, p2}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    return-object v0
.end method

.method public static ˊ(Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;)[Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;
    .locals 14

    .line 55
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->ri()I

    move-result v2

    .line 56
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rm()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-result-object v4

    .line 58
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rl()Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v5

    .line 59
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->rn()Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;

    move-result-object v6

    .line 60
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceCCA2PrivateKeyParameters;->ro()[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;

    move-result-object v7

    .line 63
    invoke-virtual {v3}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->sE()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-result-object v8

    .line 66
    invoke-virtual {p1, v8}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v9, v0

    .line 69
    invoke-virtual {v6, v9}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Matrix;->ˎ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v10, v0

    .line 72
    invoke-static {v10, v4, v5, v7}, Lorg/spongycastle/pqc/math/linearalgebra/GoppaCode;->ˊ(Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;[Lorg/spongycastle/pqc/math/linearalgebra/PolynomialGF2mSmallM;)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v11

    .line 73
    invoke-virtual {v9, v11}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v12, v0

    .line 76
    invoke-virtual {v12, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v12, v0

    .line 77
    invoke-virtual {v11, v3}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ˋ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-object v11, v0

    .line 80
    invoke-virtual {v12, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;->ە(I)Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    move-result-object v13

    .line 83
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/spongycastle/pqc/math/linearalgebra/GF2Vector;

    const/4 v1, 0x0

    aput-object v13, v0, v1

    const/4 v1, 0x1

    aput-object v11, v0, v1

    return-object v0
.end method
