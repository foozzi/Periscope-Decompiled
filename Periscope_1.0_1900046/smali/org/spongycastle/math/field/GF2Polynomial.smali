.class Lorg/spongycastle/math/field/GF2Polynomial;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/field/Polynomial;


# instance fields
.field protected final bdz:[I


# direct methods
.method constructor <init>([I)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-static {p1}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 26
    if-ne p0, p1, :cond_0

    .line 28
    const/4 v0, 0x1

    return v0

    .line 30
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/field/GF2Polynomial;

    if-nez v0, :cond_1

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/field/GF2Polynomial;

    move-object v2, v0

    .line 35
    iget-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    iget-object v1, v2, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    invoke-static {v0, v1}, Lorg/spongycastle/util/Arrays;->ՙ([I[I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public qs()I
    .locals 3

    .line 16
    iget-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    iget-object v1, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public qt()[I
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/spongycastle/math/field/GF2Polynomial;->bdz:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    return-object v0
.end method
