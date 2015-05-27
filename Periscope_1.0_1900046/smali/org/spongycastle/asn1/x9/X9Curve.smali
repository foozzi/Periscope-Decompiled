.class public Lorg/spongycastle/asn1/x9/X9Curve;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""

# interfaces
.implements Lorg/spongycastle/asn1/x9/X9ObjectIdentifiers;


# instance fields
.field private aDw:Lorg/spongycastle/math/ec/ECCurve;

.field private aDx:[B

.field private aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/spongycastle/asn1/x9/X9FieldID;Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 15

    .line 49
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->iA()Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 53
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9Curve;->aDK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v7

    .line 56
    new-instance v8, Lorg/spongycastle/asn1/x9/X9FieldElement;

    move-object/from16 v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v8, v7, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 57
    new-instance v9, Lorg/spongycastle/asn1/x9/X9FieldElement;

    move-object/from16 v0, p2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct {v9, v7, v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/asn1/ASN1OctetString;)V

    .line 58
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    invoke-virtual {v8}, Lorg/spongycastle/asn1/x9/X9FieldElement;->iz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v9}, Lorg/spongycastle/asn1/x9/X9FieldElement;->iz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v7, v1, v2}, Lorg/spongycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 59
    goto/16 :goto_1

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9Curve;->aDL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/asn1/x9/X9FieldID;->it()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 64
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v8

    .line 66
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-object v9, v0

    .line 69
    const/4 v10, 0x0

    .line 70
    const/4 v11, 0x0

    .line 71
    const/4 v12, 0x0

    .line 73
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->aDN:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->aDO:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v13

    .line 82
    const/4 v0, 0x0

    invoke-virtual {v13, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    .line 83
    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 84
    const/4 v0, 0x2

    invoke-virtual {v13, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1Integer;->eA()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v12

    .line 85
    goto :goto_0

    .line 88
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of EC basis is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :goto_0
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V

    move-object v13, v0

    .line 91
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(IIIILorg/spongycastle/asn1/ASN1OctetString;)V

    move-object v14, v0

    .line 92
    new-instance v0, Lorg/spongycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v13}, Lorg/spongycastle/asn1/x9/X9FieldElement;->iz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v14}, Lorg/spongycastle/asn1/x9/X9FieldElement;->iz()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    move v1, v8

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 93
    goto :goto_1

    .line 96
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 101
    move-object/from16 v0, p2

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/DERBitString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDx:[B

    .line 103
    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;[B)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 41
    iput-object p1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 42
    iput-object p2, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDx:[B

    .line 43
    invoke-direct {p0}, Lorg/spongycastle/asn1/x9/X9Curve;->iu()V

    .line 44
    return-void
.end method

.method private iu()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ʻ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->aDK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/spongycastle/math/ec/ECAlgorithms;->ᐝ(Lorg/spongycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lorg/spongycastle/asn1/x9/X9Curve;->aDL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    iput-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This type of ECCurve is not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :goto_0
    return-void
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 3

    .line 143
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 145
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9Curve;->aDK:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 148
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDy:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/spongycastle/asn1/x9/X9Curve;->aDL:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pk()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 153
    new-instance v0, Lorg/spongycastle/asn1/x9/X9FieldElement;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->pl()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/x9/X9FieldElement;-><init>(Lorg/spongycastle/math/ec/ECFieldElement;)V

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9FieldElement;->ez()Lorg/spongycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 156
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDx:[B

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lorg/spongycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDx:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 161
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDx:[B

    return-object v0
.end method

.method public iv()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/spongycastle/asn1/x9/X9Curve;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method
