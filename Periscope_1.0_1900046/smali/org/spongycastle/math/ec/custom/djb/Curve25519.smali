.class public Lorg/spongycastle/math/ec/custom/djb/Curve25519;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.source ""


# static fields
.field public static final aFA:Ljava/math/BigInteger;


# instance fields
.field protected bde:Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Field;->aIX:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat256;->ﾞ([I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->aFA:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->aFA:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 23
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bde:Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA984914A144"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "7B425ED097B425ED097B425ED097B425ED097B425ED097B4260B5E9C7710C864"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1000000000000000000000000000000014DEF9DEA2F79CD65812631A5CF5D3ED"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bcm:Ljava/math/BigInteger;

    .line 30
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bcn:Ljava/math/BigInteger;

    .line 32
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bco:I

    .line 33
    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 1

    .line 58
    sget-object v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method protected pg()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 37
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/djb/Curve25519;-><init>()V

    return-object v0
.end method

.method public pi()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/djb/Curve25519;->bde:Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 68
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 73
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/djb/Curve25519Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 63
    new-instance v0, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/custom/djb/Curve25519FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ﭨ(I)Z
    .locals 1

    .line 42
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 45
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 47
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
    .end sparse-switch
.end method
