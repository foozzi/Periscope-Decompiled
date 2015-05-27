.class public Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;
.super Lorg/spongycastle/asn1/ASN1Object;
.source ""


# instance fields
.field private aek:Lorg/spongycastle/asn1/ASN1Integer;

.field private aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field private beh:[[B

.field private bei:[B

.field private bej:[[B

.field private bek:[B

.field private bel:[B

.field private bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;


# direct methods
.method private constructor <init>(Lorg/spongycastle/asn1/ASN1Sequence;)V
    .locals 24

    .line 58
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 60
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v0, v0, Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 62
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1Integer;->ﯨ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Integer;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    goto :goto_0

    .line 66
    :cond_0
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->ﹴ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 70
    :goto_0
    move-object/from16 v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v7, v0

    .line 71
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    .line 72
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {v7}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    invoke-virtual {v7, v8}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v8

    .line 72
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 78
    :cond_1
    move-object/from16 v0, p1

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v8, v0

    .line 79
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bei:[B

    .line 82
    move-object/from16 v0, p1

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v9, v0

    .line 83
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    .line 84
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v10, v0, :cond_2

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    invoke-virtual {v9, v10}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v10

    .line 84
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 90
    :cond_2
    move-object/from16 v0, p1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v10, v0

    .line 91
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bek:[B

    .line 94
    move-object/from16 v0, p1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v11, v0

    .line 95
    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    .line 98
    move-object/from16 v0, p1

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object v12, v0

    .line 100
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v13, v0, [[[[B

    .line 101
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v14, v0, [[[[B

    .line 102
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v15, v0, [[[B

    .line 103
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [[B

    move-object/from16 v16, v1

    .line 105
    const/16 v17, 0x0

    :goto_3
    invoke-virtual {v12}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v17

    if-ge v1, v0, :cond_8

    .line 107
    move/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v18, v0

    .line 110
    move-object/from16 v0, v18

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v19, v0

    .line 111
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[[B

    aput-object v0, v13, v17

    .line 112
    const/16 v20, 0x0

    :goto_4
    invoke-virtual/range {v19 .. v19}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v20

    if-ge v1, v0, :cond_4

    .line 114
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v21, v0

    .line 115
    aget-object v0, v13, v17

    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [[B

    aput-object v1, v0, v20

    .line 116
    const/16 v22, 0x0

    :goto_5
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v22

    if-ge v1, v0, :cond_3

    .line 118
    aget-object v0, v13, v17

    aget-object v0, v0, v20

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v22

    .line 116
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 112
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 123
    :cond_4
    move-object/from16 v0, v18

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v20, v0

    .line 124
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[[B

    aput-object v0, v14, v17

    .line 125
    const/16 v21, 0x0

    :goto_6
    invoke-virtual/range {v20 .. v20}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v21

    if-ge v1, v0, :cond_6

    .line 127
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v22, v0

    .line 128
    aget-object v0, v14, v17

    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [[B

    aput-object v1, v0, v21

    .line 129
    const/16 v23, 0x0

    :goto_7
    invoke-virtual/range {v22 .. v22}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v23

    if-ge v1, v0, :cond_5

    .line 131
    aget-object v0, v14, v17

    aget-object v0, v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v23

    .line 129
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 125
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 136
    :cond_6
    move-object/from16 v0, v18

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1Sequence;

    move-object/from16 v21, v0

    .line 137
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v0, v0, [[B

    aput-object v0, v15, v17

    .line 138
    const/16 v22, 0x0

    :goto_8
    invoke-virtual/range {v21 .. v21}, Lorg/spongycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    move/from16 v1, v22

    if-ge v1, v0, :cond_7

    .line 140
    aget-object v0, v15, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v1, v2}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v1

    check-cast v1, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v1}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v1

    aput-object v1, v0, v22

    .line 138
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 144
    :cond_7
    move-object/from16 v0, v18

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1Sequence;->ϲ(I)Lorg/spongycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/spongycastle/asn1/ASN1OctetString;->eM()[B

    move-result-object v0

    aput-object v0, v16, v17

    .line 105
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 147
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    array-length v0, v0

    add-int/lit8 v17, v0, -0x1

    .line 148
    move/from16 v0, v17

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 149
    const/16 v18, 0x0

    :goto_9
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 151
    new-instance v0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    aget-byte v1, v1, v18

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    add-int/lit8 v3, v18, 0x1

    aget-byte v2, v2, v3

    aget-object v3, v13, v18

    invoke-static {v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˊ([[[B)[[[S

    move-result-object v3

    aget-object v4, v14, v18

    invoke-static {v4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˊ([[[B)[[[S

    move-result-object v4

    aget-object v5, v15, v18

    invoke-static {v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˎ([[B)[[S

    move-result-object v5

    aget-object v6, v16, v18

    invoke-static {v6}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ﻧ([B)[S

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;-><init>(BB[[[S[[[S[[S[S)V

    move-object/from16 v19, v0

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aput-object v19, v0, v18

    .line 149
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 156
    :cond_9
    return-void
.end method

.method public constructor <init>([[S[S[[S[S[I[Lorg/spongycastle/pqc/crypto/rainbow/Layer;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Lorg/spongycastle/asn1/ASN1Object;-><init>()V

    .line 161
    new-instance v0, Lorg/spongycastle/asn1/ASN1Integer;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/asn1/ASN1Integer;-><init>(J)V

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    .line 162
    invoke-static {p1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    .line 163
    invoke-static {p2}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˏ([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bei:[B

    .line 164
    invoke-static {p3}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    .line 165
    invoke-static {p4}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˏ([S)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bek:[B

    .line 166
    invoke-static {p5}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ՙ([I)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    .line 167
    iput-object p6, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    .line 168
    return-void
.end method

.method public static Ȉ(Ljava/lang/Object;)Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;
    .locals 2

    .line 172
    instance-of v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    if-eqz v0, :cond_0

    .line 174
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    return-object v0

    .line 176
    :cond_0
    if-eqz p0, :cond_1

    .line 178
    new-instance v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;

    invoke-static {p0}, Lorg/spongycastle/asn1/ASN1Sequence;->ﹾ(Ljava/lang/Object;)Lorg/spongycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;-><init>(Lorg/spongycastle/asn1/ASN1Sequence;)V

    return-object v0

    .line 181
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public ez()Lorg/spongycastle/asn1/ASN1Primitive;
    .locals 18

    .line 251
    new-instance v2, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aek:Lorg/spongycastle/asn1/ASN1Integer;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    goto :goto_0

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->aiV:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 264
    :goto_0
    new-instance v3, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 265
    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    array-length v0, v0

    if-ge v4, v0, :cond_1

    .line 267
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    aget-object v1, v1, v4

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 265
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 269
    :cond_1
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 272
    new-instance v4, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v4}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 273
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bei:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 274
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v4}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 277
    new-instance v5, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 278
    const/4 v6, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    array-length v0, v0

    if-ge v6, v0, :cond_2

    .line 280
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    aget-object v1, v1, v6

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v5, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 278
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 282
    :cond_2
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v5}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 285
    new-instance v6, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 286
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bek:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v6, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 287
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v6}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 290
    new-instance v7, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v7}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 291
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v7, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 292
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v7}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 295
    new-instance v8, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 297
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    array-length v0, v0

    if-ge v9, v0, :cond_8

    .line 299
    new-instance v10, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v10}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rL()[[[S

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[[S)[[[B

    move-result-object v11

    .line 303
    new-instance v12, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v12}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 304
    const/4 v13, 0x0

    :goto_4
    array-length v0, v11

    if-ge v13, v0, :cond_4

    .line 306
    new-instance v14, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 307
    const/4 v15, 0x0

    :goto_5
    aget-object v0, v11, v13

    array-length v0, v0

    if-ge v15, v0, :cond_3

    .line 309
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v1, v11, v13

    aget-object v1, v1, v15

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 307
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 311
    :cond_3
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v12, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 304
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 313
    :cond_4
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v12}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rM()[[[S

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[[S)[[[B

    move-result-object v13

    .line 317
    new-instance v14, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct {v14}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 318
    const/4 v15, 0x0

    :goto_6
    array-length v0, v13

    if-ge v15, v0, :cond_6

    .line 320
    new-instance v16, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 321
    const/16 v17, 0x0

    :goto_7
    aget-object v0, v13, v15

    array-length v0, v0

    move/from16 v1, v17

    if-ge v1, v0, :cond_5

    .line 323
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v1, v13, v15

    aget-object v1, v1, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 321
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 325
    :cond_5
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v14, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 318
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 327
    :cond_6
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v14}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rN()[[S

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S)[[B

    move-result-object v15

    .line 331
    new-instance v16, Lorg/spongycastle/asn1/ASN1EncodableVector;

    invoke-direct/range {v16 .. v16}, Lorg/spongycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 332
    const/16 v17, 0x0

    :goto_8
    array-length v0, v15

    move/from16 v1, v17

    if-ge v1, v0, :cond_7

    .line 334
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    aget-object v1, v15, v17

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    move-object/from16 v1, v16

    invoke-virtual {v1, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 332
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 336
    :cond_7
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 339
    new-instance v0, Lorg/spongycastle/asn1/DEROctetString;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rO()[S

    move-result-object v1

    invoke-static {v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˏ([S)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v10, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 342
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v10}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v8, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 297
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 345
    :cond_8
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v8}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1EncodableVector;->ˊ(Lorg/spongycastle/asn1/ASN1Encodable;)V

    .line 347
    new-instance v0, Lorg/spongycastle/asn1/DERSequence;

    invoke-direct {v0, v2}, Lorg/spongycastle/asn1/DERSequence;-><init>(Lorg/spongycastle/asn1/ASN1EncodableVector;)V

    return-object v0
.end method

.method public qA()[[S
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bej:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˎ([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public qB()[Lorg/spongycastle/pqc/crypto/rainbow/Layer;
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bem:[Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    return-object v0
.end method

.method public qC()[I
    .locals 1

    .line 246
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bel:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ﺑ([B)[I

    move-result-object v0

    return-object v0
.end method

.method public qx()[[S
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->beh:[[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˎ([[B)[[S

    move-result-object v0

    return-object v0
.end method

.method public qy()[S
    .locals 1

    .line 206
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bei:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ﻧ([B)[S

    move-result-object v0

    return-object v0
.end method

.method public qz()[S
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/spongycastle/pqc/asn1/RainbowPrivateKey;->bek:[B

    invoke-static {v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ﻧ([B)[S

    move-result-object v0

    return-object v0
.end method
