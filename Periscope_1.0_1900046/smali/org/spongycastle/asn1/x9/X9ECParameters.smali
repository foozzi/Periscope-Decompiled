.class public Lorg/spongycastle/asn1/x9/X9ECParameters;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private aDA:Lorg/spongycastle/math/ec/ECPoint;

.field private aDB:Ljava/math/BigInteger;

.field private aDC:Ljava/math/BigInteger;

.field private aDw:Lorg/spongycastle/math/ec/ECCurve;

.field private aDx:[B

.field private aDz:Lorg/spongycastle/asn1/x9/X9FieldID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad version in X9ECParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_1
    new-instance v3, Lorg/spongycastle/asn1/x9/X9Curve;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/x9/X9FieldID;->ﺒ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9FieldID;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/asn1/x9/X9FieldID;Lorg/spongycastle/asn1/ASN1Sequence;)V

    .line 47
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9Curve;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 48
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v4

    .line 50
    instance-of v0, v4, Lorg/spongycastle/asn1/x9/X9ECPoint;

    if-eqz v0, :cond_2

    .line 52
    move-object v0, v4

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->iy()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDA:Lorg/spongycastle/math/ec/ECPoint;

    goto :goto_0

    .line 56
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    move-object v2, v4

    check-cast v2, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECPoint;->iy()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDA:Lorg/spongycastle/math/ec/ECPoint;

    .line 59
    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDB:Ljava/math/BigInteger;

    .line 60
    invoke-virtual {v3}, Lorg/spongycastle/asn1/x9/X9Curve;->getSeed()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDx:[B

    .line 62
    invoke-virtual {p1}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 64
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    .line 66
    :cond_3
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 7

    .line 106
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 108
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDA:Lorg/spongycastle/math/ec/ECPoint;

    .line 109
    iput-object p3, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDB:Ljava/math/BigInteger;

    .line 110
    iput-object p4, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    .line 111
    iput-object p5, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDx:[B

    .line 113
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v1}, Lorg/spongycastle/math/field/FiniteField;->qq()Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDz:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_1

    .line 117
    :cond_0
    invoke-static {p1}, Lorg/spongycastle/math/ec/ECAlgorithms;->ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECCurve;->pj()Lorg/spongycastle/math/field/FiniteField;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-object v5, v0

    .line 120
    invoke-interface {v5}, Lorg/spongycastle/math/field/PolynomialExtensionField;->qu()Lorg/spongycastle/math/field/Polynomial;

    move-result-object v0

    invoke-interface {v0}, Lorg/spongycastle/math/field/Polynomial;->qt()[I

    move-result-object v6

    .line 121
    array-length v0, v6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 123
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldID;

    const/4 v1, 0x2

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(II)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDz:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 125
    :cond_1
    array-length v0, v6

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 127
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldID;

    const/4 v1, 0x4

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v3, 0x2

    aget v3, v6, v3

    const/4 v4, 0x3

    aget v4, v6, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/asn1/x9/X9FieldID;-><init>(IIII)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDz:Lorg/spongycastle/asn1/x9/X9FieldID;

    goto :goto_0

    .line 131
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only trinomial and pentomial curves are supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :goto_0
    goto :goto_1

    .line 136
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'curve\' is of an unsupported type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :goto_1
    return-void
.end method

.method public static ﭘ(Ljava/lang/Object;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 2

    .line 70
    instance-of v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    if-eqz v0, :cond_0

    .line 72
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    return-object v0

    .line 75
    :cond_0
    if-eqz p0, :cond_1

    .line 77
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECParameters;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECParameters;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 80
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 4

    .line 185
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 187
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 188
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDz:Lorg/spongycastle/asn1/x9/X9FieldID;

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 189
    new-instance v0, Lorg/spongycastle/asn1/x9/X9Curve;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    iget-object v2, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDx:[B

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/x9/X9Curve;-><init>(Lorg/spongycastle/math/ec/ECCurve;[B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v0, Lorg/spongycastle/asn1/x9/X9ECPoint;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDA:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9ECPoint;-><init>(Lorg/spongycastle/math/ec/ECPoint;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 191
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDB:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 193
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 198
    :cond_0
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDx:[B

    return-object v0
.end method

.method public gy()Ljava/math/BigInteger;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public iv()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public iw()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDA:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public ix()Ljava/math/BigInteger;
    .locals 1

    .line 157
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lorg/spongycastle/asn1/x9/X9ECParameters;->ONE:Ljava/math/BigInteger;

    return-object v0

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9ECParameters;->aDC:Ljava/math/BigInteger;

    return-object v0
.end method
