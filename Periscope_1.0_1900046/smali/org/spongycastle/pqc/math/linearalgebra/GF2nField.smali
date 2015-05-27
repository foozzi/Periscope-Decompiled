.class public abstract Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected biY:I

.field protected biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 73
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    if-nez v0, :cond_1

    .line 75
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 78
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;

    move-object v2, v0

    .line 80
    iget v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biY:I

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biY:I

    if-eq v0, v1, :cond_2

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 86
    const/4 v0, 0x0

    return v0

    .line 88
    :cond_3
    instance-of v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-eqz v0, :cond_4

    instance-of v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nPolynomialField;

    if-nez v0, :cond_4

    .line 91
    const/4 v0, 0x0

    return v0

    .line 93
    :cond_4
    instance-of v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-eqz v0, :cond_5

    instance-of v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2nONBField;

    if-nez v0, :cond_5

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 106
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biY:I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final qs()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biY:I

    return v0
.end method

.method public final st()Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    if-nez v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->su()V

    .line 61
    :cond_0
    new-instance v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2nField;->biZ:Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;-><init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2Polynomial;)V

    return-object v0
.end method

.method protected abstract su()V
.end method
