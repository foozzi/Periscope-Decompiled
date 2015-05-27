.class public abstract Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.super Lorg/spongycastle/math/ec/ECCurve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 457
    invoke-static {p1}, Lorg/spongycastle/math/field/FiniteFields;->ʹ(Ljava/math/BigInteger;)Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;-><init>(Lorg/spongycastle/math/field/FiniteField;)V

    .line 458
    return-void
.end method


# virtual methods
.method protected ˋ(ILjava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 5

    .line 462
    invoke-virtual {p0, p2}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->px()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 464
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->pz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 469
    if-nez v4, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid point compression"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_0
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->pB()Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 477
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->pw()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 480
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v4, v0}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;->ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
