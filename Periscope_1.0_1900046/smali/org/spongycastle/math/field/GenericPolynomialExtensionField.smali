.class Lorg/spongycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final bdA:Lorg/spongycastle/math/field/FiniteField;

.field protected final bdB:Lorg/spongycastle/math/field/Polynomial;


# direct methods
.method constructor <init>(Lorg/spongycastle/math/field/FiniteField;Lorg/spongycastle/math/field/Polynomial;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    .line 15
    iput-object p2, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 45
    if-ne p0, p1, :cond_0

    .line 47
    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    if-nez v0, :cond_1

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;

    move-object v2, v0

    .line 54
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    iget-object v1, v2, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    iget-object v1, v2, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 59
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lorg/spongycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public qq()Ljava/math/BigInteger;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->qq()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public qr()I
    .locals 2

    .line 25
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdA:Lorg/spongycastle/math/field/FiniteField;

    invoke-interface {v0}, Lorg/spongycastle/math/field/FiniteField;->qr()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    invoke-interface {v1}, Lorg/spongycastle/math/field/Polynomial;->qs()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public qu()Lorg/spongycastle/math/field/Polynomial;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/math/field/GenericPolynomialExtensionField;->bdB:Lorg/spongycastle/math/field/Polynomial;

    return-object v0
.end method
