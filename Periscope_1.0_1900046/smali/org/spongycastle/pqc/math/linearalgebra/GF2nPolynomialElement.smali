.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;
.super Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;
.source ""


# static fields
.field private static final biR:[I


# instance fields
.field private bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    const/16 v0, 0x21

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biR:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0x1000
        0x2000
        0x4000
        0x8000
        0x10000
        0x20000
        0x40000
        0x80000
        0x100000
        0x200000
        0x400000
        0x800000
        0x1000000
        0x2000000
        0x4000000
        0x8000000
        0x10000000
        0x20000000
        0x40000000    # 2.0f
        -0x80000000
        0x0
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V
    .locals 2

    .line 102
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nElement;-><init>()V

    .line 103
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    .line 104
    iget v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biY:I

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biY:I

    .line 105
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    .line 106
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 120
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    invoke-direct {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 213
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    if-nez v0, :cond_1

    .line 215
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;

    move-object v2, v0

    .line 219
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    if-eq v0, v1, :cond_2

    .line 221
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->st()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v0

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->st()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 224
    const/4 v0, 0x0

    return v0

    .line 228
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->biX:Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 191
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->isZero()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 983
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialElement;->bjh:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
