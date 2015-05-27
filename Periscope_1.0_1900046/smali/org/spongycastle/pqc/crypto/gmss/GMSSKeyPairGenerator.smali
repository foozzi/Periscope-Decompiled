.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private aGN:[I

.field private beA:I

.field private beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

.field private beC:[I

.field private beD:[I

.field private beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

.field private beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

.field private bev:[[B

.field private bew:[[B

.field private bex:[[B

.field private bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

.field private bez:I

.field private initialized:Z


# direct methods
.method private qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 29

    .line 124
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 126
    invoke-direct/range {p0 .. p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->qK()V

    .line 130
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    new-array v15, v0, [[[B

    .line 131
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [[[B

    move-object/from16 v16, v1

    .line 132
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    new-array v1, v0, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v17, v1

    .line 133
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-object/from16 v18, v1

    .line 135
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    new-array v1, v0, [Ljava/util/Vector;

    move-object/from16 v19, v1

    .line 136
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [Ljava/util/Vector;

    move-object/from16 v20, v1

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    new-array v1, v0, [[Ljava/util/Vector;

    move-object/from16 v21, v1

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [[Ljava/util/Vector;

    move-object/from16 v22, v1

    .line 141
    const/16 v23, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    move/from16 v1, v23

    if-ge v1, v0, :cond_3

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, v23

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    aput-object v0, v15, v23

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, v23

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, v23

    sub-int/2addr v0, v1

    new-array v0, v0, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aput-object v0, v17, v23

    .line 146
    if-lez v23, :cond_1

    .line 148
    add-int/lit8 v0, v23, -0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v1, v1, v23

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    aput-object v1, v16, v0

    .line 149
    add-int/lit8 v0, v23, -0x1

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v1, v1, v23

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v2, v2, v23

    sub-int/2addr v1, v2

    new-array v1, v1, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    aput-object v1, v18, v0

    .line 152
    :cond_1
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    aput-object v0, v19, v23

    .line 153
    if-lez v23, :cond_2

    .line 155
    add-int/lit8 v0, v23, -0x1

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v20, v0

    .line 141
    :cond_2
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_0

    .line 160
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [[B

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [[B

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [[B

    .line 166
    const/16 v26, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    move/from16 v1, v26

    if-ge v1, v0, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bev:[[B

    aget-object v0, v0, v26

    aget-object v1, v25, v26

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 172
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v1, p0

    iget v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bex:[[B

    .line 179
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v26, v0, -0x1

    :goto_2
    if-ltz v26, :cond_7

    .line 181
    new-instance v27, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, v26

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, v26

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    move-object/from16 v3, v27

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 186
    move-object/from16 v0, p0

    :try_start_0
    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    move/from16 v1, v26

    if-ne v1, v0, :cond_5

    .line 188
    aget-object v0, v19, v26

    aget-object v1, v25, v26

    move-object/from16 v2, p0

    const/4 v3, 0x0

    move/from16 v4, v26

    invoke-direct {v2, v3, v0, v1, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->ˊ([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v0

    move-object/from16 v27, v0

    goto :goto_3

    .line 194
    :cond_5
    add-int/lit8 v0, v26, 0x1

    aget-object v0, v23, v0

    aget-object v1, v19, v26

    aget-object v2, v25, v26

    move-object/from16 v3, p0

    move/from16 v4, v26

    invoke-direct {v3, v0, v1, v2, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->ˊ([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object/from16 v27, v0

    .line 201
    :goto_3
    goto :goto_4

    .line 198
    :catch_0
    move-exception v28

    .line 200
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :goto_4
    const/16 v28, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, v26

    move/from16 v1, v28

    if-ge v1, v0, :cond_6

    .line 206
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qY()[[B

    move-result-object v0

    aget-object v0, v0, v28

    aget-object v1, v15, v26

    aget-object v1, v1, v28

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 208
    :cond_6
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ra()[Ljava/util/Vector;

    move-result-object v0

    aput-object v0, v21, v26

    .line 209
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qZ()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    aput-object v0, v17, v26

    .line 210
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->rb()[B

    move-result-object v0

    aget-object v1, v23, v26

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_2

    .line 215
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v26, v0, -0x2

    :goto_6
    if-ltz v26, :cond_9

    .line 217
    aget-object v0, v20, v26

    add-int/lit8 v1, v26, 0x1

    aget-object v1, v25, v1

    add-int/lit8 v2, v26, 0x1

    move-object/from16 v3, p0

    invoke-direct {v3, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->ˊ(Ljava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    move-result-object v27

    .line 220
    const/16 v28, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    add-int/lit8 v1, v26, 0x1

    aget v0, v0, v1

    move/from16 v1, v28

    if-ge v1, v0, :cond_8

    .line 222
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qY()[[B

    move-result-object v0

    aget-object v0, v0, v28

    aget-object v1, v16, v26

    aget-object v1, v1, v28

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 220
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    .line 224
    :cond_8
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ra()[Ljava/util/Vector;

    move-result-object v0

    aput-object v0, v22, v26

    .line 225
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qZ()[Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    move-result-object v0

    aput-object v0, v18, v26

    .line 226
    invoke-virtual/range {v27 .. v27}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->rb()[B

    move-result-object v0

    aget-object v1, v24, v26

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    add-int/lit8 v0, v26, 0x1

    aget-object v0, v25, v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bew:[[B

    aget-object v1, v1, v26

    move-object/from16 v2, p0

    iget v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int/lit8 v26, v26, -0x1

    goto/16 :goto_6

    .line 235
    :cond_9
    new-instance v26, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;

    const/4 v0, 0x0

    aget-object v0, v23, v0

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v2, v26

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPublicKeyParameters;-><init>([BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 238
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;

    move-object/from16 v1, p0

    iget-object v1, v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bev:[[B

    move-object/from16 v2, p0

    iget-object v2, v2, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bew:[[B

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move-object/from16 v11, v24

    move-object/from16 v12, p0

    iget-object v12, v12, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bex:[[B

    move-object/from16 v13, p0

    iget-object v13, v13, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-object/from16 v14, p0

    iget-object v14, v14, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct/range {v0 .. v14}, Lorg/spongycastle/pqc/crypto/gmss/GMSSPrivateKeyParameters;-><init>([[B[[B[[[B[[[B[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[[Lorg/spongycastle/pqc/crypto/gmss/Treehash;[Ljava/util/Vector;[Ljava/util/Vector;[[Ljava/util/Vector;[[Ljava/util/Vector;[[B[[BLorg/spongycastle/pqc/crypto/gmss/GMSSParameters;Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    move-object/from16 v27, v0

    .line 242
    new-instance v0, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method private qK()V
    .locals 7

    .line 457
    const/4 v0, 0x4

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    .line 458
    const/4 v0, 0x4

    new-array v4, v0, [I

    fill-array-data v4, :array_1

    .line 459
    const/4 v0, 0x4

    new-array v5, v0, [I

    fill-array-data v5, :array_2

    .line 461
    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    new-instance v1, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    array-length v2, v3

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    invoke-direct {v6, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;)V

    .line 462
    invoke-virtual {p0, v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V

    .line 464
    return-void

    :array_0
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method private ˊ(Ljava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 9

    .line 326
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    new-array v3, v0, [B

    .line 331
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, p3

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v5, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 332
    invoke-virtual {v5, p1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ʼ(Ljava/util/Vector;)V

    .line 334
    const/4 v6, 0x3

    .line 335
    const/4 v7, 0x0

    .line 338
    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p3

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-ge v8, v0, :cond_1

    .line 341
    if-ne v8, v6, :cond_0

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p3

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    if-ge v7, v0, :cond_0

    .line 343
    invoke-virtual {v5, p2, v7}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ۥ([BI)V

    .line 344
    mul-int/lit8 v6, v6, 0x2

    .line 345
    add-int/lit8 v7, v7, 0x1

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p2}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v3

    .line 349
    new-instance v4, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    aget v1, v1, p3

    invoke-direct {v4, v3, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 350
    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->qW()[B

    move-result-object v0

    invoke-virtual {v5, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 353
    :cond_1
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 355
    return-object v5

    .line 357
    :cond_2
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "N\ufffdchster Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 358
    const/4 v0, 0x0

    return-object v0
.end method

.method private ˊ([BLjava/util/Vector;[BI)Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 10

    .line 256
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    new-array v3, v0, [B

    .line 258
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    new-array v4, v0, [B

    .line 259
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v4

    .line 265
    new-instance v6, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p4

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, p4

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-direct {v6, v0, v1, v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;-><init>(IILorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;)V

    .line 267
    invoke-virtual {v6, p2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ʼ(Ljava/util/Vector;)V

    .line 270
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    if-ne p4, v0, :cond_0

    .line 272
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    aget v1, v1, p4

    invoke-direct {v5, v4, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 273
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->qW()[B

    move-result-object v3

    goto :goto_0

    .line 281
    :cond_0
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    aget v1, v1, p4

    invoke-direct {v5, v4, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 282
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bex:[[B

    invoke-virtual {v5, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->וּ([B)[B

    move-result-object v1

    aput-object v1, v0, p4

    .line 283
    new-instance v7, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    aget v1, v1, p4

    invoke-direct {v7, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 284
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bex:[[B

    aget-object v0, v0, p4

    invoke-virtual {v7, p1, v0}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSVerify;->ᵢ([B[B)[B

    move-result-object v3

    .line 287
    :goto_0
    invoke-virtual {v6, v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 289
    const/4 v7, 0x3

    .line 290
    const/4 v8, 0x0

    .line 293
    const/4 v9, 0x1

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p4

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-ge v9, v0, :cond_2

    .line 296
    if-ne v9, v7, :cond_1

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    aget v0, v0, p4

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    aget v1, v1, p4

    sub-int/2addr v0, v1

    if-ge v8, v0, :cond_1

    .line 298
    invoke-virtual {v6, p3, v8}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->ۥ([BI)V

    .line 299
    mul-int/lit8 v7, v7, 0x2

    .line 300
    add-int/lit8 v8, v8, 0x1

    .line 303
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v0, p3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    move-result-object v4

    .line 304
    new-instance v5, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bey:Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;

    invoke-interface {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSDigestProvider;->qH()Lorg/spongycastle/crypto/Digest;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    aget v1, v1, p4

    invoke-direct {v5, v4, v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;-><init>([BLorg/spongycastle/crypto/Digest;I)V

    .line 305
    invoke-virtual {v5}, Lorg/spongycastle/pqc/crypto/gmss/util/WinternitzOTSignature;->qW()[B

    move-result-object v0

    invoke-virtual {v6, v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->update([B)V

    .line 293
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 308
    :cond_2
    invoke-virtual {v6}, Lorg/spongycastle/pqc/crypto/gmss/GMSSRootCalc;->qX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 310
    return-object v6

    .line 312
    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Baum noch nicht fertig konstruiert!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public iF()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 474
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->qJ()Lorg/spongycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/crypto/KeyGenerationParameters;)V
    .locals 7

    .line 423
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    .line 426
    new-instance v0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v2

    iget-object v3, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v3

    iget-object v4, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beE:Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyGenerationParameters;->qI()Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qQ()[I

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;-><init>(I[I[I[I)V

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    .line 429
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qN()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    .line 430
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qO()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beC:[I

    .line 431
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qP()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beD:[I

    .line 432
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beB:Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->qQ()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->aGN:[I

    .line 435
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bev:[[B

    .line 436
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bez:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bew:[[B

    .line 439
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    .line 442
    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beA:I

    if-ge v6, v0, :cond_0

    .line 444
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bev:[[B

    aget-object v0, v0, v6

    invoke-virtual {v5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 445
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->beu:Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->bev:[[B

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵞ([B)[B

    .line 442
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 448
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSKeyPairGenerator;->initialized:Z

    .line 449
    return-void
.end method
