.class public abstract Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.super Lorg/spongycastle/math/ec/ECCurve;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1

    .line 640
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;->ᵎ(IIII)Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve;-><init>(Lorg/spongycastle/math/field/FiniteField;)V

    .line 641
    return-void
.end method

.method private static ᵎ(IIII)Lorg/spongycastle/math/field/FiniteField;
    .locals 3

    .line 610
    if-nez p1, :cond_0

    .line 612
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k1 must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_0
    if-nez p2, :cond_2

    .line 617
    if-eqz p3, :cond_1

    .line 619
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be 0 if k2 == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p0, v0, v1

    invoke-static {v0}, Lorg/spongycastle/math/field/FiniteFields;->ـ([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0

    .line 625
    :cond_2
    if-gt p2, p1, :cond_3

    .line 627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k2 must be > k1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 630
    :cond_3
    if-gt p3, p2, :cond_4

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k3 must be > k2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 635
    :cond_4
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p3, v0, v1

    const/4 v1, 0x4

    aput p0, v0, v1

    invoke-static {v0}, Lorg/spongycastle/math/field/FiniteFields;->ـ([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object v0

    return-object v0
.end method
